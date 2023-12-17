.class public Lmiuix/androidbasewidget/widget/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


# static fields
.field private static final HORIZONTAL:I

.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final VALUE_THRESHOLD:F = 1.0f

.field private static final VERTICAL:I


# instance fields
.field private mCurrX:D

.field private mCurrY:D

.field private mCurrentTime:J

.field private mEndX:D

.field private mEndY:D

.field private mFinished:Z

.field private mLastStep:Z

.field private mOrientation:I

.field private mOriginStartY:D

.field private mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

.field private mStartTime:J

.field private mStartX:D

.field private mStartY:D

.field private mVelocity:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/widget/SpringScroller;->HORIZONTAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/widget/SpringScroller;->VERTICAL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final abortAnimation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 13

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    if-eqz v0, :cond_8a

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_a

    goto/16 :goto_8a

    :cond_a
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    return v1

    :cond_1a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    iget-wide v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v0, v2

    const v2, 0x3c83126f  # 0.016f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v2, v0

    :goto_35
    iget-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    iget v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_64

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    iput-wide v7, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    invoke-virtual {p0, v7, v8, v2, v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_5f

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    goto :goto_89

    :cond_5f
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    goto :goto_89

    :cond_64
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    iput-wide v7, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    invoke-virtual {p0, v7, v8, v2, v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_85

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    goto :goto_89

    :cond_85
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    :goto_89
    return v1

    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrX()I
    .registers 3

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .registers 3

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public final getFinalX()I
    .registers 3

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getStartX()I
    .registers 3

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DD)Z
    .registers 5

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L  # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public final isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .registers 4

    int-to-double v0, p1

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method

.method public startScroll(FFFFF)V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    float-to-double v0, p2

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    float-to-double v0, p3

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOriginStartY:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    float-to-double v0, p4

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    float-to-double v0, p5

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L  # 5000.0

    cmpg-double p5, v0, v2

    const v0, 0x3eb33333  # 0.35f

    const v1, 0x3f666666  # 0.9f

    if-gtz p5, :cond_35

    new-instance p5, Lmiuix/androidbasewidget/widget/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>(FF)V

    iput-object p5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    goto :goto_3c

    :cond_35
    new-instance p5, Lmiuix/androidbasewidget/widget/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>(FF)V

    iput-object p5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    :goto_3c
    sub-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4c

    const/4 p1, 0x2

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x1

    :goto_4d
    iput p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    return-void
.end method
