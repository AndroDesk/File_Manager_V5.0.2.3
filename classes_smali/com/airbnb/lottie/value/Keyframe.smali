.class public Lcom/airbnb/lottie/value/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_FLOAT:F = -3987645.8f

.field private static final UNSET_INT:I = 0x2ec8fb09


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field public endFrame:Ljava/lang/Float;

.field private endProgress:F

.field public endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private endValueFloat:F

.field private endValueInt:I

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startValueFloat:F

.field private startValueInt:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 3
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    .line 4
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 7
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 11
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 13
    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 14
    iput p5, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 15
    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 17
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 20
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 22
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 24
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 25
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 29
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 7
    if-ltz v0, :cond_12

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 12
    move-result v0

    .line 13
    cmpg-float p1, p1, v0

    .line 15
    if-gez p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public getEndProgress()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    if-nez v0, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 10
    const/4 v2, 0x1

    .line 11
    cmpl-float v0, v0, v2

    .line 13
    if-nez v0, :cond_2c

    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 17
    if-nez v0, :cond_15

    .line 19
    iput v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 21
    goto :goto_2c

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v1

    .line 32
    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 34
    sub-float/2addr v1, v2

    .line 35
    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 37
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    .line 40
    move-result v2

    .line 41
    div-float/2addr v1, v2

    .line 42
    add-float/2addr v1, v0

    .line 43
    iput v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 45
    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 47
    return v0
.end method

.method public getEndValueFloat()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 3
    const v1, -0x358c9d09

    .line 6
    cmpl-float v0, v0, v1

    .line 8
    if-nez v0, :cond_13

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Float;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 20
    :cond_13
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 22
    return v0
.end method

.method public getEndValueInt()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 3
    const v1, 0x2ec8fb09

    .line 6
    if-ne v0, v1, :cond_11

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 18
    :cond_11
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 20
    return v0
.end method

.method public getStartProgress()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 9
    const/4 v2, 0x1

    .line 10
    cmpl-float v1, v1, v2

    .line 12
    if-nez v1, :cond_1d

    .line 14
    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 19
    move-result v0

    .line 20
    sub-float/2addr v1, v0

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 23
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    .line 26
    move-result v0

    .line 27
    div-float/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 30
    :cond_1d
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 32
    return v0
.end method

.method public getStartValueFloat()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 3
    const v1, -0x358c9d09

    .line 6
    cmpl-float v0, v0, v1

    .line 8
    if-nez v0, :cond_13

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Float;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 20
    :cond_13
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 22
    return v0
.end method

.method public getStartValueInt()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 3
    const v1, 0x2ec8fb09

    .line 6
    if-ne v0, v1, :cond_11

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 18
    :cond_11
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 20
    return v0
.end method

.method public isStatic()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

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
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Keyframe{startValue="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", endValue="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", startFrame="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", endFrame="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", interpolator="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v1, 0x7d

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
