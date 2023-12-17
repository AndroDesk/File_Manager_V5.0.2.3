.class public Lmiuix/view/animation/ElasticEaseOutInterpolator;
.super Ljava/lang/Object;
.source "ElasticEaseOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mAmplitude:F

.field private final mPeriod:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lmiuix/view/animation/ElasticEaseOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mAmplitude:F

    .line 4
    iput p2, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 14

    .line 1
    iget v0, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mPeriod:F

    .line 3
    iget v1, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mAmplitude:F

    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v3, p1, v2

    .line 8
    if-nez v3, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    const/high16 v3, 0x3f800000  # 1.0f

    .line 13
    cmpl-float v4, p1, v3

    .line 15
    if-nez v4, :cond_11

    .line 17
    return v3

    .line 18
    :cond_11
    cmpl-float v4, v0, v2

    .line 20
    if-nez v4, :cond_18

    .line 22
    const v0, 0x3e99999a  # 0.3f

    .line 25
    :cond_18
    cmpl-float v2, v1, v2

    .line 27
    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    .line 32
    if-eqz v2, :cond_31

    .line 34
    cmpg-float v2, v1, v3

    .line 36
    if-gez v2, :cond_26

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    float-to-double v6, v0

    .line 40
    div-double/2addr v6, v4

    .line 41
    div-float/2addr v3, v1

    .line 42
    float-to-double v2, v3

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    .line 46
    move-result-wide v2

    .line 47
    mul-double/2addr v2, v6

    .line 48
    double-to-float v2, v2

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    :goto_31
    const/high16 v1, 0x40800000  # 4.0f

    .line 52
    div-float v2, v0, v1

    .line 54
    move v1, v3

    .line 55
    :goto_36
    float-to-double v6, v1

    .line 56
    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    .line 58
    const/high16 v1, -0x3ee00000  # -10.0f

    .line 60
    mul-float/2addr v1, p1

    .line 61
    float-to-double v10, v1

    .line 62
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 65
    move-result-wide v8

    .line 66
    mul-double/2addr v8, v6

    .line 67
    sub-float/2addr p1, v2

    .line 68
    float-to-double v1, p1

    .line 69
    mul-double/2addr v1, v4

    .line 70
    float-to-double v3, v0

    .line 71
    div-double/2addr v1, v3

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 75
    move-result-wide v0

    .line 76
    mul-double/2addr v0, v8

    .line 77
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 79
    add-double/2addr v0, v2

    .line 80
    double-to-float p1, v0

    .line 81
    return p1
.end method
