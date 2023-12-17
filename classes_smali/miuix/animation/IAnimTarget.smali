.class public abstract Lmiuix/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field public static final sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animManager:Lmiuix/animation/internal/AnimManager;

.field public final handler:Lmiuix/animation/internal/TargetHandler;

.field public final id:I

.field public mDefaultMinVisible:F

.field public mFlags:J

.field public mFlagsSetTime:J

.field public mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldCheckValue:Z

.field public final mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

.field public notifyManager:Lmiuix/animation/internal/NotifyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const v1, 0x7fffffff

    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 9
    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 9
    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 11
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    .line 13
    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 18
    new-instance v1, Lmiuix/animation/internal/NotifyManager;

    .line 20
    invoke-direct {v1, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 23
    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 25
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 28
    iput v1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 30
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 40
    sget-object v2, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 45
    move-result v2

    .line 46
    iput v2, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 48
    new-instance v2, Lmiuix/animation/internal/TargetVelocityTracker;

    .line 50
    invoke-direct {v2}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    .line 53
    iput-object v2, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 55
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_44

    .line 62
    new-array v2, v3, [Ljava/lang/Object;

    .line 64
    const-string v4, "IAnimTarget create ! "

    .line 66
    invoke-static {v4, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_44
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    .line 72
    const v0, 0x3dcccccd  # 0.1f

    .line 75
    const/4 v2, 0x3

    .line 76
    new-array v4, v2, [Lmiuix/animation/property/FloatProperty;

    .line 78
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 80
    aput-object v5, v4, v3

    .line 82
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 84
    aput-object v5, v4, v1

    .line 86
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 88
    const/4 v6, 0x2

    .line 89
    aput-object v5, v4, v6

    .line 91
    invoke-virtual {p0, v0, v4}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 94
    const/high16 v0, 0x3b800000  # 0.00390625f

    .line 96
    const/4 v4, 0x4

    .line 97
    new-array v4, v4, [Lmiuix/animation/property/FloatProperty;

    .line 99
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 101
    aput-object v5, v4, v3

    .line 103
    sget-object v5, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 105
    aput-object v5, v4, v1

    .line 107
    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 109
    aput-object v5, v4, v6

    .line 111
    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 113
    aput-object v5, v4, v2

    .line 115
    invoke-virtual {p0, v0, v4}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 118
    const v0, 0x3b03126f  # 0.002f

    .line 121
    new-array v2, v6, [Lmiuix/animation/property/FloatProperty;

    .line 123
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 125
    aput-object v4, v2, v3

    .line 127
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 129
    aput-object v3, v2, v1

    .line 131
    invoke-virtual {p0, v0, v2}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 134
    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract clean()V
.end method

.method public enableCheckValue(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 3
    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public finalize()V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "IAnimTarget was destroyed ！"

    .line 12
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_e
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    return-void
.end method

.method public getDefaultMinVisible()F
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 3
    return v0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-interface {p1, v0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    const p1, 0x7fffffff

    .line 15
    return p1
.end method

.method public getLocationOnScreen([I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    aput v1, p1, v0

    .line 5
    aput v1, p1, v1

    .line 7
    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 9
    if-eqz p1, :cond_f

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 18
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 21
    cmpl-float v0, p1, v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/internal/NotifyManager;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/styles/PropertyStyle;->getVelocityThreshold()F

    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    return-wide v0
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 15
    return p1
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hasFlags(J)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 3
    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isValidFlag()Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3

    .line 10
    cmp-long v0, v0, v2

    .line 12
    if-lez v0, :cond_f

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return v0
.end method

.method public onFrameEnd(Z)V
    .registers 2

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-nez v0, :cond_14

    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :goto_19
    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 3
    return-object p0
.end method

.method public setFlags(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    .line 9
    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 10
    move-result v1

    .line 11
    const v2, 0x7fffffff

    .line 14
    if-eq v1, v2, :cond_12

    .line 16
    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    .line 19
    :cond_12
    return-void
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;
    .registers 7

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p2, v1

    .line 5
    new-instance v3, Lmiuix/animation/property/ValueProperty;

    invoke-direct {v3, v2}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;
    .registers 8

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/NotifyManager;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 6
    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result v1

    .line 11
    const v2, 0x7f7fffff  # Float.MAX_VALUE

    .line 14
    cmpl-float v1, v1, v2

    .line 16
    if-eqz v1, :cond_20

    .line 18
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_20

    .line 24
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_20

    .line 30
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 33
    :cond_20
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .registers 6

    .line 1
    const-wide v0, 0x47efffffe0000000L  # 3.4028234663852886E38

    .line 6
    cmpl-double v0, p2, v0

    .line 8
    if-eqz v0, :cond_f

    .line 10
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 12
    double-to-float p2, p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setVelocity(Lmiuix/animation/property/FloatProperty;F)V

    .line 16
    :cond_f
    return-void
.end method

.method public shouldCheckValue()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 3
    return v0
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 3
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "IAnimTarget{"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "}"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TargetVelocityTracker;->trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    .line 6
    return-void
.end method
