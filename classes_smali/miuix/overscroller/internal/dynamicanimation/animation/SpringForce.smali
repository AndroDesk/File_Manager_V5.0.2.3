.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field private static final MOVE_STOP_PHYSICAL_DISTANCE:F = 0.6f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field public mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field public mNaturalFreq:D

.field public mTimeRatio:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L  # 1500.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide v0, 0x408f400000000000L  # 1000.0

    .line 4
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 6
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 7
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L  # 1500.0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 10
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide v0, 0x408f400000000000L  # 1000.0

    .line 11
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 13
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 14
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v0, p1

    .line 15
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-void
.end method

.method private init()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 8
    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 13
    cmpl-double v0, v0, v2

    .line 15
    if-eqz v0, :cond_50

    .line 17
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 21
    cmpl-double v4, v0, v2

    .line 23
    if-lez v4, :cond_37

    .line 25
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 28
    mul-double/2addr v4, v6

    .line 29
    mul-double/2addr v0, v0

    .line 30
    sub-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    move-result-wide v0

    .line 35
    mul-double/2addr v0, v6

    .line 36
    add-double/2addr v0, v4

    .line 37
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 39
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 41
    neg-double v4, v0

    .line 42
    iget-wide v6, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 44
    mul-double/2addr v4, v6

    .line 45
    mul-double/2addr v0, v0

    .line 46
    sub-double/2addr v0, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 50
    move-result-wide v0

    .line 51
    mul-double/2addr v0, v6

    .line 52
    sub-double/2addr v4, v0

    .line 53
    iput-wide v4, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 55
    goto :goto_4c

    .line 56
    :cond_37
    const-wide/16 v4, 0x0

    .line 58
    cmpl-double v4, v0, v4

    .line 60
    if-ltz v4, :cond_4c

    .line 62
    cmpg-double v4, v0, v2

    .line 64
    if-gez v4, :cond_4c

    .line 66
    iget-wide v4, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 68
    mul-double/2addr v0, v0

    .line 69
    sub-double/2addr v2, v0

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 73
    move-result-wide v0

    .line 74
    mul-double/2addr v0, v4

    .line 75
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 77
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 80
    return-void

    .line 81
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 8
    mul-double v2, v0, v0

    .line 10
    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 12
    mul-double/2addr v0, v4

    .line 13
    iget-wide v4, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 15
    mul-double/2addr v0, v4

    .line 16
    neg-double v2, v2

    .line 17
    float-to-double v4, p1

    .line 18
    mul-double/2addr v2, v4

    .line 19
    float-to-double p1, p2

    .line 20
    mul-double/2addr v0, p1

    .line 21
    sub-double/2addr v2, v0

    .line 22
    double-to-float p1, v2

    .line 23
    return p1
.end method

