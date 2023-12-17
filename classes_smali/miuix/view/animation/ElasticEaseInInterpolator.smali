.class public Lmiuix/view/animation/ElasticEaseInInterpolator;
.super Ljava/lang/Object;
.source "ElasticEaseInInterpolator.java"

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
    invoke-direct {p0, v0, v0}, Lmiuix/view/animation/ElasticEaseInInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/ElasticEaseInInterpolator;->mAmplitude:F

    .line 4
    iput p2, p0, Lmiuix/view/animation/ElasticEaseInInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 14

    .line 1
    iget v0, p0, Lmiuix/view/animation/ElasticEaseInInterpolator;->mPeriod:F

    .line 3
    iget v1, p0, Lmiuix/view/animation/ElasticEaseInInterpolator;->mAmplitude:F

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
    if-eqz v2, :cond_32

    .line 34
    cmpg-float v2, v1, v3

    .line 36
    if-gez v2, :cond_26

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    float-to-double v6, v0

    .line 40
    div-double/2addr v6, v4

    .line 41
    div-float v2, v3, v1

    .line 43
    float-to-double v8, v2

    .line 44
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    .line 47
    move-result-wide v8

    .line 48
    mul-double/2addr v8, v6

    .line 49
    double-to-float v2, v8

    .line 50
    goto :goto_37

    .line 51
    :cond_32
    :goto_32
    const/high16 v1, 0x40800000  # 4.0f

    .line 53
    div-float v2, v0, v1

    .line 55
    move v1, v3

    .line 56
    :goto_37
    sub-float/2addr p1, v3

    .line 57
    float-to-double v6, v1

    .line 58
    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    .line 60
    const/high16 v1, 0x41200000  # 10.0f

    .line 62
    mul-float/2addr v1, p1

    .line 63
    float-to-double v10, v1

    .line 64
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 67
    move-result-wide v8

    .line 68
    mul-double/2addr v8, v6

    .line 69
    sub-float/2addr p1, v2

    .line 70
    float-to-double v1, p1

    .line 71
    mul-double/2addr v1, v4

    .line 72
    float-to-double v3, v0

    .line 73
    div-double/2addr v1, v3

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 77
    move-result-wide v0

    .line 78
    mul-double/2addr v0, v8

    .line 79
    double-to-float p1, v0

    .line 80
    neg-float p1, p1

    .line 81
    return p1
.end method
