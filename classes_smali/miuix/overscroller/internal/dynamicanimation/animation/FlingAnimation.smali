.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

.field private final mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 7
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 2
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 4
    iput-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

    return-void
.end method

.method private predictTimeWithVelocity(F)F
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 3
    div-float/2addr p1, v0

    .line 4
    float-to-double v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 8
    move-result-wide v0

    .line 9
    const-wide v2, 0x408f400000000000L  # 1000.0

    .line 14
    mul-double/2addr v0, v2

    .line 15
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 17
    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 20
    move-result p1

    .line 21
    float-to-double v2, p1

    .line 22
    div-double/2addr v0, v2

    .line 23
    double-to-float p1, v0

    .line 24
    return p1
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getFriction()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-gez v0, :cond_17

    .line 7
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 9
    cmpg-float v0, p1, v0

    .line 11
    if-lez v0, :cond_17

    .line 13
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 15
    invoke-virtual {v0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 25
    :goto_18
    return p1
.end method

.method public predictDuration()F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 9
    invoke-static {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 12
    move-result v1

    .line 13
    mul-float/2addr v0, v1

    .line 14
    invoke-direct {p0, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public predictNaturalDest()F
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 9
    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 11
    iget-object v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 13
    invoke-static {v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 16
    move-result v3

    .line 17
    div-float/2addr v2, v3

    .line 18
    sub-float/2addr v1, v2

    .line 19
    iget-object v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 21
    invoke-static {v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 24
    move-result v2

    .line 25
    mul-float/2addr v0, v2

    .line 26
    iget-object v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 28
    invoke-static {v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 31
    move-result v2

    .line 32
    div-float/2addr v0, v2

    .line 33
    add-float/2addr v0, v1

    .line 34
    return v0
.end method

.method public predictTimeTo(F)F
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 6
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 8
    invoke-static {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    add-float/2addr v0, p1

    .line 14
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 16
    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    .line 19
    move-result p1

    .line 20
    mul-float/2addr v0, p1

    .line 21
    invoke-direct {p0, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public setFriction(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-lez v0, :cond_b

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v0, "Friction must be positive"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method

.method public bridge synthetic setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setValueThreshold(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 6
    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 5
    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 7
    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 10
    move-result-object p1

    .line 11
    iget p2, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 13
    iput p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 15
    iget p1, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 17
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 19
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 21
    cmpg-float v1, p2, v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-gez v1, :cond_1c

    .line 26
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 28
    return v2

    .line 29
    :cond_1c
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 31
    cmpl-float v1, p2, v0

    .line 33
    if-lez v1, :cond_25

    .line 35
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 37
    return v2

    .line 38
    :cond_25
    invoke-virtual {p0, p2, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_34

    .line 44
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

    .line 46
    iget p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 48
    float-to-int p2, p2

    .line 49
    invoke-interface {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;->onFinalValueArrived(I)V

    .line 52
    return v2

    .line 53
    :cond_34
    const/4 p1, 0x0

    .line 54
    return p1
.end method
