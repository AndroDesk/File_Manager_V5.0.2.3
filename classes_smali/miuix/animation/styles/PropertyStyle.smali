.class public Lmiuix/animation/styles/PropertyStyle;
.super Ljava/lang/Object;
.source "PropertyStyle.java"


# static fields
.field private static final LONGEST_DURATION:J = 0x2710L

.field public static checker:Lmiuix/animation/physics/EquilibriumChecker;

.field public static final mCheckerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/physics/EquilibriumChecker;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

.field public static final sFriction:Lmiuix/animation/physics/FrictionOperator;

.field public static final sSpring:Lmiuix/animation/physics/SpringOperator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringOperator;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sSpring:Lmiuix/animation/physics/SpringOperator;

    .line 8
    new-instance v0, Lmiuix/animation/physics/AccelerateOperator;

    .line 10
    invoke-direct {v0}, Lmiuix/animation/physics/AccelerateOperator;-><init>()V

    .line 13
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    .line 15
    new-instance v0, Lmiuix/animation/physics/FrictionOperator;

    .line 17
    invoke-direct {v0}, Lmiuix/animation/physics/FrictionOperator;-><init>()V

    .line 20
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 24
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 27
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->mCheckerLocal:Ljava/lang/ThreadLocal;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V
    .registers 16

    .line 1
    iget-wide v2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 3
    sub-long v2, p2, v2

    .line 5
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 7
    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 9
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-wide v4, p4

    .line 18
    move-wide v6, p6

    .line 19
    invoke-static/range {v0 .. v7}, Lmiuix/animation/styles/PropertyStyle;->updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-static {p1, v2, v3}, Lmiuix/animation/styles/PropertyStyle;->updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;J)V

    .line 26
    :goto_19
    return-void
.end method

