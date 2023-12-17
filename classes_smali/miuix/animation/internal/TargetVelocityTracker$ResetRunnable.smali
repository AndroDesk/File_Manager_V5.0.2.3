.class Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;
.super Ljava/lang/Object;
.source "TargetVelocityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/TargetVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetRunnable"
.end annotation


# instance fields
.field public mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

.field public mProperty:Lmiuix/animation/property/FloatProperty;

.field public mTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 6
    return-void
.end method


# virtual methods
.method public post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 8
    if-eqz v0, :cond_f

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    if-eq v0, p1, :cond_16

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 23
    :cond_16
    iput-object p2, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 25
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 27
    const-wide/16 v0, 0x258

    .line 29
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 9
    if-eqz v0, :cond_26

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 17
    aput-object v3, v1, v2

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1f

    .line 25
    iget-object v1, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 34
    iget-object v0, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 36
    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 39
    :cond_26
    return-void
.end method
