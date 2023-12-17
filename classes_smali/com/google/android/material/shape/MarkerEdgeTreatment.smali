.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "MarkerEdgeTreatment.java"


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 4
    const v0, 0x3a83126f  # 0.001f

    .line 7
    sub-float/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 10
    return-void
.end method


# virtual methods
.method public forceIntersection()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 13

    .line 1
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 3
    float-to-double v0, p1

    .line 4
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v4

    .line 10
    mul-double/2addr v4, v0

    .line 11
    div-double/2addr v4, v2

    .line 12
    double-to-float p1, v4

    .line 13
    iget p3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 15
    float-to-double v0, p3

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 19
    move-result-wide v0

    .line 20
    float-to-double v4, p1

    .line 21
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 24
    move-result-wide v4

    .line 25
    sub-double/2addr v0, v4

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    move-result-wide v0

    .line 30
    double-to-float p3, v0

    .line 31
    sub-float v0, p2, p1

    .line 33
    iget v1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 35
    float-to-double v4, v1

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    move-result-wide v6

    .line 40
    mul-double/2addr v6, v4

    .line 41
    iget v1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 43
    float-to-double v4, v1

    .line 44
    sub-double/2addr v6, v4

    .line 45
    neg-double v4, v6

    .line 46
    double-to-float v1, v4

    .line 47
    add-float/2addr v1, p3

    .line 48
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 51
    iget v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 53
    float-to-double v0, v0

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    move-result-wide v4

    .line 58
    mul-double/2addr v4, v0

    .line 59
    iget v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 61
    float-to-double v0, v0

    .line 62
    sub-double/2addr v4, v0

    .line 63
    neg-double v0, v4

    .line 64
    double-to-float v0, v0

    .line 65
    invoke-virtual {p4, p2, v0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 68
    add-float/2addr p2, p1

    .line 69
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 71
    float-to-double v0, p1

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 75
    move-result-wide v2

    .line 76
    mul-double/2addr v2, v0

    .line 77
    iget p1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 79
    float-to-double v0, p1

    .line 80
    sub-double/2addr v2, v0

    .line 81
    neg-double v0, v2

    .line 82
    double-to-float p1, v0

    .line 83
    add-float/2addr p1, p3

    .line 84
    invoke-virtual {p4, p2, p1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 87
    return-void
.end method