.method private static doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v11, p1

    .line 5
    iget-wide v13, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 7
    iget-object v1, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 9
    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 11
    invoke-static {v1}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_98

    .line 17
    instance-of v2, v1, Lmiuix/animation/physics/SpringOperator;

    .line 19
    if-eqz v2, :cond_1e

    .line 21
    iget-wide v2, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 23
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1e

    .line 29
    goto/16 :goto_98

    .line 31
    :cond_1e
    iget-object v2, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 33
    iget-object v2, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 35
    const/4 v3, 0x0

    .line 36
    aget-wide v4, v2, v3

    .line 38
    const/4 v6, 0x1

    .line 39
    aget-wide v7, v2, v6

    .line 41
    const/4 v2, 0x2

    .line 42
    new-array v10, v2, [D

    .line 44
    move-wide v15, v7

    .line 45
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 47
    aput-wide v6, v10, v3

    .line 49
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 51
    const/4 v2, 0x1

    .line 52
    aput-wide v6, v10, v2

    .line 54
    move-wide v2, v13

    .line 55
    move-wide v6, v15

    .line 56
    move-wide/from16 v8, p1

    .line 58
    invoke-interface/range {v1 .. v10}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    .line 61
    move-result-wide v1

    .line 62
    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 64
    iget-wide v5, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 66
    add-double/2addr v5, v1

    .line 67
    const-wide/high16 v7, 0x3fe0000000000000L  # 0.5

    .line 69
    mul-double/2addr v5, v7

    .line 70
    mul-double/2addr v5, v11

    .line 71
    add-double/2addr v5, v3

    .line 72
    iput-wide v5, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 74
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_95

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v4, "doPhysicsCalculation data.value isInfinite! startVelocity "

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, " velocity "

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    const-string v4, " data.ease.parameters "

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 108
    iget-object v4, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, " delta "

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, " data.targetValue "

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide v4, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 131
    const-string v4, " data.velocity "

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-wide v4, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 138
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    const-string v4, "miuix_anim"

    .line 147
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_95
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 152
    goto :goto_a0

    .line 153
    :cond_98
    :goto_98
    iget-wide v1, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 155
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 157
    const-wide/16 v1, 0x0

    .line 159
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 161
    :goto_a0
    return-void
.end method

.method public static getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;
    .registers 2

    .line 1
    const/4 v0, -0x4

    .line 2
    if-eq p0, v0, :cond_11

    .line 4
    const/4 v0, -0x3

    .line 5
    if-eq p0, v0, :cond_e

    .line 7
    const/4 v0, -0x2

    .line 8
    if-eq p0, v0, :cond_b

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_b
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sSpring:Lmiuix/animation/physics/SpringOperator;

    .line 14
    return-object p0

    .line 15
    :cond_e
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    .line 17
    return-object p0

    .line 18
    :cond_11
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    .line 20
    return-object p0
.end method

.method public static getVelocityThreshold()F
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/EquilibriumChecker;->getVelocityThreshold()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z
    .registers 15

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move-wide v2, p3

    .line 4
    move-wide v4, p5

    .line 5
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/physics/EquilibriumChecker;->isAtEquilibrium(IDD)Z

    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p0, :cond_38

    .line 14
    const-wide/16 p3, 0x2710

    .line 16
    cmp-long p3, p7, p3

    .line 18
    if-lez p3, :cond_38

    .line 20
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_37

    .line 26
    const-string p0, "animation for "

    .line 28
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " stopped for running time too long, totalTime = "

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    new-array p1, p2, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_37
    move p0, p2

    .line 57
    :cond_38
    return p0
.end method

.method private static isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 3
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 5
    const/4 v0, -0x2

    .line 6
    if-ne p0, v0, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method private static setFinishValue(Lmiuix/animation/internal/AnimData;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/PropertyStyle;->isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 10
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 12
    return-void
.end method

.method private static updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;J)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 3
    check-cast v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 5
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 11
    cmp-long v4, p1, v2

    .line 13
    if-gez v4, :cond_1b

    .line 15
    long-to-float v4, p1

    .line 16
    long-to-float v2, v2

    .line 17
    div-float/2addr v4, v2

    .line 18
    invoke-interface {v1, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 21
    move-result v2

    .line 22
    float-to-double v2, v2

    .line 23
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 25
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    const/4 v2, 0x3

    .line 29
    invoke-virtual {p0, v2}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 32
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 34
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 36
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 38
    :goto_25
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_5d

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "updateInterpolatorAnim data.value isInfinite!  data.ease "

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, " totalTime "

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, " interpolator "

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, " data.progress "

    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-wide p0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 82
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    const-string p1, "miuix_anim"

    .line 91
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5d
    return-void
.end method

.method private static updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V
    .registers 23

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-wide/from16 v1, p4

    .line 5
    move-wide/from16 v3, p6

    .line 7
    cmp-long v5, v1, v3

    .line 9
    if-lez v5, :cond_12

    .line 11
    long-to-float v1, v1

    .line 12
    long-to-float v2, v3

    .line 13
    div-float/2addr v1, v2

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 17
    move-result v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x1

    .line 20
    :goto_13
    long-to-double v2, v3

    .line 21
    const-wide v4, 0x408f400000000000L  # 1000.0

    .line 26
    div-double/2addr v2, v4

    .line 27
    sget-object v4, Lmiuix/animation/styles/PropertyStyle;->mCheckerLocal:Ljava/lang/ThreadLocal;

    .line 29
    const-class v5, Lmiuix/animation/physics/EquilibriumChecker;

    .line 31
    invoke-static {v4, v5}, Lmiuix/animation/utils/CommonUtils;->getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lmiuix/animation/physics/EquilibriumChecker;

    .line 37
    sput-object v4, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 39
    iget-object v5, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 41
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 43
    move-object v8, p0

    .line 44
    invoke-virtual {v4, p0, v5, v6, v7}, Lmiuix/animation/physics/EquilibriumChecker;->init(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    .line 47
    const/4 v4, 0x0

    .line 48
    move v5, v4

    .line 49
    :goto_30
    if-ge v5, v1, :cond_61

    .line 51
    invoke-static {v0, v2, v3}, Lmiuix/animation/styles/PropertyStyle;->doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V

    .line 54
    sget-object v6, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 56
    iget-object v7, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 58
    iget-object v8, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 60
    iget v8, v8, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 62
    iget-wide v9, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 64
    iget-wide v11, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 66
    move-wide/from16 v13, p2

    .line 68
    invoke-static/range {v6 .. v14}, Lmiuix/animation/styles/PropertyStyle;->isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z

    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_5e

    .line 74
    const/4 v1, 0x3

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 78
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_5a

    .line 84
    new-array v1, v4, [Ljava/lang/Object;

    .line 86
    const-string v2, "----- updatePhysicsAnim data.setOp(AnimTask.OP_END)"

    .line 88
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_5a
    invoke-static/range {p1 .. p1}, Lmiuix/animation/styles/PropertyStyle;->setFinishValue(Lmiuix/animation/internal/AnimData;)V

    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_30

    .line 98
    :cond_61
    :goto_61
    return-void
.end method
