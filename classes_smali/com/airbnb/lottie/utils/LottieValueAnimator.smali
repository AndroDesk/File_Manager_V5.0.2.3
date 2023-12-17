.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field public running:Z

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 20
    const/high16 v1, -0x31000000

    .line 22
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 24
    const/high16 v1, 0x4f000000

    .line 26
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 28
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 30
    return-void
.end method

.method private getFrameDurationNs()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 8
    return v0

    .line 9
    :cond_8
    const v1, 0x4e6e6b28  # 1.0E9f

    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    .line 15
    move-result v0

    .line 16
    div-float/2addr v1, v0

    .line 17
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 22
    move-result v0

    .line 23
    div-float/2addr v1, v0

    .line 24
    return v1
.end method

.method private isReversed()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 8
    if-gez v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method private verifyFrame()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 8
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 10
    cmpg-float v1, v0, v1

    .line 12
    if-ltz v1, :cond_14

    .line 14
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 16
    cmpl-float v0, v0, v1

    .line 18
    if-gtz v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    const/4 v1, 0x3

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    const/4 v2, 0x0

    .line 27
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 29
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v1, v2

    .line 35
    const/4 v2, 0x1

    .line 36
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 38
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v1, v2

    .line 44
    const/4 v2, 0x2

    .line 45
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 47
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v1, v2

    .line 53
    const-string v2, "Frame must be [%f,%f]. It is %f"

    .line 55
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyCancel()V

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 7
    return-void
.end method

.method public clearComposition()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    const/high16 v0, -0x31000000

    .line 6
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 8
    const/high16 v0, 0x4f000000

    .line 10
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 12
    return-void
.end method

.method public doFrame(J)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 6
    if-eqz v0, :cond_b5

    .line 8
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_f

    .line 14
    goto/16 :goto_b5

    .line 16
    :cond_f
    const-string v0, "LottieValueAnimator#doFrame"

    .line 18
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 21
    iget-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 23
    const-wide/16 v3, 0x0

    .line 25
    cmp-long v5, v1, v3

    .line 27
    if-nez v5, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    sub-long v3, p1, v1

    .line 32
    :goto_1f
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    .line 35
    move-result v1

    .line 36
    long-to-float v2, v3

    .line 37
    div-float/2addr v2, v1

    .line 38
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 40
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2e

    .line 46
    neg-float v2, v2

    .line 47
    :cond_2e
    add-float/2addr v1, v2

    .line 48
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 57
    move-result v3

    .line 58
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    .line 61
    move-result v1

    .line 62
    xor-int/lit8 v1, v1, 0x1

    .line 64
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 69
    move-result v3

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 73
    move-result v4

    .line 74
    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 77
    move-result v2

    .line 78
    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 80
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 85
    if-eqz v1, :cond_af

    .line 87
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 90
    move-result v1

    .line 91
    const/4 v2, -0x1

    .line 92
    if-eq v1, v2, :cond_82

    .line 94
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 96
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 99
    move-result v2

    .line 100
    if-lt v1, v2, :cond_82

    .line 102
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 104
    const/4 p2, 0x0

    .line 105
    cmpg-float p1, p1, p2

    .line 107
    if-gez p1, :cond_71

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 112
    move-result p1

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 117
    move-result p1

    .line 118
    :goto_75
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 123
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    .line 130
    goto :goto_af

    .line 131
    :cond_82
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyRepeat()V

    .line 134
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 138
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 140
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 143
    move-result v1

    .line 144
    const/4 v2, 0x2

    .line 145
    if-ne v1, v2, :cond_9c

    .line 147
    iget-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 149
    xor-int/lit8 v1, v1, 0x1

    .line 151
    iput-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 153
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 156
    goto :goto_ad

    .line 157
    :cond_9c
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_a7

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 166
    move-result v1

    .line 167
    goto :goto_ab

    .line 168
    :cond_a7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 171
    move-result v1

    .line 172
    :goto_ab
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 174
    :goto_ad
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 176
    :cond_af
    :goto_af
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 179
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 182
    :cond_b5
    :goto_b5
    return-void
