.class public final Lmiuix/animation/physics/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lmiuix/animation/physics/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

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

.field private final mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

.field public mNaturalFreq:D

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

    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 3
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 5
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 6
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/animation/physics/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/SpringForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L  # 1500.0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 9
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 11
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 12
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/animation/physics/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/SpringForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    float-to-double v0, p1

    .line 13
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    return-void
.end method

.method private init()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 8
    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 13
    cmpl-double v0, v0, v2

    .line 15
    if-eqz v0, :cond_50

    .line 17
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 21
    cmpl-double v4, v0, v2

    .line 23
    if-lez v4, :cond_37

    .line 25
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

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
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mGammaPlus:D

    .line 39
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 41
    neg-double v4, v0

    .line 42
    iget-wide v6, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

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
    iput-wide v4, p0, Lmiuix/animation/physics/SpringForce;->mGammaMinus:D

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
    iget-wide v4, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

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
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 77
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

    .line 80
    return-void

    .line 81
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    const-string v1, "Error: Final position of the spring must be set before the miuix.animation starts"

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 8
    mul-double v2, v0, v0

    .line 10
    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 12
    mul-double/2addr v0, v4

    .line 13
    iget-wide v4, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

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
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getFinalPosition()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getStiffness()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

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
    iget-wide v2, p0, Lmiuix/animation/physics/SpringForce;->mVelocityThreshold:D

    .line 8
    cmpg-double p2, v0, v2

    .line 10
    if-gez p2, :cond_1d

    .line 12
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

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
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mValueThreshold:D

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

.method public setDampingRatio(F)Lmiuix/animation/physics/SpringForce;
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
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

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

.method public setFinalPosition(F)Lmiuix/animation/physics/SpringForce;
    .registers 4

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 4
    return-object p0
.end method

.method public setStiffness(F)Lmiuix/animation/physics/SpringForce;
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
    iput-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringForce;->mInitialized:Z

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

.method public setValueThreshold(D)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lmiuix/animation/physics/SpringForce;->mValueThreshold:D

    .line 7
    const-wide v0, 0x404f400000000000L  # 62.5

    .line 12
    mul-double/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lmiuix/animation/physics/SpringForce;->mVelocityThreshold:D

    .line 15
    return-void
.end method

