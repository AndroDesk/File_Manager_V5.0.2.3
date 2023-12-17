.class public abstract Lcom/miui/maml/RenderUpdater;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Lcom/miui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field public mLastUpdateTime:J

.field public mNextUpdateInterval:J

.field private mPaused:Z

.field public mPendingRender:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mSignaled:Z

.field private mStarted:Z

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/miui/maml/RenderUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$1;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/miui/maml/RenderUpdater$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$2;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iput-object p2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 7
    iput-boolean p3, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/RenderUpdater;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/miui/maml/RenderUpdater;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/RenderUpdater;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/RenderUpdater;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

    .line 4
    return-void
.end method

.method public static synthetic access$602(Lcom/miui/maml/RenderUpdater;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 3
    return p1
.end method

.method private checkDelay()J
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-gtz v0, :cond_9

    .line 9
    return-wide v2

    .line 10
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v0

    .line 14
    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    .line 16
    sub-long/2addr v0, v4

    .line 17
    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 19
    cmp-long v6, v0, v4

    .line 21
    if-gez v6, :cond_18

    .line 23
    sub-long v2, v4, v0

    .line 25
    :cond_18
    return-wide v2
.end method

.method private doRunUpdater()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 11
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 11
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 19
    return-void
.end method

.method public final doRender()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->doRenderImp()V

    .line 7
    return-void
.end method

.method public abstract doRenderImp()V
.end method

.method public doneRender()V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 6
    if-nez v0, :cond_25

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 10
    if-nez v0, :cond_25

    .line 12
    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 19
    cmp-long v2, v0, v2

    .line 21
    if-gez v2, :cond_25

    .line 23
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 25
    iget-object v3, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p0, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    .line 33
    sub-long/2addr v4, v6

    .line 34
    sub-long/2addr v0, v4

    .line 35
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_25
    return-void
.end method

.method public finalize()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->cleanUp()V

    .line 8
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    return-void
.end method

.method public forceUpdate()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    .line 4
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 14
    return-void
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 3
    return v0
.end method

.method public onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 12
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    .line 12
    return-void
.end method

.method public runUpdater()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    move-wide v3, v1

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->checkDelay()J

    .line 12
    move-result-wide v3

    .line 13
    :goto_c
    cmp-long v0, v3, v1

    .line 15
    if-lez v0, :cond_22

    .line 17
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 21
    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->y(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_28

    .line 27
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public setAutoCleanup(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    .line 3
    return-void
.end method

.method public setStartDelay(JJ)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    .line 3
    iput-wide p3, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 5
    const-wide/16 p1, 0x0

    .line 7
    cmp-long p1, p3, p1

    .line 9
    if-gtz p1, :cond_d

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 14
    :cond_d
    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    .line 4
    return-void
.end method
