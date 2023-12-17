.class Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
.super Ljava/lang/Object;
.source "DynamicScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/DynamicScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverScrollHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;,
        Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;
    }
.end annotation


# instance fields
.field private mAnimMaxValue:F

.field private mAnimMinValue:F

.field public mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastUpdateTime:J

.field private final mMaxLegalValue:I

.field private final mMinLegalValue:I

.field private mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

.field private mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

.field public mStartValue:I

.field public mValue:I

.field public mVelocity:F


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;IF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;-><init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;Lmiuix/overscroller/widget/DynamicScroller$1;)V

    .line 10
    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 12
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 14
    const v0, -0x800001

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 20
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 22
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 28
    iput p2, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 30
    iput p3, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 32
    const p1, 0x7fffffff

    .line 35
    const/high16 v0, -0x80000000

    .line 37
    if-lez p2, :cond_28

    .line 39
    add-int/2addr v0, p2

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    if-gez p2, :cond_2b

    .line 43
    add-int/2addr p1, p2

    .line 44
    :cond_2b
    :goto_2b
    iput v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMinLegalValue:I

    .line 46
    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMaxLegalValue:I

    .line 48
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 54
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 56
    invoke-virtual {p1, p3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 59
    return-void
.end method

.method public static synthetic access$500(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMinValue:F

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMaxValue:F

    .line 3
    return p0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 5
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 7
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 10
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 12
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 17
    return-void
.end method

.method public continueWhenFinished()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 7
    int-to-float v1, v1

    .line 8
    iget v2, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 10
    invoke-interface {v0, v1, v2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;->whenFinished(FF)Z

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public getAnimation()Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 3
    return-object v0
.end method

.method public getOffset(I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 3
    sub-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public setMaxValue(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMaxLegalValue:I

    .line 3
    if-le p1, v0, :cond_5

    .line 5
    move p1, v0

    .line 6
    :cond_5
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 8
    sub-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 20
    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMaxValue:F

    .line 22
    return-void
.end method

.method public setMinValue(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMinLegalValue:I

    .line 3
    if-ge p1, v0, :cond_5

    .line 5
    move p1, v0

    .line 6
    :cond_5
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 8
    sub-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 20
    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMinValue:F

    .line 22
    return-void
.end method

.method public setOnFinishedListener(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

    .line 3
    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 3
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 8
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    .line 14
    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 18
    return-void
.end method

.method public update()Z
    .registers 8

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v2, v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_18

    .line 12
    const-string v0, "update done in this frame, dropping current update request"

    .line 14
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 19
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    .line 22
    move-result v0

    .line 23
    xor-int/2addr v0, v1

    .line 24
    return v0

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 27
    invoke-virtual {v0, v2, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_51

    .line 33
    const/4 v4, 0x3

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    const/4 v5, 0x0

    .line 37
    iget-object v6, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    move-result-object v6

    .line 47
    aput-object v6, v4, v5

    .line 49
    iget v5, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v5

    .line 55
    aput-object v5, v4, v1

    .line 57
    const/4 v1, 0x2

    .line 58
    iget v5, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 60
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v4, v1

    .line 66
    const-string v1, "%s finishing value(%d) velocity(%f)"

    .line 68
    invoke-static {v1, v4}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 73
    iget-object v4, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 75
    invoke-virtual {v1, v4}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 78
    const-wide/16 v4, 0x0

    .line 80
    iput-wide v4, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 82
    :cond_51
    iput-wide v2, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 84
    return v0
.end method
