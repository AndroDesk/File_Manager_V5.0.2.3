.class public Lmiuix/animation/internal/AnimManager;
.super Ljava/lang/Object;
.source "AnimManager.java"

# interfaces
.implements Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# instance fields
.field public final mBeginAnim:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartAnim:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mTarget:Lmiuix/animation/IAnimTarget;

.field private mUpdateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiuix/animation/internal/TransitionInfo;",
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
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 51
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 53
    return-void
.end method

.method private clearRunningInfo()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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
    if-eqz v1, :cond_22

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 23
    sget-object v2, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 25
    iget v1, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 40
    return-void
.end method

.method private varargs containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z
    .registers 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_12

    .line 6
    aget-object v3, p2, v2

    .line 8
    invoke-virtual {p1, v3}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return v1
.end method

.method private pendState(Lmiuix/animation/internal/TransitionInfo;)Z
    .registers 6

    .line 1
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/controller/AnimState;->flags:J

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_7a

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 23
    if-ne v1, p1, :cond_19

    .line 25
    goto :goto_a

    .line 26
    :cond_19
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 28
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 30
    if-nez v3, :cond_26

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 39
    :cond_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_46

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lmiuix/animation/listener/UpdateInfo;

    .line 55
    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 57
    iget-object v5, v3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 59
    invoke-virtual {v4, v5}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2a

    .line 65
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 67
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_2a

    .line 71
    :cond_46
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_5a

    .line 79
    iget v2, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 81
    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 83
    if-eq v2, v3, :cond_a

    .line 85
    const/4 v2, 0x5

    .line 86
    const/4 v3, 0x4

    .line 87
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    .line 90
    goto :goto_a

    .line 91
    :cond_5a
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    move-result v2

    .line 97
    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 99
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 102
    move-result v3

    .line 103
    if-eq v2, v3, :cond_74

    .line 105
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 107
    iput-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 109
    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 116
    goto :goto_a

    .line 117
    :cond_74
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 119
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    goto :goto_a

    .line 123
    :cond_7a
    return-void
.end method

