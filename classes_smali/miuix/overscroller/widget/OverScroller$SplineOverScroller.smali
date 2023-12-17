.class Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field public static final STATE_BALLISTIC:I = 0x2

.field public static final STATE_CUBIC:I = 0x1

.field public static final STATE_SPLINE:I = 0x0

.field private static final VALUE_THRESHOLD:F = 1.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:D

.field private mCurrentPosition:D

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:D

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastStep:Z

.field private mOriginStart:D

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field private mSpringParams:[D

.field private mStart:D

.field private mStartTime:J

.field private mState:I

.field private mVelocity:D


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x3feccccccccccccdL  # 0.9

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 18
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    sput v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 23
    const/16 v0, 0x65

    .line 25
    new-array v1, v0, [F

    .line 27
    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 29
    new-array v0, v0, [F

    .line 31
    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v1

    .line 36
    move v1, v0

    .line 37
    :goto_24
    const/16 v3, 0x64

    .line 39
    const/high16 v4, 0x3f800000  # 1.0f

    .line 41
    if-ge v2, v3, :cond_ac

    .line 43
    int-to-float v3, v2

    .line 44
    const/high16 v5, 0x42c80000  # 100.0f

    .line 46
    div-float v5, v3, v5

    .line 48
    move v3, v4

    .line 49
    :goto_30
    sub-float v6, v3, v0

    .line 51
    const/high16 v7, 0x40000000  # 2.0f

    .line 53
    div-float/2addr v6, v7

    .line 54
    add-float/2addr v6, v0

    .line 55
    const/high16 v8, 0x40400000  # 3.0f

    .line 57
    mul-float v9, v6, v8

    .line 59
    sub-float v10, v4, v6

    .line 61
    mul-float/2addr v9, v10

    .line 62
    const v11, 0x3e333333  # 0.175f

    .line 65
    mul-float v12, v10, v11

    .line 67
    const v13, 0x3eb33334  # 0.35000002f

    .line 70
    mul-float v14, v6, v13

    .line 72
    add-float/2addr v14, v12

    .line 73
    mul-float/2addr v14, v9

    .line 74
    mul-float v12, v6, v6

    .line 76
    mul-float/2addr v12, v6

    .line 77
    add-float/2addr v14, v12

    .line 78
    sub-float v15, v14, v5

    .line 80
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 83
    move-result v15

    .line 84
    move/from16 v16, v14

    .line 86
    float-to-double v13, v15

    .line 87
    const-wide v17, 0x3ee4f8b588e368f1L  # 1.0E-5

    .line 92
    cmpg-double v13, v13, v17

    .line 94
    if-gez v13, :cond_a4

    .line 96
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 98
    const/high16 v13, 0x3f000000  # 0.5f

    .line 100
    mul-float/2addr v10, v13

    .line 101
    add-float/2addr v10, v6

    .line 102
    mul-float/2addr v10, v9

    .line 103
    add-float/2addr v10, v12

    .line 104
    aput v10, v3, v2

    .line 106
    move v3, v4

    .line 107
    :goto_6a
    sub-float v6, v3, v1

    .line 109
    div-float/2addr v6, v7

    .line 110
    add-float/2addr v6, v1

    .line 111
    mul-float v9, v6, v8

    .line 113
    sub-float v10, v4, v6

    .line 115
    mul-float/2addr v9, v10

    .line 116
    mul-float v12, v10, v13

    .line 118
    add-float/2addr v12, v6

    .line 119
    mul-float/2addr v12, v9

    .line 120
    mul-float v14, v6, v6

    .line 122
    mul-float/2addr v14, v6

    .line 123
    add-float/2addr v12, v14

    .line 124
    sub-float v15, v12, v5

    .line 126
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 129
    move-result v15

    .line 130
    float-to-double v7, v15

    .line 131
    cmpg-double v7, v7, v17

    .line 133
    if-gez v7, :cond_95

    .line 135
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 137
    mul-float/2addr v10, v11

    .line 138
    const v7, 0x3eb33334  # 0.35000002f

    .line 141
    mul-float/2addr v6, v7

    .line 142
    add-float/2addr v6, v10

    .line 143
    mul-float/2addr v6, v9

    .line 144
    add-float/2addr v6, v14

    .line 145
    aput v6, v3, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 149
    goto :goto_24

    .line 150
    :cond_95
    const v7, 0x3eb33334  # 0.35000002f

    .line 153
    cmpl-float v8, v12, v5

    .line 155
    if-lez v8, :cond_9e

    .line 157
    move v3, v6

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move v1, v6

    .line 160
    :goto_9f
    const/high16 v7, 0x40000000  # 2.0f

    .line 162
    const/high16 v8, 0x40400000  # 3.0f

    .line 164
    goto :goto_6a

    .line 165
    :cond_a4
    cmpl-float v7, v16, v5

    .line 167
    if-lez v7, :cond_aa

    .line 169
    move v3, v6

    .line 170
    goto :goto_30

    .line 171
    :cond_aa
    move v0, v6

    .line 172
    goto :goto_30

    .line 173
    :cond_ac
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 175
    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 177
    aput v4, v1, v3

    .line 179
    aput v4, v0, v3

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 13
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    move-result-object p1

    .line 26
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    const/high16 v0, 0x43200000  # 160.0f

    .line 30
    mul-float/2addr p1, v0

    .line 31
    const v0, 0x43c10b3d

    .line 34
    mul-float/2addr p1, v0

    .line 35
    const v0, 0x3f570a3d  # 0.84f

    .line 38
    mul-float/2addr p1, v0

    .line 39
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 41
    return-void
.end method

.method public static synthetic access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 3
    return-wide v0
.end method

.method public static synthetic access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 3
    return-wide v0
.end method

.method public static synthetic access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 3
    return-wide v0
.end method

.method public static synthetic access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 3
    return p0
.end method

.method private adjustDuration(III)V
    .registers 7

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p3, p1

    .line 3
    int-to-float p1, p3

    .line 4
    int-to-float p2, p2

    .line 5
    div-float/2addr p1, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result p1

    .line 10
    const/high16 p2, 0x42c80000  # 100.0f

    .line 12
    mul-float p3, p1, p2

    .line 14
    float-to-int p3, p3

    .line 15
    const/16 v0, 0x64

    .line 17
    if-ge p3, v0, :cond_2c

    .line 19
    int-to-float v0, p3

    .line 20
    div-float/2addr v0, p2

    .line 21
    add-int/lit8 v1, p3, 0x1

    .line 23
    int-to-float v2, v1

    .line 24
    div-float/2addr v2, p2

    .line 25
    sget-object p2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 27
    aget p3, p2, p3

    .line 29
    aget p2, p2, v1

    .line 31
    sub-float/2addr p1, v0

    .line 32
    sub-float/2addr v2, v0

    .line 33
    div-float/2addr p1, v2

    .line 34
    invoke-static {p2, p3, p1, p3}, Lf0/e;->a(FFFF)F

    .line 37
    move-result p1

    .line 38
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 40
    int-to-float p2, p2

    .line 41
    mul-float/2addr p2, p1

    .line 42
    float-to-int p1, p2

    .line 43
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 45
    :cond_2c
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 9

    .line 1
    neg-int v0, p3

    .line 2
    int-to-float v0, v0

    .line 3
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 5
    div-float/2addr v0, v1

    .line 6
    int-to-float p3, p3

    .line 7
    mul-float/2addr p3, p3

    .line 8
    const/high16 v2, 0x40000000  # 2.0f

    .line 10
    div-float/2addr p3, v2

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result v1

    .line 15
    div-float/2addr p3, v1

    .line 16
    sub-int p1, p2, p1

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 21
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    add-float/2addr p3, p1

    .line 24
    float-to-double v1, p3

    .line 25
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    .line 27
    mul-double/2addr v1, v3

    .line 28
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 33
    move-result p1

    .line 34
    float-to-double v3, p1

    .line 35
    div-double/2addr v1, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    move-result-wide v1

    .line 40
    double-to-float p1, v1

    .line 41
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 43
    sub-float p3, p1, v0

    .line 45
    const/high16 v0, 0x447a0000  # 1000.0f

    .line 47
    mul-float/2addr p3, v0

    .line 48
    float-to-int p3, p3

    .line 49
    int-to-long v3, p3

    .line 50
    sub-long/2addr v1, v3

    .line 51
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 53
    int-to-double p2, p2

    .line 54
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 56
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 58
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 60
    neg-float p2, p2

    .line 61
    mul-float/2addr p2, p1

    .line 62
    float-to-int p1, p2

    .line 63
    int-to-double p1, p1

    .line 64
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 66
    return-void
.end method

.method private static getDeceleration(I)F
    .registers 1

    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000  # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x44fa0000  # 2000.0f

    :goto_7
    return p0
.end method

.method private getSplineDeceleration(I)D
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    const v0, 0x3eb33333  # 0.35f

    .line 9
    mul-float/2addr p1, v0

    .line 10
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 12
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 14
    mul-float/2addr v0, v1

    .line 15
    div-float/2addr p1, v0

    .line 16
    float-to-double v0, p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 10

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    .line 4
    move-result-wide v0

    .line 5
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 10
    sub-double/2addr v2, v4

    .line 11
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 13
    iget v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 15
    mul-float/2addr v4, v5

    .line 16
    float-to-double v4, v4

    .line 17
    float-to-double v6, p1

    .line 18
    div-double/2addr v6, v2

    .line 19
    mul-double/2addr v6, v0

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    .line 23
    move-result-wide v0

    .line 24
    mul-double/2addr v0, v4

    .line 25
    return-wide v0
.end method

.method private getSplineFlingDuration(I)I
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    .line 4
    move-result-wide v0

    .line 5
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 10
    sub-double/2addr v2, v4

    .line 11
    div-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    .line 15
    move-result-wide v0

    .line 16
    const-wide v2, 0x408f400000000000L  # 1000.0

    .line 21
    mul-double/2addr v0, v2

    .line 22
    double-to-int p1, v0

    .line 23
    return p1
.end method

.method private onEdgeReached()V
    .registers 8

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 3
    double-to-float v2, v0

    .line 4
    double-to-float v0, v0

    .line 5
    mul-float/2addr v2, v0

    .line 6
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    move-result v0

    .line 12
    const/high16 v1, 0x40000000  # 2.0f

    .line 14
    mul-float/2addr v0, v1

    .line 15
    div-float v0, v2, v0

    .line 17
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 19
    double-to-float v3, v3

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 26
    int-to-float v5, v4

    .line 27
    cmpl-float v5, v0, v5

    .line 29
    if-lez v5, :cond_26

    .line 31
    neg-float v0, v3

    .line 32
    mul-float/2addr v0, v2

    .line 33
    int-to-float v2, v4

    .line 34
    mul-float/2addr v2, v1

    .line 35
    div-float/2addr v0, v2

    .line 36
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 38
    int-to-float v0, v4

    .line 39
    :cond_26
    float-to-int v1, v0

    .line 40
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 42
    const/4 v1, 0x2

    .line 43
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 45
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 47
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 49
    const-wide/16 v5, 0x0

    .line 51
    cmpl-double v5, v3, v5

    .line 53
    if-lez v5, :cond_37

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    neg-float v0, v0

    .line 57
    :goto_38
    float-to-int v0, v0

    .line 58
    int-to-double v5, v0

    .line 59
    add-double/2addr v1, v5

    .line 60
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 62
    const-wide v0, 0x408f400000000000L  # 1000.0

    .line 67
    mul-double/2addr v3, v0

    .line 68
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 70
    float-to-double v0, v0

    .line 71
    div-double/2addr v3, v0

    .line 72
    double-to-int v0, v3

    .line 73
    neg-int v0, v0

    .line 74
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 76
    return-void
.end method

.method private startAfterEdge(IIII)V
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p1, p2, :cond_f

    .line 4
    if-ge p1, p3, :cond_f

    .line 6
    const-string p1, "OverScroller"

    .line 8
    const-string p2, "startAfterEdge called from a valid position"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 15
    return-void

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    if-le p1, p3, :cond_14

    .line 19
    move v2, v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v2, v1

    .line 22
    :goto_15
    if-eqz v2, :cond_19

    .line 24
    move v3, p3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v3, p2

    .line 27
    :goto_1a
    sub-int v4, p1, v3

    .line 29
    mul-int v5, v4, p4

    .line 31
    if-ltz v5, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v0, v1

    .line 35
    :goto_22
    if-eqz v0, :cond_28

    .line 37
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    .line 40
    goto :goto_4b

    .line 41
    :cond_28
    invoke-direct {p0, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 48
    move-result v4

    .line 49
    int-to-double v4, v4

    .line 50
    cmpl-double v0, v0, v4

    .line 52
    if-lez v0, :cond_48

    .line 54
    if-eqz v2, :cond_39

    .line 56
    move v7, p2

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v7, p1

    .line 59
    :goto_3a
    if-eqz v2, :cond_3e

    .line 61
    move v8, p1

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v8, p3

    .line 64
    :goto_3f
    iget v9, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 66
    move-object v4, p0

    .line 67
    move v5, p1

    .line 68
    move v6, p4

    .line 69
    invoke-virtual/range {v4 .. v9}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 72
    goto :goto_4b

    .line 73
    :cond_48
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 76
    :goto_4b
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .registers 5

    .line 1
    if-nez p3, :cond_5

    .line 3
    sub-int v0, p1, p2

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v0, p3

    .line 7
    :goto_6
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 16
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 19
    return-void
.end method

.method private startSpringback(III)V
    .registers 6

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 4
    const/4 p3, 0x1

    .line 5
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 7
    int-to-double v0, p1

    .line 8
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 10
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 12
    int-to-double v0, p2

    .line 13
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 15
    sub-int/2addr p1, p2

    .line 16
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 22
    neg-int p2, p1

    .line 23
    int-to-double p2, p2

    .line 24
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 32
    int-to-double p1, p1

    .line 33
    const-wide/high16 v0, -0x4000000000000000L  # -2.0

    .line 35
    mul-double/2addr p1, v0

    .line 36
    iget p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 38
    float-to-double v0, p3

    .line 39
    div-double/2addr p1, v0

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    move-result-wide p1

    .line 44
    const-wide v0, 0x408f400000000000L  # 1000.0

    .line 49
    mul-double/2addr p1, v0

    .line 50
    double-to-int p1, p1

    .line 51
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 53
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_6d

    .line 8
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 10
    if-eqz v1, :cond_c

    .line 12
    goto :goto_6d

    .line 13
    :cond_c
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_18

    .line 18
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 20
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 22
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 24
    return v3

    .line 25
    :cond_18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 28
    move-result-wide v4

    .line 29
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 31
    sub-long v6, v4, v6

    .line 33
    long-to-float v1, v6

    .line 34
    const/high16 v6, 0x447a0000  # 1000.0f

    .line 36
    div-float/2addr v1, v6

    .line 37
    float-to-double v6, v1

    .line 38
    const-wide v8, 0x3f90624de0000000L  # 0.01600000075995922

    .line 43
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    .line 46
    move-result-wide v6

    .line 47
    const-wide/16 v10, 0x0

    .line 49
    cmpl-double v1, v6, v10

    .line 51
    if-nez v1, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-wide v8, v6

    .line 55
    :goto_36
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 57
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 59
    iget-wide v11, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 61
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 63
    aget-wide v13, v1, v2

    .line 65
    aget-wide v15, v1, v3

    .line 67
    const/4 v1, 0x2

    .line 68
    new-array v1, v1, [D

    .line 70
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 72
    aput-wide v4, v1, v2

    .line 74
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 76
    aput-wide v4, v1, v3

    .line 78
    move-wide/from16 v17, v8

    .line 80
    move-object/from16 v19, v1

    .line 82
    invoke-virtual/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    .line 85
    move-result-wide v1

    .line 86
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 88
    mul-double/2addr v8, v1

    .line 89
    add-double/2addr v8, v4

    .line 90
    iput-wide v8, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 92
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 94
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 96
    invoke-virtual {v0, v8, v9, v1, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isAtEquilibrium(DD)Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_68

    .line 102
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 107
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 109
    :goto_6c
    return v3

    .line 110
    :cond_6d
    :goto_6d
    return v2
.end method

.method public continueWhenFinished()Z
    .registers 8

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1f

    .line 7
    if-eq v0, v1, :cond_1e

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_c

    .line 12
    goto :goto_43

    .line 13
    :cond_c
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 15
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 17
    int-to-long v5, v0

    .line 18
    add-long/2addr v3, v5

    .line 19
    iput-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 21
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 23
    double-to-int v0, v3

    .line 24
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 26
    double-to-int v3, v3

    .line 27
    invoke-direct {p0, v0, v3, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 30
    goto :goto_43

    .line 31
    :cond_1e
    return v2

    .line 32
    :cond_1f
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 34
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 36
    if-ge v0, v3, :cond_47

    .line 38
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 40
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 42
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 44
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 46
    double-to-int v0, v2

    .line 47
    int-to-double v2, v0

    .line 48
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 50
    double-to-int v0, v2

    .line 51
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 57
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 59
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 61
    int-to-long v4, v0

    .line 62
    add-long/2addr v2, v4

    .line 63
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 65
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 68
    :goto_43
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    .line 71
    return v1

    .line 72
    :cond_47
    return v2
.end method

.method public extendDuration(I)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 15
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 8
    return-void
.end method

.method public fling(IIIII)V
    .registers 10

    .line 1
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 3
    const/4 p5, 0x0

    .line 4
    iput-boolean p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 6
    int-to-double v0, p2

    .line 7
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 9
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 11
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 13
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 21
    int-to-double v0, p1

    .line 22
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 24
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 26
    if-gt p1, p4, :cond_5d

    .line 28
    if-ge p1, p3, :cond_1e

    .line 30
    goto :goto_5d

    .line 31
    :cond_1e
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 33
    const-wide/16 v0, 0x0

    .line 35
    if-eqz p2, :cond_30

    .line 37
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    .line 40
    move-result p5

    .line 41
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 43
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 45
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    .line 48
    move-result-wide v0

    .line 49
    :cond_30
    int-to-float p2, p2

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 53
    move-result p2

    .line 54
    float-to-double v2, p2

    .line 55
    mul-double/2addr v0, v2

    .line 56
    double-to-int p2, v0

    .line 57
    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 59
    add-int/2addr p1, p2

    .line 60
    int-to-double p1, p1

    .line 61
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 63
    int-to-double v0, p3

    .line 64
    cmpg-double p5, p1, v0

    .line 66
    if-gez p5, :cond_4c

    .line 68
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 70
    double-to-int p5, v2

    .line 71
    double-to-int p1, p1

    .line 72
    invoke-direct {p0, p5, p1, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 75
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 77
    :cond_4c
    iget-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 79
    int-to-double v0, p4

    .line 80
    cmpl-double p3, p1, v0

    .line 82
    if-lez p3, :cond_5c

    .line 84
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 86
    double-to-int p3, v2

    .line 87
    double-to-int p1, p1

    .line 88
    invoke-direct {p0, p3, p1, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 91
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 93
    :cond_5c
    return-void

    .line 94
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1, p3, p4, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 97
    return-void
.end method

.method public final getCurrVelocity()F
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public final getCurrentPosition()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public final getDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 3
    return v0
.end method

.method public final getFinal()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public final getStart()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public final getStartTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 3
    return-wide v0
.end method

.method public final getState()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 3
    return v0
.end method

.method public isAtEquilibrium(DD)Z
    .registers 5

    .line 1
    sub-double/2addr p1, p3

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 5
    move-result-wide p1

    .line 6
    const-wide/high16 p3, 0x3ff0000000000000L  # 1.0

    .line 8
    cmpg-double p1, p1, p3

    .line 10
    if-gez p1, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    return p1
.end method

.method public final isFinished()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    return v0
.end method

.method public notifyEdgeReached(III)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 3
    if-nez v0, :cond_12

    .line 5
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 13
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 15
    double-to-int p3, v0

    .line 16
    invoke-direct {p0, p1, p2, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 19
    :cond_12
    return-void
.end method

.method public final setCurrVelocity(F)V
    .registers 4

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 4
    return-void
.end method

.method public final setCurrentPosition(I)V
    .registers 4

    .line 1
    int-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 4
    return-void
.end method

.method public final setDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 3
    return-void
.end method

.method public final setFinal(I)V
    .registers 4

    .line 1
    int-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 4
    return-void
.end method

.method public setFinalPosition(I)V
    .registers 4

    .line 1
    int-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 7
    return-void
.end method

.method public final setFinished(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    return-void
.end method

.method public setFriction(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 3
    return-void
.end method

.method public final setStart(I)V
    .registers 4

    .line 1
    int-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 4
    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 3
    return-void
.end method

.method public final setState(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 3
    return-void
.end method

.method public springback(III)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 4
    int-to-double v1, p1

    .line 5
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 7
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 9
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 24
    if-ge p1, p2, :cond_1d

    .line 26
    invoke-direct {p0, p1, p2, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    if-le p1, p3, :cond_22

    .line 32
    invoke-direct {p0, p1, p3, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 35
    :cond_22
    :goto_22
    iget-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 37
    xor-int/2addr p1, v0

    .line 38
    return p1
.end method

.method public startScroll(III)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 4
    int-to-double v0, p1

    .line 5
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 7
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 9
    add-int/2addr p1, p2

    .line 10
    int-to-double p1, p1

    .line 11
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 16
    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 19
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 24
    const-wide/16 p1, 0x0

    .line 26
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 28
    return-void
.end method

.method public startScrollByFling(FII)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 4
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setState(I)V

    .line 9
    float-to-double v0, p1

    .line 10
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOriginStart:D

    .line 12
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 14
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 16
    int-to-float p2, p2

    .line 17
    add-float/2addr p1, p2

    .line 18
    float-to-double p1, p1

    .line 19
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 21
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 27
    int-to-double p1, p3

    .line 28
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 30
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 32
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    .line 34
    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    .line 37
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 39
    const/4 p2, 0x2

    .line 40
    new-array p3, p2, [D

    .line 42
    iput-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 44
    new-array p2, p2, [F

    .line 46
    fill-array-data p2, :array_34

    .line 49
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x3f7d70a4  # 0.99f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method public update()Z
    .registers 10

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v2, v0, v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_15

    .line 16
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 18
    if-lez v0, :cond_14

    .line 20
    move v3, v4

    .line 21
    :cond_14
    return v3

    .line 22
    :cond_15
    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 24
    int-to-long v5, v2

    .line 25
    cmp-long v5, v0, v5

    .line 27
    if-lez v5, :cond_1d

    .line 29
    return v3

    .line 30
    :cond_1d
    const-wide/16 v5, 0x0

    .line 32
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 34
    const/high16 v7, 0x447a0000  # 1000.0f

    .line 36
    if-eqz v3, :cond_65

    .line 38
    const/high16 v8, 0x40000000  # 2.0f

    .line 40
    if-eq v3, v4, :cond_41

    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq v3, v2, :cond_2d

    .line 45
    goto :goto_98

    .line 46
    :cond_2d
    long-to-float v0, v0

    .line 47
    div-float/2addr v0, v7

    .line 48
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 50
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 52
    mul-float v5, v3, v0

    .line 54
    float-to-double v5, v5

    .line 55
    add-double/2addr v5, v1

    .line 56
    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 58
    float-to-double v5, v0

    .line 59
    mul-double/2addr v1, v5

    .line 60
    mul-float/2addr v3, v0

    .line 61
    mul-float/2addr v3, v0

    .line 62
    div-float/2addr v3, v8

    .line 63
    float-to-double v5, v3

    .line 64
    add-double/2addr v5, v1

    .line 65
    goto :goto_98

    .line 66
    :cond_41
    long-to-float v0, v0

    .line 67
    int-to-float v1, v2

    .line 68
    div-float/2addr v0, v1

    .line 69
    mul-float v1, v0, v0

    .line 71
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 73
    double-to-float v2, v2

    .line 74
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 77
    move-result v2

    .line 78
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 80
    int-to-float v5, v3

    .line 81
    mul-float/2addr v5, v2

    .line 82
    const/high16 v6, 0x40400000  # 3.0f

    .line 84
    mul-float/2addr v6, v1

    .line 85
    mul-float/2addr v8, v0

    .line 86
    mul-float/2addr v8, v1

    .line 87
    sub-float/2addr v6, v8

    .line 88
    mul-float/2addr v6, v5

    .line 89
    float-to-double v5, v6

    .line 90
    int-to-float v3, v3

    .line 91
    mul-float/2addr v2, v3

    .line 92
    const/high16 v3, 0x40c00000  # 6.0f

    .line 94
    mul-float/2addr v2, v3

    .line 95
    neg-float v0, v0

    .line 96
    add-float/2addr v0, v1

    .line 97
    mul-float/2addr v0, v2

    .line 98
    float-to-double v0, v0

    .line 99
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 101
    goto :goto_98

    .line 102
    :cond_65
    long-to-float v0, v0

    .line 103
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 105
    int-to-float v2, v1

    .line 106
    div-float/2addr v0, v2

    .line 107
    const/high16 v2, 0x42c80000  # 100.0f

    .line 109
    mul-float v3, v0, v2

    .line 111
    float-to-int v3, v3

    .line 112
    const/high16 v5, 0x3f800000  # 1.0f

    .line 114
    const/4 v6, 0x0

    .line 115
    const/16 v8, 0x64

    .line 117
    if-ge v3, v8, :cond_8a

    .line 119
    int-to-float v5, v3

    .line 120
    div-float/2addr v5, v2

    .line 121
    add-int/lit8 v6, v3, 0x1

    .line 123
    int-to-float v8, v6

    .line 124
    div-float/2addr v8, v2

    .line 125
    sget-object v2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 127
    aget v3, v2, v3

    .line 129
    aget v2, v2, v6

    .line 131
    sub-float/2addr v2, v3

    .line 132
    sub-float/2addr v8, v5

    .line 133
    div-float v6, v2, v8

    .line 135
    invoke-static {v0, v5, v6, v3}, Lf0/e;->a(FFFF)F

    .line 138
    move-result v5

    .line 139
    :cond_8a
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 141
    int-to-float v2, v0

    .line 142
    mul-float/2addr v5, v2

    .line 143
    float-to-double v2, v5

    .line 144
    int-to-float v0, v0

    .line 145
    mul-float/2addr v6, v0

    .line 146
    int-to-float v0, v1

    .line 147
    div-float/2addr v6, v0

    .line 148
    mul-float/2addr v6, v7

    .line 149
    float-to-double v0, v6

    .line 150
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 152
    move-wide v5, v2

    .line 153
    :goto_98
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 158
    move-result-wide v2

    .line 159
    long-to-int v2, v2

    .line 160
    int-to-double v2, v2

    .line 161
    add-double/2addr v0, v2

    .line 162
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 164
    return v4
.end method

.method public updateScroll(F)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 3
    float-to-double v2, p1

    .line 4
    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 6
    sub-double/2addr v4, v0

    .line 7
    mul-double/2addr v4, v2

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 11
    move-result-wide v2

    .line 12
    long-to-double v2, v2

    .line 13
    add-double/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 16
    return-void
.end method
