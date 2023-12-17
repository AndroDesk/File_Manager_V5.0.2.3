.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 6
    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 3
    mul-float/2addr v0, p3

    .line 4
    sub-float v0, p2, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    .line 12
    if-eqz v0, :cond_10

    .line 14
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 19
    neg-float v0, v0

    .line 20
    :goto_13
    mul-float/2addr v0, p3

    .line 21
    invoke-virtual {p4, p2, v0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 24
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 26
    mul-float/2addr v0, p3

    .line 27
    add-float/2addr v0, p2

    .line 28
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 31
    invoke-virtual {p4, p1, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 34
    return-void
.end method
