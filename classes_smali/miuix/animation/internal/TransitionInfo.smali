.class Lmiuix/animation/internal/TransitionInfo;
.super Lmiuix/animation/utils/LinkNode;
.source "TransitionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/utils/LinkNode<",
        "Lmiuix/animation/internal/TransitionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field public volatile config:Lmiuix/animation/base/AnimConfig;

.field public volatile from:Lmiuix/animation/controller/AnimState;

.field public final id:I

.field public volatile key:Ljava/lang/Object;

.field private final mAnimStats:Lmiuix/animation/internal/AnimStats;

.field public volatile startTime:J

.field public final tag:Ljava/lang/Object;

.field public final target:Lmiuix/animation/IAnimTarget;

.field public volatile to:Lmiuix/animation/controller/AnimState;

.field public volatile updateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 13
    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    return-void
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    .line 4
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 12
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 14
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 17
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 26
    new-instance v1, Lmiuix/animation/internal/AnimStats;

    .line 28
    invoke-direct {v1}, Lmiuix/animation/internal/AnimStats;-><init>()V

    .line 31
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 33
    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 35
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 41
    invoke-direct {p0, p3}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 47
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 49
    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 55
    iget-boolean v1, p3, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 57
    if-eqz v1, :cond_50

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 80
    goto :goto_52

    .line 81
    :cond_50
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 83
    :goto_52
    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lmiuix/animation/internal/TransitionInfo;->initValueForColorProperty()V

    .line 89
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 91
    invoke-virtual {p3}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 98
    if-eqz p4, :cond_68

    .line 100
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 102
    invoke-virtual {p4, p2}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 105
    :cond_68
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 108
    move-result-object p1

    .line 109
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 111
    iget-object p3, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 113
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 116
    return-void
.end method

.method public static decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V
    .registers 7

    .line 1
    if-eqz p0, :cond_1d

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p3, v0, :cond_1d

    .line 6
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 8
    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 10
    const-wide/16 v1, 0x0

    .line 12
    cmp-long p2, p2, v1

    .line 14
    if-lez p2, :cond_1d

    .line 16
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 18
    iget p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 20
    if-lez p2, :cond_1d

    .line 22
    sub-int/2addr p2, v0

    .line 23
    iput p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 25
    iget p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 27
    sub-int/2addr p0, v0

    .line 28
    iput p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 30
    :cond_1d
    return-void
.end method

.method private getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    iget-boolean v0, p1, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 5
    if-eqz v0, :cond_f

    .line 7
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    .line 15
    return-object v0

    .line 16
    :cond_f
    return-object p1
.end method

