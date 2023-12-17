.class public Lmiuix/animation/internal/TargetVelocityTracker;
.super Ljava/lang/Object;
.source "TargetVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;,
        Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    }
.end annotation


# instance fields
.field private mMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 11
    return-void
.end method

.method private getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;-><init>(Lmiuix/animation/internal/TargetVelocityTracker$1;)V

    .line 17
    iget-object v1, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 19
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    return-object v0
.end method


# virtual methods
.method public trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V
    .registers 9

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TargetVelocityTracker;->getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [D

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-wide p3, v2, v3

    .line 13
    invoke-virtual {v1, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 16
    iget-object p3, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 18
    invoke-virtual {p3, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 21
    move-result p3

    .line 22
    const/4 p4, 0x0

    .line 23
    cmpl-float p4, p3, p4

    .line 25
    if-eqz p4, :cond_23

    .line 27
    iget-object p4, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    .line 29
    invoke-virtual {p4, p1, p2}, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    .line 32
    float-to-double p3, p3

    .line 33
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 36
    :cond_23
    return-void
.end method
