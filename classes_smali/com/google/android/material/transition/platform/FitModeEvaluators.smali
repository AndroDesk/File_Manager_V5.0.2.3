.class Lcom/google/android/material/transition/platform/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 8
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;

    .line 10
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;-><init>()V

    .line 13
    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;
    .registers 4

    .line 1
    if-eqz p0, :cond_1a

    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p0, p1, :cond_17

    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p0, p1, :cond_b

    .line 9
    sget-object p0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p2, "Invalid fit mode: "

    .line 16
    invoke-static {p2, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_17
    sget-object p0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_23

    .line 33
    sget-object p0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    sget-object p0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 38
    :goto_25
    return-object p0
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 16
    move-result p2

    .line 17
    mul-float v2, p2, v0

    .line 19
    div-float/2addr v2, v1

    .line 20
    mul-float/2addr v1, p1

    .line 21
    div-float/2addr v1, v0

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz p0, :cond_1e

    .line 26
    cmpl-float p0, v2, p1

    .line 28
    if-ltz p0, :cond_23

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    cmpl-float p0, v1, p2

    .line 33
    if-ltz p0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v3

    .line 37
    :goto_24
    return v0
.end method
