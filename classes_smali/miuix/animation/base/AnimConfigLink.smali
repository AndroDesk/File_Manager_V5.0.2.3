.class public Lmiuix/animation/base/AnimConfigLink;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final mHeadConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 19
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 21
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 24
    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 26
    return-void
.end method

.method private doClear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 11
    return-void
.end method

.method public static varargs linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_14

    .line 11
    aget-object v4, p0, v3

    .line 13
    new-array v5, v2, [Z

    .line 15
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_8

    .line 21
    :cond_14
    return-object v0
.end method


# virtual methods
.method public varargs add(Lmiuix/animation/base/AnimConfig;[Z)V
    .registers 4

    if-eqz p1, :cond_22

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    array-length v0, p2

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_1d

    .line 3
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2, p1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/base/AnimConfig;)V

    .line 4
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 5
    :cond_1d
    iget-object p2, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public varargs add(Lmiuix/animation/base/AnimConfigLink;[Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-virtual {p0, v0, p2}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public addTo(Lmiuix/animation/base/AnimConfig;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_5c

    .line 11
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/animation/base/AnimConfig;

    .line 19
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 21
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 23
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 29
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 31
    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 33
    if-eqz v3, :cond_27

    .line 35
    sget-object v4, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 37
    if-eq v3, v4, :cond_27

    .line 39
    move-object v2, v3

    .line 40
    :cond_27
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 43
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 45
    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 52
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 54
    or-long/2addr v2, v4

    .line 55
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 57
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 59
    iget v3, v1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 61
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimConfigUtils;->chooseSpeed(FF)F

    .line 64
    move-result v2

    .line 65
    iput v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 67
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 69
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 71
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 74
    move-result-wide v2

    .line 75
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 77
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 79
    iget v3, v1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result v2

    .line 85
    iput v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 87
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V

    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 92
    goto :goto_8

    .line 93
    :cond_5c
    return-void
.end method

.method public clear()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfigLink;->doClear()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public copy(Lmiuix/animation/base/AnimConfigLink;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfigLink;->doClear()V

    .line 4
    if-eqz p1, :cond_c

    .line 6
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 8
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_c
    return-void
.end method

.method public getHead()Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 11
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/animation/base/AnimConfig;

    .line 25
    return-object v0
.end method

.method public remove(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1b

    .line 3
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1b

    .line 16
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 18
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 21
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1b
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AnimConfigLink{id = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", configList="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/16 v1, 0x7d

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
