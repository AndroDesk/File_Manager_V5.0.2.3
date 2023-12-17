.class public Lmiuix/animation/controller/AnimState;
.super Ljava/lang/Object;
.source "AnimState.java"


# static fields
.field public static final FLAG_IN_TOUCH:J = 0x4L

.field public static final FLAG_PARALLEL:J = 0x2L

.field public static final FLAG_QUEUE:J = 0x1L

.field private static final STEP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TAG_"

.field public static final VIEW_POS:I = 0xf42a4

.field public static final VIEW_SIZE:I = 0xf4240

.field private static final sId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public flags:J

.field public final isTemporary:Z

.field private final mConfig:Lmiuix/animation/base/AnimConfig;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTag:Ljava/lang/Object;

.field public tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

.field public tempValueProperty:Lmiuix/animation/property/ValueProperty;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/controller/AnimState;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/property/ValueProperty;

    const-string v1, ""

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->tempValueProperty:Lmiuix/animation/property/ValueProperty;

    .line 5
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, v1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

    .line 6
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 9
    iput-boolean p2, p0, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    return-void
.end method

.method public static alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/controller/AnimState;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_34

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lmiuix/animation/listener/UpdateInfo;

    .line 17
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 19
    invoke-virtual {p0, v2}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_4

    .line 25
    iget-boolean v2, v1, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 27
    if-eqz v2, :cond_28

    .line 29
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 31
    iget-object v1, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 33
    iget-wide v3, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 35
    double-to-int v1, v3

    .line 36
    int-to-double v3, v1

    .line 37
    invoke-virtual {p0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    goto :goto_4

    .line 41
    :cond_28
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 43
    iget-object v1, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 45
    iget-wide v3, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 47
    double-to-float v1, v3

    .line 48
    float-to-double v3, v1

    .line 49
    invoke-virtual {p0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 52
    goto :goto_4

    .line 53
    :cond_34
    const-class v0, Ljava/util/ArrayList;

    .line 55
    const/4 v1, 0x0

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v1

    .line 72
    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_6a

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    instance-of v3, v2, Lmiuix/animation/property/FloatProperty;

    .line 84
    if-eqz v3, :cond_5d

    .line 86
    move-object v3, v2

    .line 87
    check-cast v3, Lmiuix/animation/property/FloatProperty;

    .line 89
    invoke-static {p1, v3}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 92
    move-result-object v3

    .line 93
    goto :goto_64

    .line 94
    :cond_5d
    move-object v3, v2

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-static {p1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 100
    move-result-object v3

    .line 101
    :goto_64
    if-nez v3, :cond_47

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_47

    .line 107
    :cond_6a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p1

    .line 111
    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7c

    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 124
    goto :goto_6e

    .line 125
    :cond_7c
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method private append(Lmiuix/animation/controller/AnimState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    iget-object v1, p1, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 15
    iget-object p1, p1, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    return-void
.end method

.method private getMapValue(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Double;

    .line 9
    if-nez v0, :cond_1d

    .line 11
    instance-of v1, p1, Lmiuix/animation/property/FloatProperty;

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 17
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 19
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Ljava/lang/Double;

    .line 30
    :cond_1d
    return-object v0
.end method

.method private getProperValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 12

    .line 1
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_24

    .line 13
    const-wide v3, 0x412e848000000000L  # 1000000.0

    .line 18
    cmpl-double v3, p3, v3

    .line 20
    if-eqz v3, :cond_24

    .line 22
    const-wide v3, 0x412e854800000000L  # 1000100.0

    .line 27
    cmpl-double v3, p3, v3

    .line 29
    if-eqz v3, :cond_24

    .line 31
    instance-of v3, p2, Lmiuix/animation/property/ISpecificProperty;

    .line 33
    if-eqz v3, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    return-wide p3

    .line 37
    :cond_24
    :goto_24
    invoke-static {p1, p2, p3, p4}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 40
    move-result-wide v3

    .line 41
    if-eqz v2, :cond_3a

    .line 43
    invoke-static {p3, p4}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3a

    .line 49
    const-wide/16 v5, -0x2

    .line 51
    and-long/2addr v0, v5

    .line 52
    invoke-virtual {p0, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    .line 55
    add-double/2addr v3, p3

    .line 56
    invoke-direct {p0, p2, v3, v4}, Lmiuix/animation/controller/AnimState;->setMapValue(Ljava/lang/Object;D)V

    .line 59
    :cond_3a
    return-wide v3
.end method

.method private setMapValue(Ljava/lang/Object;D)V
    .registers 7

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lmiuix/animation/property/FloatProperty;

    .line 10
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_21

    .line 20
    iget-object p1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 22
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_2a

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 36
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object p2

    .line 40
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_2a
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;
    .registers 7

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, " trace: "

    const-string v2, "miuix_anim"

    if-eqz v0, :cond_2e

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "warning! the add value is NaN, will not add to AnimState. key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 21
    :cond_2e
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "warning! the add value is Infinite, will not add to AnimState. key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 25
    :cond_58
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->setMapValue(Ljava/lang/Object;D)V

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;F[J)Lmiuix/animation/controller/AnimState;
    .registers 6

    .line 1
    array-length v0, p3

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p3, v0

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :cond_9
    float-to-double p2, p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Ljava/lang/String;I[J)Lmiuix/animation/controller/AnimState;
    .registers 9

    .line 4
    array-length v0, p3

    const-wide/16 v1, 0x4

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 5
    aget-wide v3, p3, v0

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    goto :goto_17

    .line 6
    :cond_e
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    move-result-wide v3

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :goto_17
    int-to-double p2, p2

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;
    .registers 6

    .line 10
    array-length v0, p3

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 11
    aget-wide v0, p3, v0

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :cond_9
    float-to-double p2, p2

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;
    .registers 9

    .line 13
    array-length v0, p3

    const-wide/16 v1, 0x4

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 14
    aget-wide v3, p3, v0

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    goto :goto_17

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    move-result-wide v3

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :goto_17
    int-to-double p2, p2

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;
    .registers 4

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;
    .registers 4

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    instance-of v1, p1, Lmiuix/animation/property/FloatProperty;

    .line 17
    if-eqz v1, :cond_1f

    .line 19
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 21
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 23
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    return v0
.end method

.method public get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D
    .registers 5

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    move-result-wide v0

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->getProperValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 14
    move-result-wide p1

    .line 15
    return-wide p1

    .line 16
    :cond_f
    const-wide p1, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 21
    return-wide p1
.end method

.method public getConfig()Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    return-object v0
.end method

.method public getConfigFlags(Ljava/lang/Object;)J
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 7
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    check-cast p1, Ljava/lang/String;

    .line 14
    :goto_d
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_18

    .line 22
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const-wide/16 v0, 0x0

    .line 27
    :goto_1a
    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 4
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    goto :goto_e

    :cond_b
    const p1, 0x7f7fffff  # Float.MAX_VALUE

    :goto_e
    return p1
.end method

.method public getFloat(Lmiuix/animation/property/FloatProperty;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    goto :goto_e

    :cond_b
    const p1, 0x7f7fffff  # Float.MAX_VALUE

    :goto_e
    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    .line 3
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->getInt(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p1

    return p1
.end method

.method public getInt(Lmiuix/animation/property/IIntValueProperty;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    goto :goto_e

    :cond_b
    const p1, 0x7fffffff

    :goto_e
    return p1
.end method

.method public getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .registers 6

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 7
    return-object p1

    .line 8
    :cond_7
    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x4

    .line 16
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1b

    .line 22
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    .line 24
    invoke-direct {v0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    new-instance v0, Lmiuix/animation/property/ValueProperty;

    .line 30
    invoke-direct {v0, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_20
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .registers 6

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 7
    return-object p1

    .line 8
    :cond_7
    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x4

    .line 16
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_18

    .line 22
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->tempValueProperty:Lmiuix/animation/property/ValueProperty;

    .line 27
    :goto_1a
    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueProperty;->setName(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 12
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 14
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    return-object p0
.end method

.method public set(Lmiuix/animation/controller/AnimState;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p1, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->append(Lmiuix/animation/controller/AnimState;)V

    .line 12
    return-void
.end method

.method public setConfigFlag(Ljava/lang/Object;J)V
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 7
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    check-cast p1, Ljava/lang/String;

    .line 14
    :goto_d
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 19
    move-result-object p1

    .line 20
    iput-wide p2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 22
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_3

    .line 3
    goto :goto_16

    .line 4
    :cond_3
    const-string p1, "TAG_"

    .line 6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lmiuix/animation/controller/AnimState;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    :goto_16
    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "\nAnimState{mTag=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x27

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", flags:"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-wide v1, p0, Lmiuix/animation/controller/AnimState;->flags:J

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mConfig:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", mMaps="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 44
    const-string v2, "    "

    .line 46
    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const/16 v1, 0x7d

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
