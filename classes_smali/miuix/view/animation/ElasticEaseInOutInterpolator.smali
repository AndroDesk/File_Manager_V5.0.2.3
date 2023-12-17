.class public Lmiuix/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "ElasticEaseInOutInterpolator.java"

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
    invoke-direct {p0, v0, v0}, Lmiuix/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

    .line 4
    iput p2, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 15

    .line 1
    iget v0, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    .line 3
    iget v1, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

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
    const/high16 v3, 0x3f000000  # 0.5f

    .line 13
    div-float/2addr p1, v3

    .line 14
    const/high16 v3, 0x40000000  # 2.0f

    .line 16
    cmpl-float v3, p1, v3

    .line 18
    const/high16 v4, 0x3f800000  # 1.0f

    .line 20
    if-nez v3, :cond_16

    .line 22
    return v4

    .line 23
    :cond_16
    cmpl-float v3, v0, v2

    .line 25
    if-nez v3, :cond_1d

    .line 27
    const v0, 0x3ee66667  # 0.45000002f

    .line 30
    :cond_1d
    cmpl-float v2, v1, v2

    .line 32
    const-wide v5, 0x401921fb54442d18L  # 6.283185307179586

    .line 37
    if-eqz v2, :cond_37

    .line 39
    cmpg-float v2, v1, v4

    .line 41
    if-gez v2, :cond_2b

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    float-to-double v2, v0

    .line 45
    div-double/2addr v2, v5

    .line 46
    div-float v7, v4, v1

    .line 48
    float-to-double v7, v7

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 52
    move-result-wide v7

    .line 53
    mul-double/2addr v7, v2

    .line 54
    double-to-float v2, v7

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    :goto_37
    const/high16 v1, 0x40800000  # 4.0f

    .line 58
    div-float v2, v0, v1

    .line 60
    move v1, v4

    .line 61
    :goto_3c
    cmpg-float v3, p1, v4

    .line 63
    const-wide/high16 v7, 0x4000000000000000L  # 2.0

    .line 65
    if-gez v3, :cond_5c

    .line 67
    sub-float/2addr p1, v4

    .line 68
    const/high16 v3, -0x41000000  # -0.5f

    .line 70
    float-to-double v9, v1

    .line 71
    const/high16 v1, 0x41200000  # 10.0f

    .line 73
    mul-float/2addr v1, p1

    .line 74
    float-to-double v11, v1

    .line 75
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 78
    move-result-wide v7

    .line 79
    mul-double/2addr v7, v9

    .line 80
    sub-float/2addr p1, v2

    .line 81
    float-to-double v1, p1

    .line 82
    mul-double/2addr v1, v5

    .line 83
    float-to-double v4, v0

    .line 84
    div-double/2addr v1, v4

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 88
    move-result-wide v0

    .line 89
    mul-double/2addr v0, v7

    .line 90
    double-to-float p1, v0

    .line 91
    mul-float/2addr p1, v3

    .line 92
    return p1

    .line 93
    :cond_5c
    sub-float/2addr p1, v4

    .line 94
    float-to-double v3, v1

    .line 95
    const/high16 v1, -0x3ee00000  # -10.0f

    .line 97
    mul-float/2addr v1, p1

    .line 98
    float-to-double v9, v1

    .line 99
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 102
    move-result-wide v7

    .line 103
    mul-double/2addr v7, v3

    .line 104
    sub-float/2addr p1, v2

    .line 105
    float-to-double v1, p1

    .line 106
    mul-double/2addr v1, v5

    .line 107
    float-to-double v3, v0

    .line 108
    div-double/2addr v1, v3

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 112
    move-result-wide v0

    .line 113
    mul-double/2addr v0, v7

    .line 114
    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    .line 116
    mul-double/2addr v0, v2

    .line 117
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 119
    add-double/2addr v0, v2

    .line 120
    double-to-float p1, v0

    .line 121
    return p1
.end method