.method private initValueForColorProperty()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4d

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 28
    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 31
    move-result-object v1

    .line 32
    instance-of v2, v1, Lmiuix/animation/property/ColorProperty;

    .line 34
    if-nez v2, :cond_24

    .line 36
    goto :goto_f

    .line 37
    :cond_24
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 39
    const-wide v3, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 44
    invoke-static {v2, v1, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 47
    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_f

    .line 55
    :cond_36
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 57
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 59
    invoke-virtual {v2, v3, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 62
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_f

    .line 69
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 71
    check-cast v1, Lmiuix/animation/property/ColorProperty;

    .line 73
    double-to-int v2, v2

    .line 74
    invoke-virtual {v4, v1, v2}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 77
    goto :goto_f

    .line 78
    :cond_4d
    return-void
.end method


# virtual methods
.method public containsProperty(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAnimCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getAnimStats()Lmiuix/animation/internal/AnimStats;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1f

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 24
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 26
    iget-object v1, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 28
    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimStats;->add(Lmiuix/animation/internal/AnimStats;)V

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 34
    return-object v0
.end method

.method public initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V
    .registers 16

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 7
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 9
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 11
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 14
    move-result v2

    .line 15
    const-string v3, ", target = "

    .line 17
    const-string v4, " "

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v2, :cond_6b

    .line 22
    const-string v6, "-- doSetup, id = "

    .line 24
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v6

    .line 28
    iget v7, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v7, ", key = "

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 48
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 51
    move-result v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v7, ", startTime = "

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-wide v7, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 62
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v7, ", f = "

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v7, ", t = "

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v7, "\nconfig = "

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 103
    new-array v7, v5, [Ljava/lang/Object;

    .line 105
    invoke-static {v6, v7}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_6b
    new-instance v6, Ljava/util/ArrayList;

    .line 110
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v7

    .line 121
    :cond_78
    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_13a

    .line 127
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v1, v8}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 134
    move-result-object v8

    .line 135
    invoke-interface {p1, v8}, Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 138
    move-result-object v9

    .line 139
    if-nez v9, :cond_8d

    .line 141
    goto :goto_78

    .line 142
    :cond_8d
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 147
    iget-byte v10, v10, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 149
    const/4 v11, 0x5

    .line 150
    if-ne v10, v11, :cond_b4

    .line 152
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 154
    invoke-virtual {v10}, Lmiuix/animation/internal/AnimInfo;->clear()V

    .line 157
    if-eqz v2, :cond_b4

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string v12, "-- doSetup, reset updateInfo = "

    .line 166
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v10

    .line 176
    new-array v12, v5, [Ljava/lang/Object;

    .line 178
    invoke-static {v10, v12}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_b4
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 183
    iget-object v12, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 185
    invoke-virtual {v1, v12, v8}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 188
    move-result-wide v12

    .line 189
    iput-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 191
    if-eqz v0, :cond_cb

    .line 193
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 195
    iget-object v12, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 197
    invoke-virtual {v0, v12, v8}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 200
    move-result-wide v12

    .line 201
    iput-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 203
    goto :goto_df

    .line 204
    :cond_cb
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 206
    iget-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 208
    iget-object v10, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 210
    invoke-static {v10, v8, v12, v13}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 213
    move-result-wide v12

    .line 214
    invoke-static {v12, v13}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 217
    move-result v8

    .line 218
    if-nez v8, :cond_df

    .line 220
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 222
    iput-wide v12, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 224
    :cond_df
    :goto_df
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 226
    iget-byte v8, v8, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 228
    if-ne v8, v11, :cond_109

    .line 230
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 232
    iget-wide v10, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 234
    iput-wide v10, v8, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 236
    if-eqz v2, :cond_109

    .line 238
    const-string v8, "-- doSetup, after reset value = startValue "

    .line 240
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-result-object v8

    .line 244
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 246
    iget-wide v10, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 248
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v8

    .line 261
    new-array v10, v5, [Ljava/lang/Object;

    .line 263
    invoke-static {v8, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_109
    invoke-static {v9}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    .line 269
    if-eqz v2, :cond_78

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const-string v10, "-- doSetup, after handleSetToValue "

    .line 278
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    const-string v10, ", op = "

    .line 286
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v9, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 291
    iget-byte v9, v9, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 301
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v8

    .line 308
    new-array v9, v5, [Ljava/lang/Object;

    .line 310
    invoke-static {v8, v9}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    goto/16 :goto_78

    .line 315
    :cond_13a
    iput-object v6, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 317
    return-void
.end method

.method public setupTasks(Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    div-int/lit16 v1, v0, 0xfa0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result v1

    .line 14
    int-to-float v2, v0

    .line 15
    int-to-float v3, v1

    .line 16
    div-float/2addr v2, v3

    .line 17
    float-to-double v2, v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 21
    move-result-wide v2

    .line 22
    double-to-int v2, v2

    .line 23
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    move-result v3

    .line 29
    if-le v3, v1, :cond_2c

    .line 31
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    move-result v4

    .line 37
    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 44
    goto :goto_41

    .line 45
    :cond_2c
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    :goto_32
    if-ge v3, v1, :cond_41

    .line 53
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 55
    new-instance v5, Lmiuix/animation/internal/AnimTask;

    .line 57
    invoke-direct {v5}, Lmiuix/animation/internal/AnimTask;-><init>()V

    .line 60
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_32

    .line 66
    :cond_41
    :goto_41
    const/4 v1, 0x0

    .line 67
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v3

    .line 73
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_6d

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lmiuix/animation/internal/AnimTask;

    .line 85
    iput-object p0, v4, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 87
    add-int v5, v1, v2

    .line 89
    if-le v5, v0, :cond_5d

    .line 91
    sub-int v5, v0, v1

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move v5, v2

    .line 95
    :goto_5e
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/internal/AnimTask;->setup(II)V

    .line 98
    if-eqz p1, :cond_68

    .line 100
    iget-object v4, v4, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 102
    iput v5, v4, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 104
    goto :goto_6b

    .line 105
    :cond_68
    invoke-virtual {v4}, Lmiuix/animation/internal/AnimTask;->updateAnimStats()V

    .line 108
    :goto_6b
    add-int/2addr v1, v5

    .line 109
    goto :goto_48

    .line 110
    :cond_6d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "TransitionInfo{id = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", key = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", startTime = "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v1, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", target = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 53
    if-eqz v1, :cond_3b

    .line 55
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 v1, 0x0

    .line 61
    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", propSize = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 71
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", next = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v1, 0x7d

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method
