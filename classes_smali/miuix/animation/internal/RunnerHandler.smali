.class Lmiuix/animation/internal/RunnerHandler;
.super Landroid/os/Handler;
.source "RunnerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/RunnerHandler$SetToInfo;
    }
.end annotation


# static fields
.field public static final ANIM_MSG_CLEAN:I = 0x5

.field public static final ANIM_MSG_RUNNER_RUN:I = 0x3

.field public static final ANIM_MSG_SETUP:I = 0x1

.field public static final ANIM_MSG_SET_TO:I = 0x4

.field public static final ANIM_MSG_UPDATE:I = 0x2


# instance fields
.field private final mDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCount:I

.field private mIsTaskRunning:Z

.field private mLastRun:J

.field private final mOpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnerStart:Z

.field private final mSplitInfo:[I

.field private mStart:Z

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalT:J

.field private final mTransList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final runningTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    .line 6
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 46
    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 50
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 55
    const/4 p1, 0x2

    .line 56
    new-array p1, p1, [I

    .line 58
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 60
    return-void
.end method

.method private addAnimTask(Ljava/util/List;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_46

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 17
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 35
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;

    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_40

    .line 41
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    move-result v3

    .line 47
    if-ge v3, p3, :cond_3c

    .line 49
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 56
    move-result v4

    .line 57
    add-int/2addr v4, v3

    .line 58
    if-le v4, p2, :cond_3c

    .line 60
    goto :goto_40

    .line 61
    :cond_3c
    invoke-virtual {v2, v1}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    .line 64
    goto :goto_16

    .line 65
    :cond_40
    :goto_40
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_16

    .line 71
    :cond_46
    return-void
.end method

.method private addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiuix/animation/utils/LinkNode;",
            ">(",
            "Lmiuix/animation/IAnimTarget;",
            "TT;",
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/animation/utils/LinkNode;

    .line 7
    if-nez v0, :cond_c

    .line 9
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {v0, p2}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    .line 16
    :goto_f
    return-void
.end method

.method private static doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V
    .registers 9

    .line 1
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 3
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 5
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6a

    .line 11
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 13
    if-eqz v1, :cond_6a

    .line 15
    iget-object v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 17
    if-eqz v1, :cond_1a

    .line 19
    iget-object v2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6a

    .line 27
    :cond_1a
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 29
    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 31
    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_6a

    .line 37
    iget v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 43
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 45
    const/4 v2, 0x3

    .line 46
    if-ne v1, v2, :cond_51

    .line 48
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 50
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 52
    const-wide v3, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 57
    cmpl-double v1, v1, v3

    .line 59
    if-eqz v1, :cond_42

    .line 61
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 63
    iget-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 65
    iput-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 67
    :cond_42
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 69
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 75
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    iput v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 81
    goto :goto_62

    .line 82
    :cond_51
    const/4 v2, 0x4

    .line 83
    if-ne v1, v2, :cond_62

    .line 85
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 87
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 91
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 93
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 97
    iput v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 99
    :cond_62
    :goto_62
    iget-byte p3, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 101
    invoke-virtual {p2, p3}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 104
    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    .line 107
    :cond_6a
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_87

    .line 113
    const-string p1, "---- RunnerHandler handleUpdate doSetOperation "

    .line 115
    const-string p2, " taskInfo "

    .line 117
    invoke-static {p1, v0, p2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object p1

    .line 121
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    const/4 p1, 0x0

    .line 131
    new-array p1, p1, [Ljava/lang/Object;

    .line 133
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_87
    return-void
.end method

.method private doSetup()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2d

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 23
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 25
    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1d
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 32
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 34
    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimManager;->setupTransition(Lmiuix/animation/internal/TransitionInfo;)V

    .line 37
    invoke-virtual {v1}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 43
    if-nez v1, :cond_1d

    .line 45
    goto :goto_a

    .line 46
    :cond_2d
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 53
    if-nez v0, :cond_40

    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 58
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->start()V

    .line 65
    :cond_40
    return-void
.end method

.method private getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const v2, 0x7fffffff

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1f

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 23
    invoke-virtual {v3}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    .line 26
    move-result v4

    .line 27
    if-ge v4, v2, :cond_a

    .line 29
    move-object v1, v3

    .line 30
    move v2, v4

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    return-object v1
.end method

.method private getTotalAnimCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1b

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 20
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 22
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    return v1
.end method

.method private static handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z
    .registers 6

    .line 1
    invoke-static {p2}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 11
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 13
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_2a

    .line 20
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 22
    iget v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 24
    add-int/2addr v2, v1

    .line 25
    iput v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 27
    iget v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 29
    add-int/2addr v0, v1

    .line 30
    iput v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 36
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 38
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 40
    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    .line 43
    :cond_2a
    return v1
.end method

.method private static handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 3
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 5
    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 7
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_41

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lmiuix/animation/internal/AnimTask;

    .line 31
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 33
    iget v4, v2, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 35
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 38
    move-result v5

    .line 39
    add-int/2addr v5, v4

    .line 40
    :goto_27
    if-ge v4, v5, :cond_12

    .line 42
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    .line 48
    if-eqz v6, :cond_3e

    .line 50
    invoke-static {v2, p2, v6}, Lmiuix/animation/internal/RunnerHandler;->handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z

    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_3e

    .line 56
    if-eqz v0, :cond_3e

    .line 58
    if-eqz p1, :cond_3e

    .line 60
    invoke-static {v2, p2, v6, p1}, Lmiuix/animation/internal/RunnerHandler;->doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V

    .line 63
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_27

    .line 66
    :cond_41
    if-nez v0, :cond_4e

    .line 68
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 70
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 72
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 74
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4e
    invoke-virtual {p2}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_9b

    .line 85
    iget p1, p2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 87
    if-lez p1, :cond_9b

    .line 89
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 91
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 93
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 95
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 97
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_9b

    .line 103
    sget-object p1, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 105
    iget p2, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 117
    move-result p1

    .line 118
    const/4 p2, 0x0

    .line 119
    if-eqz p1, :cond_8e

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v0, "---- RunnerHandler handleUpdate ANIM_MSG_START_TAG "

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    new-array v0, p2, [Ljava/lang/Object;

    .line 140
    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_8e
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 145
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 147
    iget p0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 149
    invoke-virtual {p1, p2, p0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    :cond_9b
    return-void
.end method

.method private isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 3
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 11
    :goto_a
    if-eqz v0, :cond_15

    .line 13
    if-ne v0, p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    iget-object v0, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 19
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V
    .registers 8

    .line 1
    iget-object v0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 3
    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    .line 5
    iget-object v1, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 7
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_41

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 27
    invoke-virtual {v3, v2}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 33
    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 35
    iget-object v3, v3, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lmiuix/animation/listener/UpdateInfo;

    .line 43
    if-nez v3, :cond_2d

    .line 45
    goto :goto_e

    .line 46
    :cond_2d
    iget-object v4, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 48
    iget-object v5, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 50
    invoke-virtual {v4, v5, v2}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 53
    move-result-wide v4

    .line 54
    iget-object v2, v3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 56
    iput-wide v4, v2, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 58
    if-nez v0, :cond_e

    .line 60
    iget-object v2, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 62
    invoke-virtual {v3, v2}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 65
    goto :goto_e

    .line 66
    :cond_41
    iget-object v0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 68
    const/4 v1, 0x0

    .line 69
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 71
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_55

    .line 77
    iget-object p1, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 79
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 81
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 86
    :cond_55
    return-void
.end method

.method private runAnim(JJZ)V
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 12
    return-void

    .line 13
    :cond_c
    iput-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 15
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 22
    move-result-wide p1

    .line 23
    iget v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_23

    .line 28
    const-wide/16 v2, 0x2

    .line 30
    mul-long/2addr v2, p1

    .line 31
    cmp-long v2, p3, v2

    .line 33
    if-lez v2, :cond_23

    .line 35
    move-wide p3, p1

    .line 36
    :cond_23
    iget-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 38
    add-long/2addr p1, p3

    .line 39
    iput-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 41
    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 44
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTotalAnimCount()I

    .line 47
    move-result p1

    .line 48
    iget-object p2, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 50
    invoke-static {p1, p2}, Lmiuix/animation/internal/ThreadPoolUtil;->getSplitCount(I[I)V

    .line 53
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 55
    const/4 p2, 0x0

    .line 56
    aget v0, p1, p2

    .line 58
    aget p1, p1, v1

    .line 60
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 62
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v2

    .line 66
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_55

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 78
    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 80
    iget-object v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 82
    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 85
    goto :goto_41

    .line 86
    :cond_55
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 88
    invoke-direct {p0, v2, p1, v0}, Lmiuix/animation/internal/RunnerHandler;->addAnimTask(Ljava/util/List;II)V

    .line 91
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result p1

    .line 97
    xor-int/2addr p1, v1

    .line 98
    iput-boolean p1, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 100
    sget-object p1, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p1

    .line 117
    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_89

    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    move-object v3, v0

    .line 128
    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 130
    iget-wide v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 132
    move-wide v6, p3

    .line 133
    move v8, p5

    .line 134
    invoke-virtual/range {v3 .. v8}, Lmiuix/animation/internal/AnimTask;->start(JJZ)V

    .line 137
    goto :goto_74

    .line 138
    :cond_89
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 143
    move-result p1

    .line 144
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 146
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 149
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 151
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 154
    if-eqz p1, :cond_b2

    .line 156
    iget-boolean p1, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 158
    if-nez p1, :cond_b2

    .line 160
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_ac

    .line 166
    new-array p1, p2, [Ljava/lang/Object;

    .line 168
    const-string p2, "-- runAnim no transList then clean"

    .line 170
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_ac
    sget-object p1, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 175
    const/4 p2, 0x5

    .line 176
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_b2
    return-void
.end method

.method private setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z
    .registers 4

    .line 1
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 3
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    .line 11
    if-eqz p1, :cond_15

    .line 13
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 15
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 17
    invoke-direct {p0, v0, p1, v1}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private stopAnimRunner()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 3
    if-eqz v0, :cond_47

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_36

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v2, "total time = "

    .line 17
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v2

    .line 21
    iget-wide v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 23
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    const/4 v2, 0x1

    .line 33
    const-string v3, "frame count = "

    .line 35
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v3

    .line 39
    iget v4, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    aput-object v3, v0, v2

    .line 50
    const-string v2, "-- stopAnimRunner"

    .line 52
    invoke-static {v2, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_36
    iput-boolean v1, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 57
    iput-boolean v1, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 59
    const-wide/16 v2, 0x0

    .line 61
    iput-wide v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 63
    iput v1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 65
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->end()V

    .line 72
    :cond_47
    return-void
.end method

.method private updateAnim()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 4
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    move v2, v0

    .line 11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_33

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 24
    iget-object v5, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 26
    invoke-direct {p0, v3, v5}, Lmiuix/animation/internal/RunnerHandler;->updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z

    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_2c

    .line 32
    invoke-direct {p0, v3}, Lmiuix/animation/internal/RunnerHandler;->setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_26

    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    iget-object v4, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 41
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    :goto_2c
    move v2, v4

    .line 46
    :goto_2d
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 48
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 51
    goto :goto_a

    .line 52
    :cond_33
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 54
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 56
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 61
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 66
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_58

    .line 72
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_54

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    const-string v1, "- updateAnim->doSetup"

    .line 82
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_54
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    .line 88
    move v2, v4

    .line 89
    :cond_58
    if-nez v2, :cond_5d

    .line 91
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 94
    :cond_5d
    return-void
.end method

.method private updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 7
    move-object/from16 v3, p2

    .line 9
    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 12
    iget-object v2, v0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/animation/internal/AnimOperationInfo;

    .line 20
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v5

    .line 26
    move v7, v6

    .line 27
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x1

    .line 32
    if-eqz v8, :cond_115

    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lmiuix/animation/internal/TransitionInfo;

    .line 40
    invoke-direct {v0, v8}, Lmiuix/animation/internal/RunnerHandler;->isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_30

    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 48
    goto :goto_1a

    .line 49
    :cond_30
    if-eqz v2, :cond_3e

    .line 51
    iget-wide v10, v8, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 53
    iget-wide v12, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 55
    cmp-long v10, v10, v12

    .line 57
    if-lez v10, :cond_3e

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 61
    const/4 v10, 0x0

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move-object v10, v2

    .line 64
    :goto_3f
    invoke-virtual {v8}, Lmiuix/animation/internal/TransitionInfo;->getAnimStats()Lmiuix/animation/internal/AnimStats;

    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_4c

    .line 74
    invoke-static {v8, v10, v11}, Lmiuix/animation/internal/RunnerHandler;->handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V

    .line 77
    :cond_4c
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_f4

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v13, "---- updateAnim, target = "

    .line 90
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v12

    .line 100
    const/4 v13, 0x7

    .line 101
    new-array v13, v13, [Ljava/lang/Object;

    .line 103
    const-string v14, "id = "

    .line 105
    invoke-static {v14}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    move-result-object v14

    .line 109
    iget v15, v8, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 111
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v14

    .line 118
    aput-object v14, v13, v7

    .line 120
    const-string v7, "key = "

    .line 122
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object v7

    .line 126
    iget-object v14, v8, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 128
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v7

    .line 135
    aput-object v7, v13, v9

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v9, "useOp = "

    .line 144
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v7

    .line 154
    const/4 v9, 0x2

    .line 155
    aput-object v7, v13, v9

    .line 157
    const-string v7, "info.startTime = "

    .line 159
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v7

    .line 163
    iget-wide v9, v8, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 165
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v7

    .line 172
    const/4 v9, 0x3

    .line 173
    aput-object v7, v13, v9

    .line 175
    const-string v7, "opInfo.time = "

    .line 177
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move-result-object v7

    .line 181
    if-eqz v2, :cond_bd

    .line 183
    iget-wide v14, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 185
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v10

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    const/4 v10, 0x0

    .line 191
    :goto_be
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v7

    .line 198
    const/4 v10, 0x4

    .line 199
    aput-object v7, v13, v10

    .line 201
    const/4 v7, 0x5

    .line 202
    const-string v10, "stats.isRunning = "

    .line 204
    invoke-static {v10}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 211
    move-result v14

    .line 212
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v10

    .line 219
    aput-object v10, v13, v7

    .line 221
    const/4 v7, 0x6

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    const-string v14, "stats = "

    .line 229
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v10

    .line 239
    aput-object v10, v13, v7

    .line 241
    invoke-static {v12, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    goto :goto_f5

    .line 245
    :cond_f4
    const/4 v9, 0x3

    .line 246
    :goto_f5
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 249
    move-result v7

    .line 250
    if-nez v7, :cond_110

    .line 252
    iget-object v7, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 254
    iget v10, v11, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 256
    iget v11, v11, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 258
    if-le v10, v11, :cond_106

    .line 260
    const/4 v9, 0x2

    .line 261
    const/4 v10, 0x4

    .line 262
    goto :goto_10c

    .line 263
    :cond_106
    const/4 v10, 0x2

    .line 264
    move/from16 v16, v10

    .line 266
    move v10, v9

    .line 267
    move/from16 v9, v16

    .line 269
    :goto_10c
    invoke-virtual {v7, v8, v9, v10}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    .line 272
    goto :goto_112

    .line 273
    :cond_110
    add-int/lit8 v6, v6, 0x1

    .line 275
    :goto_112
    const/4 v7, 0x0

    .line 276
    goto/16 :goto_1a

    .line 278
    :cond_115
    if-eqz v2, :cond_128

    .line 280
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 283
    move-result v4

    .line 284
    if-eq v5, v4, :cond_123

    .line 286
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimOperationInfo;->isUsed()Z

    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_128

    .line 292
    :cond_123
    iget-object v2, v0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 294
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_128
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 300
    if-lez v6, :cond_12e

    .line 302
    goto :goto_12f

    .line 303
    :cond_12e
    const/4 v9, 0x0

    .line 304
    :goto_12f
    return v9
.end method


# virtual methods
.method public addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/internal/RunnerHandler$SetToInfo;-><init>(Lmiuix/animation/internal/RunnerHandler$1;)V

    .line 7
    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 9
    iget-boolean p1, p2, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 11
    if-eqz p1, :cond_17

    .line 13
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 15
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 18
    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 20
    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iput-object p2, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 26
    :goto_19
    const/4 p1, 0x4

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_61

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_5d

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v0, v3, :cond_27

    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1e

    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq v0, v1, :cond_14

    .line 19
    goto/16 :goto_9b

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 26
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 29
    goto/16 :goto_9b

    .line 31
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    check-cast v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    .line 35
    invoke-direct {p0, v0}, Lmiuix/animation/internal/RunnerHandler;->onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V

    .line 38
    goto/16 :goto_9b

    .line 40
    :cond_27
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 42
    if-eqz v0, :cond_9b

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide v4

    .line 48
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 55
    move-result-wide v6

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    move-result v8

    .line 64
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 66
    if-nez v0, :cond_50

    .line 68
    iput-boolean v2, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 70
    const-wide/16 v2, 0x0

    .line 72
    iput-wide v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 74
    iput v1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 76
    move-object v3, p0

    .line 77
    invoke-direct/range {v3 .. v8}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJZ)V

    .line 80
    goto :goto_9b

    .line 81
    :cond_50
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 83
    if-nez v0, :cond_9b

    .line 85
    iget-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 87
    sub-long v6, v4, v0

    .line 89
    move-object v3, p0

    .line 90
    invoke-direct/range {v3 .. v8}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJZ)V

    .line 93
    goto :goto_9b

    .line 94
    :cond_5d
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->updateAnim()V

    .line 97
    goto :goto_9b

    .line 98
    :cond_61
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 100
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 112
    if-eqz v0, :cond_9b

    .line 114
    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 116
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 118
    invoke-direct {p0, v2, v0, v3}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 121
    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 123
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 125
    iget-object v2, v2, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    iget v0, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 138
    if-nez v0, :cond_9b

    .line 140
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_98

    .line 146
    new-array v0, v1, [Ljava/lang/Object;

    .line 148
    const-string v1, "- ANIM_MSG_SETUP->doSetup"

    .line 150
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_98
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    .line 156
    :cond_9b
    :goto_9b
    const/4 v0, 0x0

    .line 157
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_18

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 18
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 20
    iget-object v1, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_18
    return-void
.end method