.method public getDampingRatio()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getFinalPosition()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getStiffness()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 3
    mul-double/2addr v0, v0

    .line 4
    double-to-float v0, v0

    .line 5
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 7

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 4
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    iget-wide v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 8
    cmpg-double p2, v0, v2

    .line 10
    if-gez p2, :cond_1d

    .line 12
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 15
    move-result p2

    .line 16
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 24
    cmpg-double p1, p1, v0

    .line 26
    if-gez p1, :cond_1d

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public setDampingRatio(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_c

    .line 6
    float-to-double v0, p1

    .line 7
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 12
    return-object p0

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "Damping ratio must be non-negative"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public setFinalPosition(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 4
    return-object p0
.end method

.method public setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-lez v0, :cond_10

    .line 6
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v0, "Spring stiffness constant must be positive."

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public setTimeRatio(D)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    .line 3
    return-object p0
.end method

.method public setValueThreshold(D)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 7
    const-wide v0, 0x404f400000000000L  # 62.5

    .line 12
    mul-double/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 15
    return-void
.end method

.method public updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->init()V

    .line 6
    move-wide/from16 v1, p5

    .line 8
    long-to-double v1, v1

    .line 9
    iget-wide v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    .line 11
    div-double/2addr v1, v3

    .line 12
    iget-wide v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 14
    sub-double v3, p1, v3

    .line 16
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 20
    cmpl-double v9, v5, v7

    .line 22
    const-wide v10, 0x4005bf0a8b145769L  # Math.E

    .line 27
    if-lez v9, :cond_53

    .line 29
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 31
    mul-double v7, v5, v3

    .line 33
    sub-double v7, v7, p3

    .line 35
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 37
    sub-double v14, v5, v12

    .line 39
    div-double/2addr v7, v14

    .line 40
    sub-double v7, v3, v7

    .line 42
    mul-double/2addr v3, v5

    .line 43
    sub-double v3, v3, p3

    .line 45
    sub-double v12, v5, v12

    .line 47
    div-double/2addr v3, v12

    .line 48
    mul-double/2addr v5, v1

    .line 49
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide v5

    .line 53
    mul-double/2addr v5, v7

    .line 54
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 56
    mul-double/2addr v12, v1

    .line 57
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 60
    move-result-wide v12

    .line 61
    mul-double/2addr v12, v3

    .line 62
    add-double/2addr v12, v5

    .line 63
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 65
    mul-double/2addr v7, v5

    .line 66
    mul-double/2addr v5, v1

    .line 67
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 70
    move-result-wide v5

    .line 71
    mul-double/2addr v5, v7

    .line 72
    iget-wide v7, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 74
    mul-double/2addr v3, v7

    .line 75
    mul-double/2addr v7, v1

    .line 76
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 79
    move-result-wide v1

    .line 80
    mul-double/2addr v1, v3

    .line 81
    add-double/2addr v1, v5

    .line 82
    goto/16 :goto_cf

    .line 84
    :cond_53
    cmpl-double v9, v5, v7

    .line 86
    if-nez v9, :cond_7e

    .line 88
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 90
    mul-double v7, v5, v3

    .line 92
    add-double v7, v7, p3

    .line 94
    mul-double v12, v7, v1

    .line 96
    add-double/2addr v12, v3

    .line 97
    neg-double v3, v5

    .line 98
    mul-double/2addr v3, v1

    .line 99
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 102
    move-result-wide v3

    .line 103
    mul-double/2addr v3, v12

    .line 104
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 106
    neg-double v5, v5

    .line 107
    mul-double/2addr v5, v1

    .line 108
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 111
    move-result-wide v5

    .line 112
    mul-double/2addr v5, v12

    .line 113
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 115
    neg-double v14, v12

    .line 116
    mul-double/2addr v5, v14

    .line 117
    neg-double v12, v12

    .line 118
    mul-double/2addr v12, v1

    .line 119
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 122
    move-result-wide v1

    .line 123
    mul-double/2addr v1, v7

    .line 124
    add-double/2addr v1, v5

    .line 125
    move-wide v12, v3

    .line 126
    goto :goto_cf

    .line 127
    :cond_7e
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 129
    div-double/2addr v7, v12

    .line 130
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 132
    mul-double v14, v5, v12

    .line 134
    mul-double/2addr v14, v3

    .line 135
    add-double v14, v14, p3

    .line 137
    mul-double/2addr v14, v7

    .line 138
    neg-double v5, v5

    .line 139
    mul-double/2addr v5, v12

    .line 140
    mul-double/2addr v5, v1

    .line 141
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 144
    move-result-wide v5

    .line 145
    iget-wide v7, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 147
    mul-double/2addr v7, v1

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 151
    move-result-wide v7

    .line 152
    mul-double/2addr v7, v3

    .line 153
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 155
    mul-double/2addr v12, v1

    .line 156
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 159
    move-result-wide v12

    .line 160
    mul-double/2addr v12, v14

    .line 161
    add-double/2addr v12, v7

    .line 162
    mul-double/2addr v12, v5

    .line 163
    iget-wide v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 165
    neg-double v7, v5

    .line 166
    mul-double/2addr v7, v12

    .line 167
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 169
    mul-double/2addr v7, v10

    .line 170
    neg-double v9, v10

    .line 171
    mul-double/2addr v9, v5

    .line 172
    mul-double/2addr v9, v1

    .line 173
    const-wide v5, 0x4005bf0a8b145769L  # Math.E

    .line 178
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 181
    move-result-wide v5

    .line 182
    iget-wide v9, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 184
    move-wide/from16 p1, v12

    .line 186
    neg-double v11, v9

    .line 187
    mul-double/2addr v11, v3

    .line 188
    mul-double/2addr v9, v1

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 192
    move-result-wide v3

    .line 193
    mul-double/2addr v3, v11

    .line 194
    iget-wide v9, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 196
    mul-double/2addr v14, v9

    .line 197
    mul-double/2addr v9, v1

    .line 198
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 201
    move-result-wide v1

    .line 202
    mul-double/2addr v1, v14

    .line 203
    add-double/2addr v1, v3

    .line 204
    mul-double/2addr v1, v5

    .line 205
    add-double/2addr v1, v7

    .line 206
    move-wide/from16 v12, p1

    .line 208
    :goto_cf
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 211
    move-result-wide v3

    .line 212
    const-wide v5, 0x3fe3333340000000L  # 0.6000000238418579

    .line 217
    cmpg-double v3, v3, v5

    .line 219
    const-wide/16 v4, 0x0

    .line 221
    if-gez v3, :cond_e0

    .line 223
    move-wide v1, v4

    .line 224
    move-wide v12, v1

    .line 225
    :cond_e0
    iget-object v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 227
    iget-wide v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 229
    add-double/2addr v12, v4

    .line 230
    double-to-float v4, v12

    .line 231
    iput v4, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 233
    double-to-float v1, v1

    .line 234
    iput v1, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 236
    return-object v3
.end method
