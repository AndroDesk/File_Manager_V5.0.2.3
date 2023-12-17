.class public Lcom/miui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;,
        Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderVsyncUpdater"


# instance fields
.field private mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mRendererControllerList:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderVsyncUpdater$1;-><init>(Lcom/miui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_2f

    :cond_2b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_2f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/RenderVsyncUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/RenderVsyncUpdater;)J
    .registers 3

    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/miui/maml/RenderVsyncUpdater;J)J
    .registers 3

    iput-wide p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    return p0
.end method

.method private doRunUpdater()V
    .registers 5

    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    goto :goto_1f

    :cond_e
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->y(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static getInstance()Lcom/miui/maml/RenderVsyncUpdater;
    .registers 1

    sget-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    return-object v0
.end method

.method private scheduleFrame()V
    .registers 15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget v3, v3, Landroidx/collection/b;->c:I

    add-int/lit8 v4, v3, -0x1

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x1

    move-wide v9, v5

    move v8, v7

    :goto_15
    const/4 v11, 0x0

    if-ltz v4, :cond_53

    iget-object v12, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget-object v12, v12, Landroidx/collection/b;->b:[Ljava/lang/Object;

    aget-object v12, v12, v4

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/maml/RendererController;

    if-nez v12, :cond_2e

    iget-object v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    invoke-virtual {v11, v4}, Landroidx/collection/b;->e(I)V

    goto :goto_50

    :cond_2e
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v13

    if-eqz v13, :cond_3b

    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v13

    if-nez v13, :cond_3b

    goto :goto_50

    :cond_3b
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasInited()Z

    move-result v8

    if-nez v8, :cond_44

    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->init()V

    :cond_44
    invoke-virtual {v12, v0, v1}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-gez v8, :cond_4f

    move v8, v11

    move-wide v9, v12

    goto :goto_50

    :cond_4f
    move v8, v11

    :goto_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    :cond_53
    if-eqz v3, :cond_5b

    if-eqz v8, :cond_58

    goto :goto_5b

    :cond_58
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    goto :goto_64

    :cond_5b
    :goto_5b
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    const-string v0, "RenderVsyncUpdater"

    const-string v1, "All controllers paused."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_91

    cmp-long v0, v9, v5

    if-nez v0, :cond_6c

    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    goto :goto_6e

    :cond_6c
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    :goto_6e
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    if-nez v0, :cond_90

    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    if-nez v0, :cond_90

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-lez v2, :cond_90

    iget v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    int-to-long v2, v2

    div-long/2addr v9, v2

    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    cmp-long v0, v9, v0

    if-lez v0, :cond_8b

    const-wide/16 v0, 0x1

    sub-long/2addr v9, v0

    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    :cond_8b
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_90
    return-void

    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget v1, v1, Landroidx/collection/b;->c:I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1f

    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget-object v3, v3, Landroidx/collection/b;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    if-ne v3, p1, :cond_1c

    monitor-exit v0

    return-void

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public forceUpdate()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    return-void
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget v1, v1, Landroidx/collection/b;->c:I

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_22

    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    iget-object v2, v2, Landroidx/collection/b;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    if-eqz v2, :cond_1d

    if-ne v2, p1, :cond_7

    :cond_1d
    iget-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    invoke-virtual {p1, v1}, Landroidx/collection/b;->e(I)V

    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public setSyncInterval(I)V
    .registers 2

    iput p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method