.method public updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Lmiuix/animation/physics/SpringForce;->init()V

    .line 6
    move-wide/from16 v1, p5

    .line 8
    long-to-double v1, v1

    .line 9
    const-wide v3, 0x408f400000000000L  # 1000.0

    .line 14
    div-double/2addr v1, v3

    .line 15
    iget-wide v3, v0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 17
    sub-double v3, p1, v3

    .line 19
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 21
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 23
    cmpl-double v9, v5, v7

    .line 25
    const-wide v10, 0x4005bf0a8b145769L  # Math.E

    .line 30
    if-lez v9, :cond_56

    .line 32
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mGammaMinus:D

    .line 34
    mul-double v7, v5, v3

    .line 36
    sub-double v7, v7, p3

    .line 38
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mGammaPlus:D

    .line 40
    sub-double v14, v5, v12

    .line 42
    div-double/2addr v7, v14

    .line 43
    sub-double v7, v3, v7

    .line 45
    mul-double/2addr v3, v5

    .line 46
    sub-double v3, v3, p3

    .line 48
    sub-double v12, v5, v12

    .line 50
    div-double/2addr v3, v12

    .line 51
    mul-double/2addr v5, v1

    .line 52
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 55
    move-result-wide v5

    .line 56
    mul-double/2addr v5, v7

    .line 57
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mGammaPlus:D

    .line 59
    mul-double/2addr v12, v1

    .line 60
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 63
    move-result-wide v12

    .line 64
    mul-double/2addr v12, v3

    .line 65
    add-double/2addr v12, v5

    .line 66
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mGammaMinus:D

    .line 68
    mul-double/2addr v7, v5

    .line 69
    mul-double/2addr v5, v1

    .line 70
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 73
    move-result-wide v5

    .line 74
    mul-double/2addr v5, v7

    .line 75
    iget-wide v7, v0, Lmiuix/animation/physics/SpringForce;->mGammaPlus:D

    .line 77
    mul-double/2addr v3, v7

    .line 78
    mul-double/2addr v7, v1

    .line 79
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 82
    move-result-wide v1

    .line 83
    mul-double/2addr v1, v3

    .line 84
    add-double/2addr v1, v5

    .line 85
    goto/16 :goto_d2

    .line 87
    :cond_56
    cmpl-double v9, v5, v7

    .line 89
    if-nez v9, :cond_81

    .line 91
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 93
    mul-double v7, v5, v3

    .line 95
    add-double v7, v7, p3

    .line 97
    mul-double v12, v7, v1

    .line 99
    add-double/2addr v12, v3

    .line 100
    neg-double v3, v5

    .line 101
    mul-double/2addr v3, v1

    .line 102
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 105
    move-result-wide v3

    .line 106
    mul-double/2addr v3, v12

    .line 107
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 109
    neg-double v5, v5

    .line 110
    mul-double/2addr v5, v1

    .line 111
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 114
    move-result-wide v5

    .line 115
    mul-double/2addr v5, v12

    .line 116
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 118
    neg-double v14, v12

    .line 119
    mul-double/2addr v5, v14

    .line 120
    neg-double v12, v12

    .line 121
    mul-double/2addr v12, v1

    .line 122
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 125
    move-result-wide v1

    .line 126
    mul-double/2addr v1, v7

    .line 127
    add-double/2addr v1, v5

    .line 128
    move-wide v12, v3

    .line 129
    goto :goto_d2

    .line 130
    :cond_81
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 132
    div-double/2addr v7, v12

    .line 133
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 135
    mul-double v14, v5, v12

    .line 137
    mul-double/2addr v14, v3

    .line 138
    add-double v14, v14, p3

    .line 140
    mul-double/2addr v14, v7

    .line 141
    neg-double v5, v5

    .line 142
    mul-double/2addr v5, v12

    .line 143
    mul-double/2addr v5, v1

    .line 144
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 147
    move-result-wide v5

    .line 148
    iget-wide v7, v0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 150
    mul-double/2addr v7, v1

    .line 151
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 154
    move-result-wide v7

    .line 155
    mul-double/2addr v7, v3

    .line 156
    iget-wide v12, v0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 158
    mul-double/2addr v12, v1

    .line 159
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 162
    move-result-wide v12

    .line 163
    mul-double/2addr v12, v14

    .line 164
    add-double/2addr v12, v7

    .line 165
    mul-double/2addr v12, v5

    .line 166
    iget-wide v5, v0, Lmiuix/animation/physics/SpringForce;->mNaturalFreq:D

    .line 168
    neg-double v7, v5

    .line 169
    mul-double/2addr v7, v12

    .line 170
    iget-wide v10, v0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 172
    mul-double/2addr v7, v10

    .line 173
    neg-double v9, v10

    .line 174
    mul-double/2addr v9, v5

    .line 175
    mul-double/2addr v9, v1

    .line 176
    const-wide v5, 0x4005bf0a8b145769L  # Math.E

    .line 181
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 184
    move-result-wide v5

    .line 185
    iget-wide v9, v0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 187
    move-wide/from16 p1, v12

    .line 189
    neg-double v11, v9

    .line 190
    mul-double/2addr v11, v3

    .line 191
    mul-double/2addr v9, v1

    .line 192
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 195
    move-result-wide v3

    .line 196
    mul-double/2addr v3, v11

    .line 197
    iget-wide v9, v0, Lmiuix/animation/physics/SpringForce;->mDampedFreq:D

    .line 199
    mul-double/2addr v14, v9

    .line 200
    mul-double/2addr v9, v1

    .line 201
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 204
    move-result-wide v1

    .line 205
    mul-double/2addr v1, v14

    .line 206
    add-double/2addr v1, v3

    .line 207
    mul-double/2addr v1, v5

    .line 208
    add-double/2addr v1, v7

    .line 209
    move-wide/from16 v12, p1

    .line 211
    :goto_d2
    iget-object v3, v0, Lmiuix/animation/physics/SpringForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 213
    iget-wide v4, v0, Lmiuix/animation/physics/SpringForce;->mFinalPosition:D

    .line 215
    add-double/2addr v12, v4

    .line 216
    double-to-float v4, v12

    .line 217
    iput v4, v3, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 219
    double-to-float v1, v1

    .line 220
    iput v1, v3, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 222
    return-object v3
.end method
