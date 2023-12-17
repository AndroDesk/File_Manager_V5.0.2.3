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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 15

    iget-object v0, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_b

    goto/16 :goto_ab

    :cond_b
    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget v3, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    if-ne v3, v2, :cond_1b

    int-to-double v3, v0

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    int-to-double v3, v0

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    goto :goto_21

    :cond_1b
    int-to-double v3, v0

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    int-to-double v3, v0

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    :goto_21
    iput v1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return v2

    :cond_24
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    if-eqz v0, :cond_2b

    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return v2

    :cond_2b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTime:J

    iget-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3c83126f  # 0.016f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_45

    goto :goto_46

    :cond_45
    move v1, v0

    :goto_46
    iget-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTime:J

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7d

    iget-object v4, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    move v7, v1

    invoke-virtual/range {v4 .. v11}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    float-to-double v0, v1

    mul-double/2addr v0, v3

    add-double v8, v0, v5

    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_78

    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    goto :goto_aa

    :cond_78
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    goto :goto_aa

    :cond_7d
    iget-object v4, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    move v7, v1

    invoke-virtual/range {v4 .. v11}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    float-to-double v0, v1

    mul-double/2addr v0, v3

    add-double v8, v0, v5

    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_a6

    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    goto :goto_aa

    :cond_a6
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    :goto_aa
    return v2

    :cond_ab
    :goto_ab
    return v1
.end method

.method public final forceStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return-void
.end method

.method public final getCurrX()I
    .registers 3

    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .registers 3

    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DDD)Z
    .registers 11

    cmpg-double v0, p3, p5

    const/4 v1, 0x1

    if-gez v0, :cond_a

    cmpl-double v0, p1, p5

    if-lez v0, :cond_a

    return v1

    :cond_a
    cmpl-double p3, p3, p5

    if-lez p3, :cond_13

    cmpg-double p4, p1, p5

    if-gez p4, :cond_13

    return v1

    :cond_13
    if-nez p3, :cond_24

    iget-wide p3, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    cmpl-double p3, p3, v2

    if-eqz p3, :cond_24

    return v1

    :cond_24
    sub-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L  # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method public final isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return v0
.end method

.method public scrollByFling(FFFFFIZ)V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    float-to-double p1, p2

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    float-to-double p1, p3

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    double-to-int p1, p1

    int-to-double p1, p1

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    float-to-double p1, p4

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    float-to-double p1, p5

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x40b3880000000000L  # 5000.0

    cmpg-double p1, p1, p3

    const/high16 p2, 0x3f800000  # 1.0f

    if-lez p1, :cond_3b

    if-eqz p7, :cond_30

    goto :goto_3b

    :cond_30
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3f0ccccd  # 0.55f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    goto :goto_45

    :cond_3b
    :goto_3b
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3ecccccd  # 0.4f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    :goto_45
    iput p6, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartTime:J

    return-void
.end method

.method public setFirstStep(I)V
    .registers 2

    iput p1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return-void
.end method
