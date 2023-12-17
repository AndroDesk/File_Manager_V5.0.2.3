.class public Lcom/miui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RendererController$EmptyListener;,
        Lcom/miui/maml/RendererController$Listener;,
        Lcom/miui/maml/RendererController$ISelfUpdateRenderable;,
        Lcom/miui/maml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lcom/miui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReset:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfPaused:Z

.field private mSelfRender:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    .line 13
    invoke-direct {v0}, Lcom/miui/maml/FramerateTokenList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [B

    .line 24
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 26
    const-wide v0, 0x7fffffffffffffffL

    .line 31
    iput-wide v0, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 40
    const/high16 v0, -0x40800000  # -1.0f

    .line 42
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 44
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/lang/Object;

    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    .line 69
    invoke-direct {v0, p0}, Lcom/miui/maml/FramerateTokenList;-><init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V

    .line 72
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 74
    return-void
.end method

.method private runRunnables()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    .line 3
    if-nez v0, :cond_2e

    .line 5
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 10
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 12
    iput-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 14
    iput-object v1, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2b

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_15
    if-ge v1, v0, :cond_25

    .line 24
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Runnable;

    .line 32
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_15

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    goto :goto_2e

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .line 46
    throw v1

    .line 47
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public addFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public final createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final doRender()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 8
    invoke-interface {v0}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 11
    :cond_a
    return-void
.end method

.method public final doneRender()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 7
    return-void
.end method

.method public finish()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 6
    if-nez v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_53

    .line 12
    if-eqz v1, :cond_1e

    .line 14
    :try_start_d
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->finish()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_53

    .line 17
    goto :goto_1e

    .line 18
    :catch_11
    move-exception v1

    .line 19
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    const-string v2, "RendererController"

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 33
    monitor-enter v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_53

    .line 34
    :try_start_21
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 36
    if-eqz v2, :cond_39

    .line 38
    :goto_25
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 40
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 43
    move-result v2

    .line 44
    if-lez v2, :cond_39

    .line 46
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 48
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/view/MotionEvent;

    .line 54
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    goto :goto_25

    .line 58
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_50

    .line 59
    :try_start_3a
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 61
    monitor-enter v1
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_53

    .line 62
    :try_start_3d
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_4d

    .line 68
    const/4 v1, 0x0

    .line 69
    :try_start_44
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 71
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_53

    .line 72
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 74
    invoke-virtual {v0}, Lcom/miui/maml/FramerateTokenList;->clear()V

    .line 77
    return-void

    .line 78
    :catchall_4d
    move-exception v2

    .line 79
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .line 80
    :try_start_4f
    throw v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_53

    .line 81
    :catchall_50
    move-exception v2

    .line 82
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .line 83
    :try_start_52
    throw v2

    .line 84
    :catchall_53
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_53

    .line 86
    throw v1
.end method

.method public forceUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    .line 8
    :cond_7
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    .line 15
    return-void
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 12
    if-nez v2, :cond_e

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/MotionEvent;

    .line 21
    :goto_14
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    .line 25
    throw v1
.end method

.method public final hasInited()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 3
    return v0
.end method

.method public final hasMessage()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 12
    if-nez v2, :cond_e

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_15

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_15
    :goto_15
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    .line 26
    throw v1
.end method

.method public final hasRunnable()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    :goto_e
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw v1
.end method

.method public init()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 6
    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    .line 12
    if-eqz v1, :cond_1e

    .line 14
    :try_start_d
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->init()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_23

    .line 17
    goto :goto_1e

    .line 18
    :catch_11
    move-exception v1

    .line 19
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    const-string v2, "RendererController"

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    .line 38
    throw v1
.end method

.method public final isSelfPaused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 3
    return v0
.end method

.method public onFrameRateChage(FF)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    cmpl-float p1, p2, p1

    .line 4
    if-lez p1, :cond_8

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 9
    :cond_8
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    const-string v0, "RendererController"

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 8
    if-eqz v1, :cond_24

    .line 10
    :try_start_9
    invoke-interface {v1, p1}, Lcom/miui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_c} :catch_d

    .line 13
    goto :goto_24

    .line 14
    :catch_d
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_24

    .line 26
    :catch_19
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    const-string v0, "RendererController"

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 8
    if-eqz v1, :cond_24

    .line 10
    :try_start_9
    invoke-interface {v1, p1}, Lcom/miui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_c} :catch_d

    .line 13
    goto :goto_24

    .line 14
    :catch_d
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_24

    .line 26
    :catch_19
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public final pendingRender()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 3
    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Ljava/util/LinkedList;

    .line 10
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_29

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result v1

    .line 26
    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 28
    cmpl-float v1, v1, v3

    .line 30
    if-nez v1, :cond_29

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    move-result v1

    .line 36
    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 38
    cmpl-float v1, v1, v3

    .line 40
    if-eqz v1, :cond_3a

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 59
    :cond_3a
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 61
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 64
    move-result p1

    .line 65
    const/4 v1, 0x3

    .line 66
    if-le p1, v1, :cond_67

    .line 68
    const/4 p1, 0x0

    .line 69
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 71
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v1

    .line 75
    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_5d

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroid/view/MotionEvent;

    .line 87
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 90
    move-result v4

    .line 91
    if-ne v4, v2, :cond_4a

    .line 93
    move-object p1, v3

    .line 94
    :cond_5d
    if-eqz p1, :cond_67

    .line 96
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 98
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6c

    .line 105
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 108
    return-void

    .line 109
    :catchall_6c
    move-exception p1

    .line 110
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .line 111
    throw p1
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_12

    .line 14
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .line 26
    throw p1

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "postRunnable null"

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_1b

    .line 3
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_13

    .line 14
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 20
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .line 27
    throw p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    const-string v0, "postRunnable null"

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public removeFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/FramerateTokenList;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 6
    return-void
