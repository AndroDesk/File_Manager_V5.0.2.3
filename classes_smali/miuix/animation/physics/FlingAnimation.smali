.class public final Lmiuix/animation/physics/FlingAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/physics/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    .line 5
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    .line 2
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getFriction()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-gez v0, :cond_17

    .line 7
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 9
    cmpg-float v0, p1, v0

    .line 11
    if-lez v0, :cond_17

    .line 13
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 15
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

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

.method public setFriction(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-lez v0, :cond_b

    .line 6
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

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

.method public bridge synthetic setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMinValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public setValueThreshold(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 6
    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 5
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 7
    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 10
    move-result-object p1

    .line 11
    iget p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 13
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 15
    iget p1, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 17
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 19
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 21
    cmpg-float v1, p2, v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-gez v1, :cond_1c

    .line 26
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 28
    return v2

    .line 29
    :cond_1c
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 31
    cmpl-float v1, p2, v0

    .line 33
    if-lez v1, :cond_25

    .line 35
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 37
    return v2

    .line 38
    :cond_25
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2c

    .line 44
    return v2

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    return p1
.end method
