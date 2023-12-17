.class public Lmiuix/springback/view/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


# static fields
.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final VALUE_THRESHOLD:F = 1.0f


# instance fields
.field private mCurrX:D

.field private mCurrY:D

.field private mCurrentTime:J

.field private mEndX:D

.field private mEndY:D

.field private mFinished:Z

.field private mFirstStep:I

.field private mLastStep:Z

.field private mOrientation:I

.field private mOriginStartX:D

.field private mOriginStartY:D

.field private mOriginVelocity:D

.field private mSpringOperator:Lmiuix/springback/view/SpringOperator;

.field private mStartTime:J

.field private mStartX:D

.field private mStartY:D

.field private mVelocity:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 7
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_ab

    .line 6
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 8
    if-eqz v0, :cond_b

    .line 10
    goto/16 :goto_ab

    .line 12
    :cond_b
    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_24

    .line 17
    iget v3, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    .line 19
    if-ne v3, v2, :cond_1b

    .line 21
    int-to-double v3, v0

    .line 22
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 24
    int-to-double v3, v0

    .line 25
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    int-to-double v3, v0

    .line 29
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 31
    int-to-double v3, v0

    .line 32
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 34
    :goto_21
    iput v1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 36
    return v2

    .line 37
    :cond_24
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 43
    return v2

    .line 44
    :cond_2b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTime:J

    .line 50
    iget-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    .line 52
    sub-long/2addr v0, v3

    .line 53
    long-to-float v0, v0

    .line 54
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 56
    div-float/2addr v0, v1

    .line 57
    const v1, 0x3c83126f  # 0.016f

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 63
    move-result v0

    .line 64
    const/4 v3, 0x0

    .line 65
    cmpl-float v3, v0, v3

    .line 67
    if-nez v3, :cond_45

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v1, v0

    .line 71
    :goto_46
    iget-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTime:J

    .line 73
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    .line 75
    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    .line 77
    const/4 v3, 0x2

    .line 78
    if-ne v0, v3, :cond_7d

    .line 80
    iget-object v4, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 82
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 84
    iget-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    .line 86
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 88
    move v7, v1

    .line 89
    invoke-virtual/range {v4 .. v11}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DFDD)D

    .line 92
    move-result-wide v3

    .line 93
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 95
    float-to-double v0, v1

    .line 96
    mul-double/2addr v0, v3

    .line 97
    add-double v8, v0, v5

    .line 99
    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 101
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 103
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    .line 105
    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    .line 107
    move-object v7, p0

    .line 108
    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_78

    .line 114
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    .line 116
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    .line 118
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 120
    goto :goto_aa

    .line 121
    :cond_78
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 123
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 125
    goto :goto_aa

    .line 126
    :cond_7d
    iget-object v4, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 128
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 130
    iget-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    .line 132
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 134
    move v7, v1

    .line 135
    invoke-virtual/range {v4 .. v11}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DFDD)D

    .line 138
    move-result-wide v3

    .line 139
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 141
    float-to-double v0, v1

    .line 142
    mul-double/2addr v0, v3

    .line 143
    add-double v8, v0, v5

    .line 145
    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 147
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 149
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    .line 151
    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    .line 153
    move-object v7, p0

    .line 154
    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a6

    .line 160
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    .line 162
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    .line 164
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 166
    goto :goto_aa

    .line 167
    :cond_a6
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 169
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 171
    :goto_aa
    return v2

    .line 172
    :cond_ab
    :goto_ab
    return v1
.end method

.method public final forceStop()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 7
    return-void
.end method

.method public final getCurrX()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public final getCurrY()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public isAtEquilibrium(DDD)Z
    .registers 11

    .line 1
    cmpg-double v0, p3, p5

    .line 3
    const/4 v1, 0x1

    .line 4
    if-gez v0, :cond_a

    .line 6
    cmpl-double v0, p1, p5

    .line 8
    if-lez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    cmpl-double p3, p3, p5

    .line 13
    if-lez p3, :cond_13

    .line 15
    cmpg-double p4, p1, p5

    .line 17
    if-gez p4, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    if-nez p3, :cond_24

    .line 22
    iget-wide p3, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    .line 24
    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    .line 27
    move-result-wide p3

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    .line 31
    move-result-wide v2

    .line 32
    cmpl-double p3, p3, v2

    .line 34
    if-eqz p3, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    sub-double/2addr p1, p5

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 41
    move-result-wide p1

    .line 42
    const-wide/high16 p3, 0x3ff0000000000000L  # 1.0

    .line 44
    cmpg-double p1, p1, p3

    .line 46
    if-gez p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    const/4 v1, 0x0

    .line 50
    :goto_31
    return v1
.end method

.method public final isFinished()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 3
    return v0
.end method

.method public scrollByFling(FFFFFIZ)V
    .registers 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 2
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 3
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 4
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    float-to-double p1, p2

    .line 5
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    float-to-double p1, p3

    .line 6
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 7
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    double-to-int p1, p1

    int-to-double p1, p1

    .line 8
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    float-to-double p1, p4

    .line 9
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    float-to-double p1, p5

    .line 10
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    .line 11
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x40b3880000000000L  # 5000.0

    cmpg-double p1, p1, p3

    const/high16 p2, 0x3f800000  # 1.0f

    if-lez p1, :cond_3b

    if-eqz p7, :cond_30

    goto :goto_3b

    .line 13
    :cond_30
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3f0ccccd  # 0.55f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    goto :goto_45

    .line 14
    :cond_3b
    :goto_3b
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3ecccccd  # 0.4f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 15
    :goto_45
    iput p6, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    .line 16
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    return-void
.end method

.method public setFirstStep(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    .line 3
    return-void
.end method
