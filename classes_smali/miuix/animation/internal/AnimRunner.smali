.class public Lmiuix/animation/internal/AnimRunner;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/AnimRunner$Holder;
    }
.end annotation


# static fields
.field public static final MAX_DELTA:J = 0x10L

.field private static final MAX_RECORD:I = 0x5

.field private static final MSG_END:I = 0x1

.field private static final MSG_START:I

.field public static volatile sMainHandler:Landroid/os/Handler;

.field public static final sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

.field private static final sRunnerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile mAverageDelta:J

.field private mDeltaRecord:[J

.field private volatile mIsRunning:Z

.field private mLastFrameTime:J

.field private mRatio:F

.field private mRecordCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "AnimRunnerThread"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 10
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lmiuix/animation/internal/AnimRunner;->createMainHandler(Landroid/os/Looper;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    new-instance v1, Lmiuix/animation/internal/RunnerHandler;

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Lmiuix/animation/internal/RunnerHandler;-><init>(Landroid/os/Looper;)V

    .line 29
    sput-object v1, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x10

    .line 3
    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_14

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    return-void

    nop

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lmiuix/animation/internal/AnimRunner$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/internal/AnimRunner;-><init>()V

    return-void
.end method

.method public static synthetic access$100()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    .line 4
    return-void
.end method

.method public static synthetic access$200()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    .line 4
    return-void
.end method

.method private average([J)J
    .registers 11

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    move v4, v1

    .line 6
    move-wide v5, v2

    .line 7
    :goto_6
    if-ge v1, v0, :cond_14

    .line 9
    aget-wide v7, p1, v1

    .line 11
    add-long/2addr v5, v7

    .line 12
    cmp-long v7, v7, v2

    .line 14
    if-lez v7, :cond_11

    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 18
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    if-lez v4, :cond_19

    .line 23
    int-to-long v0, v4

    .line 24
    div-long v2, v5, v0

    .line 26
    :cond_19
    return-wide v2
.end method

.method private calculateAverageDelta(J)J
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    .line 3
    invoke-direct {p0, v0}, Lmiuix/animation/internal/AnimRunner;->average([J)J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v4, v0, v2

    .line 11
    if-lez v4, :cond_d

    .line 13
    move-wide p1, v0

    .line 14
    :cond_d
    cmp-long v0, p1, v2

    .line 16
    const-wide/16 v1, 0x10

    .line 18
    if-eqz v0, :cond_17

    .line 20
    cmp-long v0, p1, v1

    .line 22
    if-lez v0, :cond_18

    .line 24
    :cond_17
    move-wide p1, v1

    .line 25
    :cond_18
    long-to-float p1, p1

    .line 26
    iget p2, p0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    .line 28
    div-float/2addr p1, p2

    .line 29
    float-to-double p1, p1

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 33
    move-result-wide p1

    .line 34
    double-to-long p1, p1

    .line 35
    return-wide p1
.end method

.method public static createMainHandler(Landroid/os/Looper;)V
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Lmiuix/animation/internal/AnimRunner$1;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/animation/internal/AnimRunner$1;-><init>(Landroid/os/Looper;)V

    .line 9
    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method private static endAnimation()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_17

    .line 17
    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    const-string v3, "AnimRunner.endAnimation"

    .line 21
    invoke-static {v3, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_17
    iput-boolean v2, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 26
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    .line 33
    return-void
.end method

.method public static getInst()Lmiuix/animation/internal/AnimRunner;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner$Holder;->inst:Lmiuix/animation/internal/AnimRunner;

    .line 3
    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public static setThreadPriority(I)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 10
    return-void
.end method

.method private static startAnimRunner()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_17

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const-string v2, "AnimRunner.start"

    .line 21
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_17
    invoke-static {}, Lmiuix/animation/Folme;->getTimeRatio()F

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 33
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 36
    move-result-object v1

    .line 37
    const-wide/16 v2, 0x0

    .line 39
    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    .line 42
    return-void
.end method

.method private static updateAnimRunner(Ljava/util/Collection;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_4e

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 29
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 31
    const/4 v2, 0x0

    .line 32
    new-array v3, v2, [Lmiuix/animation/property/FloatProperty;

    .line 34
    invoke-virtual {v1, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 37
    move-result v1

    .line 38
    iget-object v3, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 40
    invoke-virtual {v3}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v1, :cond_37

    .line 50
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 52
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->update(Z)V

    .line 55
    goto :goto_10

    .line 56
    :cond_37
    if-nez v3, :cond_10

    .line 58
    if-nez v1, :cond_10

    .line 60
    const-wide/16 v5, 0x1

    .line 62
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_10

    .line 68
    if-eqz v4, :cond_10

    .line 70
    const/4 v1, 0x1

    .line 71
    new-array v1, v1, [Lmiuix/animation/IAnimTarget;

    .line 73
    aput-object v0, v1, v2

    .line 75
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 78
    goto :goto_10

    .line 79
    :cond_4e
    return-void
.end method

.method private updateRunningTime(J)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-nez v4, :cond_b

    .line 9
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    sub-long v2, p1, v0

    .line 14
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 16
    :goto_f
    iget p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 18
    rem-int/lit8 p2, p1, 0x5

    .line 20
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    .line 22
    aput-wide v2, v0, p2

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 26
    iput p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 28
    invoke-direct {p0, v2, v3}, Lmiuix/animation/internal/AnimRunner;->calculateAverageDelta(J)J

    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    .line 34
    return-void
.end method


# virtual methods
.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .registers 7

    .line 2
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunner;->updateRunningTime(J)V

    .line 4
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 6
    if-eqz p1, :cond_62

    .line 8
    invoke-static {}, Lmiuix/animation/Folme;->getTargets()Ljava/util/Collection;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :cond_11
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2f

    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 30
    iget-object v3, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 32
    new-array v4, v0, [Lmiuix/animation/property/FloatProperty;

    .line 34
    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_11

    .line 40
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 42
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    .line 45
    move-result v2

    .line 46
    add-int/2addr v1, v2

    .line 47
    goto :goto_11

    .line 48
    :cond_2f
    const/16 p2, 0x1f4

    .line 50
    if-le v1, p2, :cond_34

    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_34
    if-nez v0, :cond_3c

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 58
    move-result p2

    .line 59
    if-gtz p2, :cond_42

    .line 61
    :cond_3c
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_45

    .line 67
    :cond_42
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 70
    :cond_45
    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 72
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x3

    .line 77
    iput v2, v1, Landroid/os/Message;->what:I

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    if-eqz v0, :cond_62

    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 93
    move-result p2

    .line 94
    if-lez p2, :cond_62

    .line 96
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 99
    :cond_62
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 101
    return p1
.end method

.method public end()V
    .registers 3

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 8
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    goto :goto_2f

    .line 9
    :cond_e
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2f

    :cond_19
    const-string v0, "AnimRunner.end handler is null! looper: "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_c
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .registers 7

    .line 4
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    :cond_c
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public getAverageDelta()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    .line 3
    return-wide v0
.end method

.method public run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 6

    .line 1
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public run(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 4

    .line 3
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "- AnimManager.run"

    .line 4
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_e
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->startAnim(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_e

    .line 11
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    .line 14
    goto :goto_2f

    .line 15
    :cond_e
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getMainHandler()Landroid/os/Handler;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_19

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    goto :goto_2f

    .line 26
    :cond_19
    const-string v0, "AnimRunner.start handler is null! looper: "

    .line 28
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "miuix_anim"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    return-void
.end method