.end method

.method public endAnimation()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    .line 11
    return-void
.end method

.method public getAnimatedFraction()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 19
    sub-float/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 27
    move-result v2

    .line 28
    :goto_1b
    sub-float/2addr v1, v2

    .line 29
    div-float/2addr v0, v1

    .line 30
    return v0

    .line 31
    :cond_1e
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 36
    move-result v1

    .line 37
    sub-float/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 45
    move-result v2

    .line 46
    goto :goto_1b
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 12
    move-result v0

    .line 13
    sub-float/2addr v1, v0

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 22
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 25
    move-result v2

    .line 26
    sub-float/2addr v0, v2

    .line 27
    div-float/2addr v1, v0

    .line 28
    return v1
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 11
    move-result v0

    .line 12
    float-to-long v0, v0

    .line 13
    :goto_c
    return-wide v0
.end method

.method public getFrame()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 3
    return v0
.end method

.method public getMaxFrame()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 9
    const/high16 v2, 0x4f000000

    .line 11
    cmpl-float v2, v1, v2

    .line 13
    if-nez v2, :cond_12

    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 18
    move-result v1

    .line 19
    :cond_12
    return v1
.end method

.method public getMinFrame()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 9
    const/high16 v2, -0x31000000

    .line 11
    cmpl-float v2, v1, v2

    .line 13
    if-nez v2, :cond_12

    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 18
    move-result v1

    .line 19
    :cond_12
    return v1
.end method

.method public getSpeed()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 3
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 3
    return v0
.end method

.method public pauseAnimation()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 4
    return-void
.end method

.method public playAnimation()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyStart(Z)V

    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 20
    move-result v0

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 25
    move-result v0

    .line 26
    :goto_19
    float-to-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 31
    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 41
    return-void
.end method

.method public postFrameCallback()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 18
    :cond_11
    return-void
.end method

.method public removeFrameCallback()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    return-void
.end method

.method public removeFrameCallback(Z)V
    .registers 3

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    :cond_c
    return-void
.end method

.method public resumeAnimation()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_23

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 24
    move-result v1

    .line 25
    cmpl-float v0, v0, v1

    .line 27
    if-nez v0, :cond_23

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 35
    goto :goto_3b

    .line 36
    :cond_23
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3b

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 49
    move-result v1

    .line 50
    cmpl-float v0, v0, v1

    .line 52
    if-nez v0, :cond_3b

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method public reverseAnimationSpeed()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 9
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 10
    if-eqz v0, :cond_27

    .line 12
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 14
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    int-to-float v0, v0

    .line 24
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 26
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 29
    move-result p1

    .line 30
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    int-to-float p1, p1

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 39
    goto :goto_36

    .line 40
    :cond_27
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    int-to-float v0, v0

    .line 46
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    int-to-float p1, p1

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 55
    :goto_36
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 60
    float-to-int p1, p1

    .line 61
    int-to-float p1, p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 68
    return-void
.end method

.method public setFrame(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 22
    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 29
    return-void
.end method

.method public setMaxFrame(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 6
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .registers 6

    .line 1
    cmpl-float v0, p1, p2

    .line 3
    if-gtz v0, :cond_34

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 7
    if-nez v0, :cond_c

    .line 9
    const v0, -0x800001

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 16
    move-result v0

    .line 17
    :goto_10
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 19
    if-nez v1, :cond_18

    .line 21
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 28
    move-result v1

    .line 29
    :goto_1c
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 35
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 41
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 43
    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 46
    move-result p1

    .line 47
    float-to-int p1, p1

    .line 48
    int-to-float p1, p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 52
    return-void

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object p1

    .line 63
    aput-object p1, v1, v2

    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    move-result-object p2

    .line 70
    aput-object p2, v1, p1

    .line 72
    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    .line 74
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0
.end method

.method public setMinFrame(I)V
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 4
    float-to-int v0, v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 9
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_10

    .line 7
    iget-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 9
    if-eqz p1, :cond_10

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 17
    :cond_10
    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 3
    return-void
.end method
