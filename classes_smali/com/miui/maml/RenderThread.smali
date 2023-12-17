.class public Lcom/miui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RenderThread$CommandThreadHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lcom/miui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "MAML RenderThread"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/RendererController;)V
    .registers 2

    const-string p1, "MAML RenderThread"

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/RenderThread;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/RenderThread;->setPausedImpl(Z)V

    .line 4
    return-void
.end method

.method private doFinish()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v1, :cond_24

    .line 23
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 31
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->finish()V

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    .line 41
    throw v1
.end method

.method private doInit()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v1, :cond_27

    .line 23
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 31
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->init()V

    .line 34
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_14

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    .line 44
    throw v1
.end method

.method private doPause()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v1, :cond_21

    .line 23
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_14

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    .line 38
    throw v1
.end method

.method private doResume()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v1, :cond_21

    .line 23
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_14

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    .line 38
    throw v1
.end method

.method public static globalThread()Lcom/miui/maml/RenderThread;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/miui/maml/RenderThread;->globalThread(Z)Lcom/miui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lcom/miui/maml/RenderThread;
    .registers 3

    .line 2
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    if-nez v1, :cond_e

    .line 4
    new-instance v1, Lcom/miui/maml/RenderThread;

    invoke-direct {v1}, Lcom/miui/maml/RenderThread;-><init>()V

    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    :cond_e
    if-eqz p0, :cond_1d

    .line 5
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->isStarted()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_21

    if-nez p0, :cond_1d

    .line 6
    :try_start_18
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_18 .. :try_end_1d} :catch_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_21

    .line 7
    :catch_1d
    :cond_1d
    :try_start_1d
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw p0
.end method

.method public static globalThreadStop()V
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    .line 6
    if-eqz v1, :cond_d

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/RenderThread;->setStop()V

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    .line 14
    :cond_d
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method private initCmdThread()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "cmd"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    new-instance v0, Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;-><init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 26
    return-void
.end method

.method private setPausedImpl(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    .line 8
    :cond_7
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 10
    if-ne v0, p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 18
    if-nez p1, :cond_18

    .line 20
    iget-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 25
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .line 32
    throw p1
.end method

.method private final waitSleep(J)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 3
    if-nez v0, :cond_21

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    cmp-long v0, p1, v0

    .line 9
    if-gtz v0, :cond_b

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_e
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    .line 17
    if-nez v1, :cond_1c

    .line 19
    :try_start_12
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_1e

    .line 24
    goto :goto_1c

    .line 25
    :catch_18
    move-exception p1

    .line 26
    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    .line 33
    throw p1

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method private waiteForResume()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    goto :goto_a

    .line 7
    :catch_6
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_a
    return-void
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_14

    .line 12
    const-string p1, "RenderThread"

    .line 14
    const-string v1, "addRendererController: RendererController already exists"

    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1f

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw p1
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    .line 3
    return v0
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw p1
.end method

.method public run()V
    .registers 13

    .line 1
    const-string v0, "RenderThread"

    .line 3
    const-string v1, "RenderThread started"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_7
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doInit()V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    .line 14
    :goto_d
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 16
    if-nez v1, :cond_bc

    .line 18
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 20
    if-eqz v1, :cond_38

    .line 22
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 24
    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_18} :catch_a1

    .line 25
    :try_start_18
    iget-boolean v2, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 27
    if-eqz v2, :cond_33

    .line 29
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doPause()V

    .line 32
    const-string v2, "RenderThread"

    .line 34
    const-string v3, "RenderThread paused, waiting for signal"

    .line 36
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->waiteForResume()V

    .line 42
    const-string v2, "RenderThread"

    .line 44
    const-string v3, "RenderThread resumed"

    .line 46
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doResume()V

    .line 52
    :cond_33
    monitor-exit v1

    .line 53
    goto :goto_38

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_35

    .line 56
    :try_start_37
    throw v0

    .line 57
    :cond_38
    :goto_38
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 59
    if-eqz v1, :cond_3e

    .line 61
    goto/16 :goto_bc

    .line 63
    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    move-result-wide v1

    .line 67
    const-wide v3, 0x7fffffffffffffffL

    .line 72
    iget-object v5, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 74
    monitor-enter v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_4a} :catch_a1

    .line 75
    :try_start_4a
    iget-object v6, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v6

    .line 81
    const/4 v7, 0x0

    .line 82
    move v9, v0

    .line 83
    move v8, v7

    .line 84
    :goto_53
    if-ge v8, v6, :cond_85

    .line 86
    iget-boolean v10, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 88
    if-eqz v10, :cond_5a

    .line 90
    goto :goto_85

    .line 91
    :cond_5a
    iget-object v10, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Lcom/miui/maml/RendererController;

    .line 99
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_6f

    .line 105
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 108
    move-result v11

    .line 109
    if-nez v11, :cond_6f

    .line 111
    goto :goto_82

    .line 112
    :cond_6f
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasInited()Z

    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_78

    .line 118
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->init()V

    .line 121
    :cond_78
    invoke-virtual {v10, v1, v2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 124
    move-result-wide v9

    .line 125
    cmp-long v11, v9, v3

    .line 127
    if-gez v11, :cond_81

    .line 129
    move-wide v3, v9

    .line 130
    :cond_81
    move v9, v7

    .line 131
    :goto_82
    add-int/lit8 v8, v8, 0x1

    .line 133
    goto :goto_53

    .line 134
    :cond_85
    :goto_85
    if-eqz v6, :cond_92

    .line 136
    if-eqz v9, :cond_8a

    .line 138
    goto :goto_92

    .line 139
    :cond_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_4a .. :try_end_8b} :catchall_9e

    .line 140
    :try_start_8b
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/RenderThread;->waitSleep(J)V

    .line 143
    iput-boolean v7, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_90} :catch_a1

    .line 145
    goto/16 :goto_d

    .line 147
    :cond_92
    :goto_92
    :try_start_92
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 149
    const-string v1, "RenderThread"

    .line 151
    const-string v2, "All controllers paused."

    .line 153
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v5

    .line 157
    goto/16 :goto_d

    .line 159
    :catchall_9e
    move-exception v0

    .line 160
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_9e

    .line 161
    :try_start_a0
    throw v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a0 .. :try_end_a1} :catch_a1

    .line 162
    :catch_a1
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    const-string v1, "RenderThread"

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_bc

    .line 176
    :catch_af
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    const-string v1, "RenderThread"

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_bc
    :goto_bc
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doFinish()V

    .line 192
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 194
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 197
    const-string v0, "RenderThread"

    .line 199
    const-string v1, "RenderThread stopped"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    .line 6
    return-void
.end method

.method public setStop()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    .line 8
    return-void
.end method

.method public signal()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    iput-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 12
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    .line 21
    throw v1
.end method
