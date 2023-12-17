.class public Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 5
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 6
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 12
    iput-object p5, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;
    .registers 8

    .line 1
    new-instance v6, Lcom/google/android/material/animation/MotionTiming;

    .line 3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    .line 14
    move-result-object v5

    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    .line 19
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 22
    move-result v0

    .line 23
    iput v0, v6, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 25
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 28
    move-result p0

    .line 29
    iput p0, v6, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 31
    return-object v6
.end method

.method private static getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 7
    if-nez v0, :cond_19

    .line 9
    if-nez p0, :cond_b

    .line 11
    goto :goto_19

    .line 12
    :cond_b
    instance-of v0, p0, Landroid/view/animation/AccelerateInterpolator;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 18
    return-object p0

    .line 19
    :cond_12
    instance-of v0, p0, Landroid/view/animation/DecelerateInterpolator;

    .line 21
    if-eqz v0, :cond_18

    .line 23
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 25
    :cond_18
    return-object p0

    .line 26
    :cond_19
    :goto_19
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 28
    return-object p0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    .line 24
    if-eqz v0, :cond_29

    .line 26
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 42
    :cond_29
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lcom/google/android/material/animation/MotionTiming;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 20
    move-result-wide v4

    .line 21
    cmp-long v0, v2, v4

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v2, v4

    .line 36
    if-eqz v0, :cond_26

    .line 38
    return v1

    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    .line 46
    move-result v2

    .line 47
    if-eq v0, v2, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    .line 57
    move-result v2

    .line 58
    if-eq v0, v2, :cond_3c

    .line 60
    return v1

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public getDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 3
    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 3
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 8
    :goto_7
    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 3
    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 8
    move-result-wide v2

    .line 9
    const/16 v4, 0x20

    .line 11
    ushr-long/2addr v2, v4

    .line 12
    xor-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 23
    move-result-wide v5

    .line 24
    ushr-long v3, v5, v4

    .line 26
    xor-long/2addr v1, v3

    .line 27
    long-to-int v1, v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, v0

    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const/16 v1, 0x7b

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " delay: "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 46
    move-result-wide v1

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " duration: "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " interpolator: "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " repeatCount: "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, " repeatMode: "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "}\n"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method
