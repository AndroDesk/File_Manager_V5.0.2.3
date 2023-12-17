.class public final Lmiuix/animation/physics/SpringAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiuix/animation/physics/SpringForce;


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

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 7
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 11
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 13
    new-instance p1, Lmiuix/animation/physics/SpringForce;

    invoke-direct {p1, p3}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method private sanityCheck()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    if-eqz v0, :cond_28

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 8
    move-result v0

    .line 9
    float-to-double v0, v0

    .line 10
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 12
    float-to-double v2, v2

    .line 13
    cmpl-double v2, v0, v2

    .line 15
    if-gtz v2, :cond_20

    .line 17
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 19
    float-to-double v2, v2

    .line 20
    cmpg-double v0, v0, v2

    .line 22
    if-ltz v0, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 27
    const-string v1, "Final position of the spring cannot be less than the min value."

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 35
    const-string v1, "Final position of the spring cannot be greater than the max value."

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 9
    goto :goto_1c

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 12
    if-nez v0, :cond_14

    .line 14
    new-instance v0, Lmiuix/animation/physics/SpringForce;

    .line 16
    invoke-direct {v0, p1}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    .line 19
    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 26
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 29
    :goto_1c
    return-void
.end method

.method public canSkipToEnd()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmpl-double v0, v0, v2

    .line 9
    if-lez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public getAcceleration(FF)F
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/SpringForce;->getAcceleration(FF)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSpring()Lmiuix/animation/physics/SpringForce;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    return-object v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/SpringForce;->isAtEquilibrium(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 3
    return-object p0
.end method

.method public setValueThreshold(F)V
    .registers 2

    return-void
.end method

.method public skipToEnd()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->canSkipToEnd()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_18

    .line 17
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 19
    if-eqz v0, :cond_17

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 24
    :cond_17
    return-void

    .line 25
    :cond_18
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 27
    const-string v1, "Animations may only be started on the same thread as the animation handler"

    .line 29
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 35
    const-string v1, "Spring animations can only come to an end when there is damping"

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public start()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/animation/physics/SpringAnimation;->sanityCheck()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    .line 9
    move-result v1

    .line 10
    float-to-double v1, v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/physics/SpringForce;->setValueThreshold(D)V

    .line 14
    invoke-super {p0}, Lmiuix/animation/physics/DynamicAnimation;->start()V

    .line 17
    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const v5, 0x7f7fffff  # Float.MAX_VALUE

    .line 11
    if-eqz v1, :cond_26

    .line 13
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 15
    cmpl-float v6, v1, v5

    .line 17
    if-eqz v6, :cond_19

    .line 19
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 21
    invoke-virtual {v6, v1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 24
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 26
    :cond_19
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 28
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 31
    move-result v1

    .line 32
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 34
    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 36
    iput-boolean v3, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 38
    return v2

    .line 39
    :cond_26
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 41
    cmpl-float v1, v1, v5

    .line 43
    if-eqz v1, :cond_63

    .line 45
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 47
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 50
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 52
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 54
    float-to-double v7, v1

    .line 55
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 57
    float-to-double v9, v1

    .line 58
    const-wide/16 v11, 0x2

    .line 60
    div-long v18, p1, v11

    .line 62
    move-wide/from16 v11, v18

    .line 64
    invoke-virtual/range {v6 .. v12}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 67
    move-result-object v1

    .line 68
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 70
    iget v7, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 72
    invoke-virtual {v6, v7}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 75
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 77
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 79
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 81
    float-to-double v14, v5

    .line 82
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 84
    float-to-double v5, v1

    .line 85
    move-wide/from16 v16, v5

    .line 87
    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 90
    move-result-object v1

    .line 91
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 93
    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 95
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 97
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 99
    goto :goto_7b

    .line 100
    :cond_63
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 102
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 104
    float-to-double v14, v1

    .line 105
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 107
    float-to-double v5, v1

    .line 108
    move-wide/from16 v16, v5

    .line 110
    move-wide/from16 v18, p1

    .line 112
    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 115
    move-result-object v1

    .line 116
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 118
    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 120
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 122
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 124
    :goto_7b
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 126
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 128
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 131
    move-result v1

    .line 132
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 134
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 136
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 139
    move-result v1

    .line 140
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 142
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 144
    invoke-virtual {v0, v1, v5}, Lmiuix/animation/physics/SpringAnimation;->isAtEquilibrium(FF)Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_a0

    .line 150
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 152
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 155
    move-result v1

    .line 156
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 158
    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 160
    return v2

    .line 161
    :cond_a0
    return v3
.end method
