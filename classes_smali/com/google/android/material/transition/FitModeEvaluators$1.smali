.class final Lcom/google/android/material/transition/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/FitModeResult;)V
    .registers 5

    .line 1
    iget v0, p3, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    .line 3
    iget p3, p3, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    .line 5
    sub-float/2addr v0, p3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result p3

    .line 10
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 12
    mul-float/2addr p3, p2

    .line 13
    sub-float/2addr v0, p3

    .line 14
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 16
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/FitModeResult;
    .registers 10

    .line 1
    invoke-static {p4, p6, p2, p3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    .line 4
    move-result v0

    .line 5
    div-float p2, v0, p4

    .line 7
    div-float p3, v0, p6

    .line 9
    mul-float/2addr p5, p2

    .line 10
    mul-float/2addr p7, p3

    .line 11
    new-instance v1, Lcom/google/android/material/transition/FitModeResult;

    .line 13
    move-object p1, v1

    .line 14
    move p4, v0

    .line 15
    move p6, v0

    .line 16
    invoke-direct/range {p1 .. p7}, Lcom/google/android/material/transition/FitModeResult;-><init>(FFFFFF)V

    .line 19
    return-object v1
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/FitModeResult;)Z
    .registers 3

    .line 1
    iget v0, p1, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    .line 3
    iget p1, p1, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    .line 5
    cmpl-float p1, v0, p1

    .line 7
    if-lez p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method
