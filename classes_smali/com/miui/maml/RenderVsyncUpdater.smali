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
.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 7
    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderVsyncUpdater$1;-><init>(Lcom/miui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_2f

    .line 10
    :cond_2b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 11
    :goto_2f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/RenderVsyncUpdater;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/RenderVsyncUpdater;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$202(Lcom/miui/maml/RenderVsyncUpdater;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 3
    return p0
.end method

.method private doRunUpdater()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-lez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 14
    goto :goto_1f

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 17
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 19
    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->y(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1f

    .line 25
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 27
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static getInstance()Lcom/miui/maml/RenderVsyncUpdater;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    .line 3
    return-object v0
.end method

.method private scheduleFrame()V
    .registers 15

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_7
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 10
    iget v3, v3, Landroidx/collection/b;->c:I

    .line 12
    add-int/lit8 v4, v3, -0x1

    .line 14
    const-wide v5, 0x7fffffffffffffffL

    .line 19
    const/4 v7, 0x1

    .line 20
    move-wide v9, v5

    .line 21
    move v8, v7

    .line 22
    :goto_15
    const/4 v11, 0x0

    .line 23
    if-ltz v4, :cond_53

    .line 25
    iget-object v12, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 27
    iget-object v12, v12, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 29
    aget-object v12, v12, v4

    .line 31
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v12

    .line 37
    check-cast v12, Lcom/miui/maml/RendererController;

    .line 39
    if-nez v12, :cond_2e

    .line 41
    iget-object v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 43
    invoke-virtual {v11, v4}, Landroidx/collection/b;->e(I)V

    .line 46
    goto :goto_50

    .line 47
    :cond_2e
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 50
    move-result v13

    .line 51
    if-eqz v13, :cond_3b

    .line 53
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 56
    move-result v13

    .line 57
    if-nez v13, :cond_3b

    .line 59
    goto :goto_50

    .line 60
    :cond_3b
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasInited()Z

    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_44

    .line 66
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->init()V

    .line 69
    :cond_44
    invoke-virtual {v12, v0, v1}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 72
    move-result-wide v12

    .line 73
    cmp-long v8, v12, v9

    .line 75
    if-gez v8, :cond_4f

    .line 77
    move v8, v11

    .line 78
    move-wide v9, v12

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v8, v11

    .line 81
    :goto_50
    add-int/lit8 v4, v4, -0x1

    .line 83
    goto :goto_15

    .line 84
    :cond_53
    if-eqz v3, :cond_5b

    .line 86
    if-eqz v8, :cond_58

    .line 88
    goto :goto_5b

    .line 89
    :cond_58
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    :goto_5b
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 94
    const-string v0, "RenderVsyncUpdater"

    .line 96
    const-string v1, "All controllers paused."

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_91

    .line 102
    cmp-long v0, v9, v5

    .line 104
    if-nez v0, :cond_6c

    .line 106
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 108
    goto :goto_6e

    .line 109
    :cond_6c
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 111
    :goto_6e
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 113
    if-nez v0, :cond_90

    .line 115
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 117
    if-nez v0, :cond_90

    .line 119
    const-wide/16 v0, 0x0

    .line 121
    cmp-long v2, v9, v0

    .line 123
    if-lez v2, :cond_90

    .line 125
    iget v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 127
    int-to-long v2, v2

    .line 128
    div-long/2addr v9, v2

    .line 129
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 131
    cmp-long v0, v9, v0

    .line 133
    if-lez v0, :cond_8b

    .line 135
    const-wide/16 v0, 0x1

    .line 137
    sub-long/2addr v9, v0

    .line 138
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 140
    :cond_8b
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 142
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 145
    :cond_90
    return-void

    .line 146
    :catchall_91
    move-exception v0

    .line 147
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    .line 148
    throw v0
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 6
    iget v1, v1, Landroidx/collection/b;->c:I

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_1f

    .line 11
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 13
    iget-object v3, v3, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 15
    aget-object v3, v3, v2

    .line 17
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 25
    if-ne v3, p1, :cond_1c

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_8

    .line 32
    :cond_1f
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 34
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v1, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method

.method public forceUpdate()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 8
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 4
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    .line 9
    return-void
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 6
    iget v1, v1, Landroidx/collection/b;->c:I

    .line 8
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 10
    if-ltz v1, :cond_22

    .line 12
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 14
    iget-object v2, v2, Landroidx/collection/b;->b:[Ljava/lang/Object;

    .line 16
    aget-object v2, v2, v1

    .line 18
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 26
    if-eqz v2, :cond_1d

    .line 28
    if-ne v2, p1, :cond_7

    .line 30
    :cond_1d
    iget-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/b;

    .line 32
    invoke-virtual {p1, v1}, Landroidx/collection/b;->e(I)V

    .line 35
    :cond_22
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    .line 39
    throw p1
.end method

.method public setSyncInterval(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 3
    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 4
    return-void
.end method