.method private setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_48

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 25
    invoke-virtual {p1, v2, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 28
    move-result-wide v2

    .line 29
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 31
    iget-object v4, v4, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 33
    iget-object v4, v4, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lmiuix/animation/listener/UpdateInfo;

    .line 41
    if-eqz v4, :cond_2e

    .line 43
    iget-object v4, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 45
    iput-wide v2, v4, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 47
    :cond_2e
    instance-of v4, v1, Lmiuix/animation/property/IIntValueProperty;

    .line 49
    if-eqz v4, :cond_3c

    .line 51
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Lmiuix/animation/property/IIntValueProperty;

    .line 56
    double-to-int v6, v2

    .line 57
    invoke-virtual {v4, v5, v6}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 60
    goto :goto_42

    .line 61
    :cond_3c
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 63
    double-to-float v5, v2

    .line 64
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 67
    :goto_42
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 69
    invoke-virtual {v4, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->trackVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 72
    goto :goto_8

    .line 73
    :cond_48
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 75
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/IAnimTarget;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 78
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_22

    .line 7
    const-string v0, "- AnimManager.clear() "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/Throwable;

    .line 15
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 18
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 45
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    invoke-direct {p0}, Lmiuix/animation/internal/AnimManager;->clearRunningInfo()V

    .line 53
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 58
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 63
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 68
    return-void
.end method

.method public getTotalAnimCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1d

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 24
    invoke-virtual {v2}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    return v1
.end method

.method public getTransitionInfos(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_26

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 23
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 25
    if-eqz v2, :cond_a

    .line 27
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_a

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_a

    .line 39
    :cond_26
    return-void
.end method

.method public getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 9
    if-nez v0, :cond_1a

    .line 11
    new-instance v0, Lmiuix/animation/listener/UpdateInfo;

    .line 13
    invoke-direct {v0, p1}, Lmiuix/animation/listener/UpdateInfo;-><init>(Lmiuix/animation/property/FloatProperty;)V

    .line 16
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmiuix/animation/listener/UpdateInfo;

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    move-object v0, p1

    .line 27
    :cond_1a
    return-object v0
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 7
    return-wide v0
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_18

    .line 8
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_17

    .line 16
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_18

    .line 24
    :cond_17
    return v1

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_35

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 47
    invoke-direct {p0, v2, p1}, Lmiuix/animation/internal/AnimManager;->containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_22

    .line 53
    return v1

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public isAnimSetup()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 3
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, ", info = "

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_53

    .line 14
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2f

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v3, "-- notifyTransitionEnd 0, msg = "

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    new-array v1, v2, [Ljava/lang/Object;

    .line 45
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_2f
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 50
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z

    .line 59
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 61
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 72
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 74
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 76
    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    goto :goto_83

    .line 84
    :cond_53
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_75

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v0, "-- notifyTransitionEnd 1, msg = "

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    new-array p3, v2, [Ljava/lang/Object;

    .line 115
    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_75
    invoke-virtual {p0, p1, v2}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z

    .line 121
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 123
    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 126
    move-result-object p2

    .line 127
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 129
    invoke-virtual {p2, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 132
    :goto_83
    return-void
.end method

.method public removePendingRemovedInfo(Lmiuix/animation/internal/TransitionInfo;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    iget v3, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 17
    iget v4, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 19
    if-ne v3, v4, :cond_1d

    .line 21
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iget-object v4, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move v3, v1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v3, v2

    .line 31
    :goto_1e
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_ac

    .line 37
    const/4 v4, 0x6

    .line 38
    new-array v4, v4, [Ljava/lang/Object;

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v6, "removed = "

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    aput-object v5, v4, v2

    .line 59
    const-string v2, "id = "

    .line 61
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v2

    .line 65
    iget v5, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    aput-object v2, v4, v1

    .line 76
    const/4 v1, 0x2

    .line 77
    const-string v2, "key = "

    .line 79
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v2

    .line 83
    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v5, " "

    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 98
    move-result v5

    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    aput-object v2, v4, v1

    .line 108
    const/4 v1, 0x3

    .line 109
    const-string v2, "mRunningInfo.size = "

    .line 111
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v2

    .line 115
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 120
    move-result v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    aput-object v2, v4, v1

    .line 130
    const/4 v1, 0x4

    .line 131
    const-string v2, "info.startTime = "

    .line 133
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    move-result-object v2

    .line 137
    iget-wide v5, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 139
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    aput-object p1, v4, v1

    .line 148
    const/4 p1, 0x5

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v2, "pendingInfo = "

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    aput-object v0, v4, p1

    .line 168
    const-string p1, "----- removePendingRemovedInfo"

    .line 170
    invoke-static {p1, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_ac
    return v3
.end method

.method public removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_26

    .line 15
    iget v3, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 17
    iget v4, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 19
    if-ne v3, v4, :cond_26

    .line 21
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    if-eqz p2, :cond_24

    .line 30
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 34
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_24
    move v0, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v0, v2

    .line 40
    :goto_27
    new-array v3, v2, [Lmiuix/animation/property/FloatProperty;

    .line 42
    invoke-virtual {p0, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_34

    .line 48
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 53
    :cond_34
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_118

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v5, "----- removeRunningInfo, pending = "

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    const/4 v4, 0x7

    .line 77
    new-array v4, v4, [Ljava/lang/Object;

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v6, "removed = "

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    aput-object v5, v4, v2

    .line 98
    const-string v5, "id = "

    .line 100
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v5

    .line 104
    iget v6, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v5

    .line 113
    aput-object v5, v4, v1

    .line 115
    const/4 v1, 0x2

    .line 116
    const-string v5, "key = "

    .line 118
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object v5

    .line 122
    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v6, " "

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 137
    move-result v6

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v5

    .line 145
    aput-object v5, v4, v1

    .line 147
    const/4 v1, 0x3

    .line 148
    const-string v5, "mRunningInfo.size = "

    .line 150
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object v5

    .line 154
    iget-object v6, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 159
    move-result v6

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v5

    .line 167
    aput-object v5, v4, v1

    .line 169
    const/4 v1, 0x4

    .line 170
    const-string v5, "info.startTime = "

    .line 172
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    move-result-object v5

    .line 176
    iget-wide v6, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 178
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    aput-object p1, v4, v1

    .line 187
    const/4 p1, 0x5

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v5, "isAnimRunning = "

    .line 195
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    aput-object v1, v4, p1

    .line 207
    const/4 p1, 0x6

    .line 208
    const-string v1, "target = "

    .line 210
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-result-object v1

    .line 214
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    aput-object v1, v4, p1

    .line 225
    invoke-static {p2, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 233
    move-result p1

    .line 234
    if-lez p1, :cond_118

    .line 236
    iget-object p1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 238
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 245
    move-result-object p1

    .line 246
    :goto_f5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_118

    .line 252
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    move-result-object p2

    .line 256
    check-cast p2, Lmiuix/animation/internal/TransitionInfo;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v3, "------ after remove resetRunInfo = "

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p2

    .line 275
    new-array v1, v2, [Ljava/lang/Object;

    .line 277
    invoke-static {p2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    goto :goto_f5

    .line 281
    :cond_118
    return v0
.end method

.method public setTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    return-void
.end method

.method public setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 8

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2f

    .line 7
    const-string v0, "setTo, target = "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    const/4 v2, 0x0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v4, "to = "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v1, v2

    .line 45
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_2f
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x96

    .line 58
    if-le v0, v1, :cond_43

    .line 60
    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 62
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 64
    invoke-virtual {p2, v0, p1}, Lmiuix/animation/internal/RunnerHandler;->addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 71
    :goto_46
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;F)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 4
    move-result-object p1

    .line 5
    float-to-double v0, p2

    .line 6
    iput-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 8
    return-void
.end method

.method public setupTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1d

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "-- setupTransition "

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    new-array v2, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 44
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V

    .line 47
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 49
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 51
    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 53
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 55
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 61
    iget-object v2, v2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 63
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_5f

    .line 69
    if-eqz v0, :cond_5f

    .line 71
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 73
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 84
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 86
    const/4 v2, 0x4

    .line 87
    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 89
    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 96
    :cond_5f
    return-void
.end method

.method public startAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_e

    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "- AnimManager.startAnim "

    .line 12
    invoke-static {v2, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_e
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->pendState(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2b

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ".startAnim, pendState"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 44
    :cond_2b
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 46
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 68
    const/4 v2, 0x1

    .line 69
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 71
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method

.method public update(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 3
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/TargetHandler;->runUpdate(Z)V

    .line 8
    return-void
.end method
