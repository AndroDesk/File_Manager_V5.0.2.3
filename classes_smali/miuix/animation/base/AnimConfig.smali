.class public Lmiuix/animation/base/AnimConfig;
.super Ljava/lang/Object;
.source "AnimConfig.java"


# static fields
.field public static final FLAG_DELTA:J = 0x1L

.field public static final FLAG_INIT:J = 0x2L

.field public static final FLAG_INT:J = 0x4L

.field public static final TINT_ALPHA:I = 0x0

.field public static final TINT_AUTO:I = -0x1

.field public static final TINT_OPAQUE:I = 0x1

.field public static final TINT_REGION_USER_DEFINED:I = 0x3

.field public static final sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field public fromSpeed:F

.field public final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/base/AnimSpecialConfig;",
            ">;"
        }
    .end annotation
.end field

.field public minDuration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public tintMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_e

    .line 7
    const/4 v1, -0x2

    .line 8
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 14
    return-void

    .line 15
    :array_e
    .array-data 4
        0x3f59999a  # 0.85f
        0x3e99999a  # 0.3f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-nez p1, :cond_1c

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    goto :goto_21

    :cond_1c
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    :goto_21
    return-void
.end method

.method private queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 4

    .line 4
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    if-nez v0, :cond_16

    if-eqz p2, :cond_16

    .line 5
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 6
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method private queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_4
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 3
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    return-void
.end method

.method public clear()V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 8
    iget-object v3, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 10
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 13
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 15
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 17
    const v2, 0x7f7fffff  # Float.MAX_VALUE

    .line 20
    iput v2, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 22
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 27
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    :cond_21
    return-void
.end method

.method public copy(Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_35

    .line 3
    if-eq p1, p0, :cond_35

    .line 5
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 7
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 9
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 11
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 13
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 15
    iget-object v1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 24
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 26
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 28
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 30
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 32
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 34
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 36
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 38
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 40
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 42
    if-eqz v0, :cond_35

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 49
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_35
    return-void
.end method

.method public getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_9

    .line 4
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 6
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 19
    :goto_12
    return-object p0
.end method

.method public setDelay(J)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 3
    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 2
    invoke-static {p1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setFromSpeed(F)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 3
    return-object p0
.end method

.method public setMinDuration(J)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 3
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 4

    if-eqz p2, :cond_8

    .line 14
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 15
    :cond_8
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 13

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 4
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 4

    if-eqz p2, :cond_c

    .line 12
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 13
    :cond_c
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 13

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 8
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V
    .registers 8

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_e

    .line 10
    invoke-virtual {p1, p3, p4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 11
    :cond_e
    array-length p2, p5

    if-lez p2, :cond_17

    const/4 p2, 0x0

    aget p2, p5, p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    :cond_17
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AnimConfig{delay="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", minDuration="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", ease="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", fromSpeed="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", tintMode="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", tag="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", flags="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", listeners="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", specialNameMap = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 89
    const-string v2, "    "

    .line 91
    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v1, 0x7d

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method