.end method

.method public final requestUpdate()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 7
    return-void
.end method

.method public selfPause()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 11
    if-nez v1, :cond_16

    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 16
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->pause()V

    .line 23
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception v1

    .line 29
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw v1
.end method

.method public selfResume()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 11
    if-eqz v1, :cond_16

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 16
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->resume()V

    .line 23
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1f

    .line 24
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->onResume()V

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw v1
.end method

.method public setListener(Lcom/miui/maml/RendererController$Listener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 3
    return-void
.end method

.method public setNeedReset(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    .line 3
    return-void
.end method

.method public setSelfRender(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 3
    return-void
.end method

.method public tick(J)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 6
    if-eqz v0, :cond_18

    .line 8
    :try_start_7
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/RendererController$Listener;->tick(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 11
    goto :goto_18

    .line 12
    :catch_b
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "RendererController"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_18
    :goto_18
    iput-wide p1, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 27
    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    .line 8
    :cond_7
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->triggerUpdate()V

    .line 15
    return-void
.end method

.method public update(J)J
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 8
    move-result v2

    .line 9
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 11
    if-eqz v3, :cond_e

    .line 13
    if-eqz v2, :cond_3a

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_24

    .line 24
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_21

    .line 30
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 40
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 42
    if-nez p1, :cond_2e

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 47
    :cond_2e
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 49
    if-nez p1, :cond_38

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3a

    .line 57
    :cond_38
    const-wide/16 v0, 0x0

    .line 59
    :cond_3a
    return-wide v0
.end method

.method public final updateFramerate(J)J
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 12
    const/4 v3, 0x0

    .line 13
    move-wide v4, v1

    .line 14
    :goto_d
    if-ge v3, v0, :cond_23

    .line 16
    iget-object v6, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lcom/miui/maml/elements/FramerateController;

    .line 24
    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/FramerateController;->updateFramerate(J)J

    .line 27
    move-result-wide v6

    .line 28
    cmp-long v8, v6, v4

    .line 30
    if-gez v8, :cond_20

    .line 32
    move-wide v4, v6

    .line 33
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_d

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/FramerateTokenList;->getFramerate()F

    .line 41
    move-result p1

    .line 42
    iget p2, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    .line 44
    cmpl-float v0, p2, p1

    .line 46
    if-eqz v0, :cond_49

    .line 48
    const/high16 v0, 0x3f800000  # 1.0f

    .line 50
    cmpl-float p2, p2, v0

    .line 52
    if-ltz p2, :cond_3c

    .line 54
    cmpg-float p2, p1, v0

    .line 56
    if-gez p2, :cond_3c

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 61
    :cond_3c
    iput p1, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    .line 63
    const/4 p2, 0x0

    .line 64
    cmpl-float p2, p1, p2

    .line 66
    if-eqz p2, :cond_47

    .line 68
    const/high16 p2, 0x447a0000  # 1000.0f

    .line 70
    div-float/2addr p2, p1

    .line 71
    float-to-long v1, p2

    .line 72
    :cond_47
    iput-wide v1, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 74
    :cond_49
    iget-wide p1, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 76
    cmp-long v0, p1, v4

    .line 78
    if-gez v0, :cond_50

    .line 80
    move-wide v4, p1

    .line 81
    :cond_50
    return-wide v4
.end method

.method public updateIfNeeded(J)J
    .registers 11

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 7
    const-wide v4, 0x7fffffffffffffffL

    .line 12
    cmp-long v6, v2, v4

    .line 14
    if-gez v6, :cond_15

    .line 16
    iget-wide v4, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 18
    sub-long v4, p1, v4

    .line 20
    sub-long v4, v2, v4

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 25
    move-result v2

    .line 26
    const-wide/16 v6, 0x0

    .line 28
    cmp-long v3, v4, v6

    .line 30
    if-lez v3, :cond_32

    .line 32
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 34
    if-nez v3, :cond_32

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_32

    .line 42
    if-eqz v2, :cond_2c

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    cmp-long p1, v4, v0

    .line 47
    if-gez p1, :cond_63

    .line 49
    move-wide v0, v4

    .line 50
    goto :goto_63

    .line 51
    :cond_32
    :goto_32
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 53
    if-eqz v3, :cond_38

    .line 55
    if-eqz v2, :cond_63

    .line 57
    :cond_38
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_4e

    .line 66
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4b

    .line 72
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 82
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 84
    if-nez p1, :cond_58

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 89
    :cond_58
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 91
    if-nez p1, :cond_62

    .line 93
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_63

    .line 99
    :cond_62
    move-wide v0, v6

    .line 100
    :cond_63
    :goto_63
    return-wide v0
.end method
