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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    return-void
.end method

.method private getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    .registers 4

    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    if-nez v0, :cond_15

    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;-><init>(Lmiuix/animation/internal/TargetVelocityTracker$1;)V

    iget-object v1, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method


# virtual methods
.method public trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V
    .registers 9

    invoke-direct {p0, p2}, Lmiuix/animation/internal/TargetVelocityTracker;->getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    move-result-object v0

    iget-object v1, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    invoke-virtual {v1, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    iget-object p3, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p3, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p3

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_23

    iget-object p4, v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    invoke-virtual {p4, p1, p2}, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    :cond_23
    return-void
.end method
