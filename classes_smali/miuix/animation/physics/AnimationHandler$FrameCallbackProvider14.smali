.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;
.super Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameCallbackProvider14"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 8
    new-instance p1, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;

    .line 10
    invoke-direct {p1, p0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)V

    .line 13
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public static synthetic access$402(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 3
    return-wide p1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCurrentThread()Z
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public postFrameCallback()V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0xa

    .line 10
    sub-long/2addr v2, v0

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 19
    iget-object v3, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
.end method
