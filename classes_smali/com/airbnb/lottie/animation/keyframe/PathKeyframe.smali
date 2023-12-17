.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.super Lcom/airbnb/lottie/value/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/Keyframe<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field private final pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v2, p2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 3
    iget-object v3, p2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 5
    iget-object v4, p2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 7
    iget v5, p2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 9
    iget-object v6, p2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 21
    return-void
.end method


# virtual methods
.method public createPath()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 7
    if-eqz v1, :cond_1b

    .line 9
    check-cast v1, Landroid/graphics/PointF;

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Landroid/graphics/PointF;

    .line 14
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 16
    check-cast v0, Landroid/graphics/PointF;

    .line 18
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->equals(FF)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 31
    if-eqz v1, :cond_34

    .line 33
    if-nez v0, :cond_34

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 37
    check-cast v0, Landroid/graphics/PointF;

    .line 39
    check-cast v1, Landroid/graphics/PointF;

    .line 41
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    .line 43
    iget-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 45
    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 47
    invoke-static {v0, v1, v3, v2}, Lcom/airbnb/lottie/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    .line 53
    :cond_34
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    .line 3
    return-object v0
.end method
