.class Lmiuix/overscroller/widget/DynamicScroller;
.super Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
    }
.end annotation


# static fields
.field private static final MAX_SPRING_INITIAL_VELOCITY:F = 8000.0f

.field private static final MINIMAL_VISIBLE_CHANGE:F = 0.5f


# instance fields
.field private mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

.field private mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

.field private mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

.field private mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 6
    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    .line 9
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 11
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 13
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 15
    invoke-direct {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 18
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 20
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 22
    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 28
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 30
    const/high16 v0, 0x3f000000  # 0.5f

    .line 32
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 35
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 37
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 40
    move-result-object p1

    .line 41
    const v1, 0x3f7851ec  # 0.97f

    .line 44
    invoke-virtual {p1, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 47
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 49
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 52
    move-result-object p1

    .line 53
    const v1, 0x43028000  # 130.5f

    .line 56
    invoke-virtual {p1, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 59
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 61
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 64
    move-result-object p1

    .line 65
    const-wide v1, 0x408f400000000000L  # 1000.0

    .line 70
    invoke-virtual {p1, v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setTimeRatio(D)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 73
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 75
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 77
    invoke-direct {p1, v1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;)V

    .line 80
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 82
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 85
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 87
    const v0, 0x3ef3cf3e

    .line 90
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 93
    return-void
.end method

.method public static synthetic access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/overscroller/widget/DynamicScroller;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/overscroller/widget/DynamicScroller;IIFII)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 4
    return-void
.end method

.method private doFling(IIIII)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 7
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 9
    int-to-float p2, p2

    .line 10
    invoke-virtual {v0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 13
    int-to-long v0, p1

    .line 14
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 16
    invoke-virtual {v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 19
    move-result v2

    .line 20
    float-to-long v2, v2

    .line 21
    add-long/2addr v0, v2

    .line 22
    int-to-long v2, p4

    .line 23
    cmp-long v2, v0, v2

    .line 25
    if-lez v2, :cond_26

    .line 27
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 29
    sub-int v1, p4, p1

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    .line 35
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    move v1, p4

    .line 38
    goto :goto_42

    .line 39
    :cond_26
    int-to-long v2, p3

    .line 40
    cmp-long v2, v0, v2

    .line 42
    if-gez v2, :cond_37

    .line 44
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 46
    sub-int v1, p3, p1

    .line 48
    int-to-float v1, v1

    .line 49
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    .line 52
    move-result v0

    .line 53
    float-to-int v0, v0

    .line 54
    move v1, p3

    .line 55
    goto :goto_42

    .line 56
    :cond_37
    long-to-int v0, v0

    .line 57
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 59
    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictDuration()F

    .line 62
    move-result v1

    .line 63
    float-to-int v1, v1

    .line 64
    move v5, v1

    .line 65
    move v1, v0

    .line 66
    move v0, v5

    .line 67
    :goto_42
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 71
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrVelocity(F)V

    .line 74
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 77
    move-result-wide v3

    .line 78
    invoke-virtual {p0, v3, v4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStartTime(J)V

    .line 81
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 84
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStart(I)V

    .line 87
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setDuration(I)V

    .line 90
    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinal(I)V

    .line 93
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setState(I)V

    .line 96
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 99
    move-result v0

    .line 100
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    .line 103
    move-result v1

    .line 104
    new-instance v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 106
    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 108
    invoke-direct {v2, v3, p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    .line 111
    iput-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 113
    new-instance p1, Lmiuix/overscroller/widget/DynamicScroller$1;

    .line 115
    invoke-direct {p1, p0, p3, p4, p5}, Lmiuix/overscroller/widget/DynamicScroller$1;-><init>(Lmiuix/overscroller/widget/DynamicScroller;III)V

    .line 118
    invoke-virtual {v2, p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setOnFinishedListener(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;)V

    .line 121
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 123
    invoke-virtual {p1, v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 126
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 128
    invoke-virtual {p1, v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 131
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 133
    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    .line 136
    return-void
.end method

.method private doSpring(IIFII)V
    .registers 9

    .line 1
    const/high16 v0, 0x45fa0000  # 8000.0f

    .line 3
    cmpl-float v1, p3, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v1, :cond_16

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p3

    .line 15
    aput-object p3, v1, v2

    .line 17
    const-string p3, "%f is too fast for spring, slow down"

    .line 19
    invoke-static {p3, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    move p3, v0

    .line 23
    :cond_16
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 26
    invoke-virtual {p0, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrVelocity(F)V

    .line 29
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStartTime(J)V

    .line 36
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 39
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStart(I)V

    .line 42
    const v0, 0x7fffffff

    .line 45
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setDuration(I)V

    .line 48
    invoke-virtual {p0, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinal(I)V

    .line 51
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setState(I)V

    .line 54
    new-instance p1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 56
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 58
    invoke-direct {p1, v0, p2, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    .line 61
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 63
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 65
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 71
    invoke-virtual {v0, p4}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->getOffset(I)I

    .line 74
    move-result v0

    .line 75
    int-to-float v0, v0

    .line 76
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 79
    if-eqz p5, :cond_75

    .line 81
    const/4 p1, 0x0

    .line 82
    cmpg-float p1, p3, p1

    .line 84
    if-gez p1, :cond_66

    .line 86
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 88
    sub-int p3, p4, p5

    .line 90
    invoke-virtual {p1, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 93
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 95
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 102
    goto :goto_75

    .line 103
    :cond_66
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 105
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 112
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 114
    add-int/2addr p4, p5

    .line 115
    invoke-virtual {p1, p4}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 118
    :cond_75
    :goto_75
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 120
    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    .line 123
    return-void
.end method

.method private resetHandler()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 3
    if-eqz v0, :cond_46

    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getState()I

    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 22
    invoke-virtual {v2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->getAnimation()Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    aput-object v2, v0, v1

    .line 36
    const/4 v1, 0x2

    .line 37
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 39
    iget v2, v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    aput-object v2, v0, v1

    .line 47
    const/4 v1, 0x3

    .line 48
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 50
    iget v2, v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    move-result-object v2

    .line 56
    aput-object v2, v0, v1

    .line 58
    const-string v1, "resetting current handler: state(%d), anim(%s), value(%d), velocity(%f)"

    .line 60
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 65
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->cancel()V

    .line 68
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 71
    :cond_46
    return-void
.end method

.method private startAfterEdge(IIIII)V
    .registers 16

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v1, v0, v4

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v4, 0x3

    .line 30
    aput-object v1, v0, v4

    .line 32
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x4

    .line 37
    aput-object v1, v0, v4

    .line 39
    const-string v1, "startAfterEdge: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    .line 41
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-le p1, p2, :cond_33

    .line 46
    if-ge p1, p3, :cond_33

    .line 48
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 51
    return-void

    .line 52
    :cond_33
    if-le p1, p3, :cond_37

    .line 54
    move v0, v3

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v0, v2

    .line 57
    :goto_38
    if-eqz v0, :cond_3c

    .line 59
    move v8, p3

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v8, p2

    .line 62
    :goto_3d
    sub-int v1, p1, v8

    .line 64
    if-eqz p4, :cond_49

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    .line 69
    move-result v1

    .line 70
    mul-int/2addr v1, p4

    .line 71
    if-ltz v1, :cond_49

    .line 73
    move v2, v3

    .line 74
    :cond_49
    if-eqz v2, :cond_59

    .line 76
    const-string p2, "spring forward"

    .line 78
    invoke-static {p2}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 81
    const/4 v5, 0x2

    .line 82
    int-to-float v7, p4

    .line 83
    move-object v4, p0

    .line 84
    move v6, p1

    .line 85
    move v9, p5

    .line 86
    invoke-direct/range {v4 .. v9}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 89
    goto :goto_94

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 92
    int-to-float v2, p1

    .line 93
    invoke-virtual {v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 96
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 98
    int-to-float v7, p4

    .line 99
    invoke-virtual {v1, v7}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 102
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 104
    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 107
    move-result v1

    .line 108
    if-eqz v0, :cond_72

    .line 110
    int-to-float v2, p3

    .line 111
    cmpg-float v2, v1, v2

    .line 113
    if-ltz v2, :cond_79

    .line 115
    :cond_72
    if-nez v0, :cond_88

    .line 117
    int-to-float v0, p2

    .line 118
    cmpl-float v0, v1, v0

    .line 120
    if-lez v0, :cond_88

    .line 122
    :cond_79
    const-string v0, "fling to content"

    .line 124
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 127
    move-object v0, p0

    .line 128
    move v1, p1

    .line 129
    move v2, p4

    .line 130
    move v3, p2

    .line 131
    move v4, p3

    .line 132
    move v5, p5

    .line 133
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    .line 136
    goto :goto_94

    .line 137
    :cond_88
    const-string p2, "spring backward"

    .line 139
    invoke-static {p2}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x1

    .line 143
    move-object v4, p0

    .line 144
    move v6, p1

    .line 145
    move v9, p5

    .line 146
    invoke-direct/range {v4 .. v9}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 149
    :goto_94
    return-void
.end method


# virtual methods
.method public continueWhenFinished()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->continueWhenFinished()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    const-string v0, "checking have more work when finish"

    .line 13
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->update()Z

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public extendDuration(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 4
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    const-string v0, "finish scroller"

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getFinal()I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 17
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 20
    return-void
.end method

.method public fling(IIIII)V
    .registers 12

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v1, v0, v4

    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v4, 0x3

    .line 30
    aput-object v1, v0, v4

    .line 32
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x4

    .line 37
    aput-object v1, v0, v4

    .line 39
    const-string v1, "FLING: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    .line 41
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 47
    if-nez p2, :cond_40

    .line 49
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 52
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStart(I)V

    .line 55
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinal(I)V

    .line 58
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setDuration(I)V

    .line 61
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 64
    return-void

    .line 65
    :cond_40
    int-to-double v0, p2

    .line 66
    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->updateStiffness(D)V

    .line 69
    if-gt p1, p4, :cond_4d

    .line 71
    if-ge p1, p3, :cond_49

    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    invoke-direct/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    .line 77
    return-void

    .line 78
    :cond_4d
    :goto_4d
    move-object v0, p0

    .line 79
    move v1, p1

    .line 80
    move v2, p3

    .line 81
    move v3, p4

    .line 82
    move v4, p2

    .line 83
    move v5, p5

    .line 84
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    .line 87
    return-void
.end method

.method public notifyEdgeReached(III)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getState()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1a

    .line 7
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 14
    :cond_d
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getCurrVelocity()F

    .line 17
    move-result v0

    .line 18
    float-to-int v5, v0

    .line 19
    move-object v1, p0

    .line 20
    move v2, p1

    .line 21
    move v3, p2

    .line 22
    move v4, p2

    .line 23
    move v6, p3

    .line 24
    invoke-direct/range {v1 .. v6}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onFinalValueArrived(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getStart()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setFinalPosition(I)V

    .line 9
    return-void
.end method

.method public setFinalPosition(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 4
    return-void
.end method

.method public setFriction(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 6
    return-void
.end method

.method public springback(III)Z
    .registers 11

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v1, v0, v3

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v1, v0, v6

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v1, v0, v4

    .line 25
    const-string v1, "SPRING_BACK start(%d) boundary(%d, %d)"

    .line 27
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 37
    :cond_24
    if-ge p1, p2, :cond_30

    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v0, p0

    .line 43
    move v2, p1

    .line 44
    move v4, p2

    .line 45
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 48
    goto :goto_4b

    .line 49
    :cond_30
    if-le p1, p3, :cond_3c

    .line 51
    const/4 v1, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v0, p0

    .line 55
    move v2, p1

    .line 56
    move v4, p3

    .line 57
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 60
    goto :goto_4b

    .line 61
    :cond_3c
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 64
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStart(I)V

    .line 67
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinal(I)V

    .line 70
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setDuration(I)V

    .line 73
    invoke-virtual {p0, v6}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinished(Z)V

    .line 76
    :goto_4b
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isFinished()Z

    .line 79
    move-result v0

    .line 80
    xor-int/2addr v0, v6

    .line 81
    return v0
.end method

.method public update()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 3
    if-nez v0, :cond_b

    .line 5
    const-string v0, "no handler found, aborting"

    .line 7
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->update()Z

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 18
    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 20
    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 23
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 25
    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 27
    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrVelocity(F)V

    .line 30
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getState()I

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v1, v2, :cond_44

    .line 38
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 40
    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 49
    iget v2, v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 51
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 54
    move-result v2

    .line 55
    mul-float/2addr v2, v1

    .line 56
    const/4 v1, 0x0

    .line 57
    cmpg-float v1, v2, v1

    .line 59
    if-gez v1, :cond_44

    .line 61
    const-string v1, "State Changed: BALLISTIC -> CUBIC"

    .line 63
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setState(I)V

    .line 69
    :cond_44
    xor-int/2addr v0, v3

    .line 70
    return v0
.end method

.method public updateStiffness(D)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, 0x40b3880000000000L  # 5000.0

    .line 10
    cmpg-double p1, p1, v0

    .line 12
    if-gtz p1, :cond_1a

    .line 14
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 16
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 19
    move-result-object p1

    .line 20
    const p2, 0x4376b333  # 246.7f

    .line 23
    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 26
    goto :goto_26

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 29
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 32
    move-result-object p1

    .line 33
    const p2, 0x43028000  # 130.5f

    .line 36
    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 39
    :goto_26
    return-void
.end method
