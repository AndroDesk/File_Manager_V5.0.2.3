.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 6
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 8
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 14
    return-void
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 3
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p3

    .line 7
    move-object/from16 v9, p4

    .line 9
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 11
    const/4 v10, 0x0

    .line 12
    cmpl-float v4, v3, v10

    .line 14
    if-nez v4, :cond_13

    .line 16
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 19
    return-void

    .line 20
    :cond_13
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 22
    const/high16 v11, 0x40000000  # 2.0f

    .line 24
    mul-float/2addr v4, v11

    .line 25
    add-float/2addr v4, v3

    .line 26
    div-float v12, v4, v11

    .line 28
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 30
    mul-float v13, v2, v3

    .line 32
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 34
    add-float v14, p2, v3

    .line 36
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 38
    mul-float/2addr v3, v2

    .line 39
    const/high16 v4, 0x3f800000  # 1.0f

    .line 41
    invoke-static {v4, v2, v12, v3}, Lf0/e;->a(FFFF)F

    .line 44
    move-result v15

    .line 45
    div-float v2, v15, v12

    .line 47
    cmpl-float v2, v2, v4

    .line 49
    if-ltz v2, :cond_36

    .line 51
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 54
    return-void

    .line 55
    :cond_36
    add-float v2, v12, v13

    .line 57
    mul-float/2addr v2, v2

    .line 58
    add-float v3, v15, v13

    .line 60
    mul-float v4, v3, v3

    .line 62
    sub-float/2addr v2, v4

    .line 63
    float-to-double v4, v2

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 67
    move-result-wide v4

    .line 68
    double-to-float v2, v4

    .line 69
    sub-float v4, v14, v2

    .line 71
    add-float v16, v14, v2

    .line 73
    div-float/2addr v2, v3

    .line 74
    float-to-double v2, v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    .line 78
    move-result-wide v2

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 82
    move-result-wide v2

    .line 83
    double-to-float v8, v2

    .line 84
    const/high16 v2, 0x42b40000  # 90.0f

    .line 86
    sub-float v17, v2, v8

    .line 88
    invoke-virtual {v9, v4, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 91
    sub-float v3, v4, v13

    .line 93
    const/4 v5, 0x0

    .line 94
    add-float v6, v4, v13

    .line 96
    mul-float v18, v13, v11

    .line 98
    const/high16 v7, 0x43870000  # 270.0f

    .line 100
    move-object/from16 v2, p4

    .line 102
    move v4, v5

    .line 103
    move v5, v6

    .line 104
    move/from16 v6, v18

    .line 106
    move/from16 v19, v8

    .line 108
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 111
    sub-float v3, v14, v12

    .line 113
    neg-float v2, v12

    .line 114
    sub-float v4, v2, v15

    .line 116
    add-float v5, v14, v12

    .line 118
    sub-float v6, v12, v15

    .line 120
    const/high16 v2, 0x43340000  # 180.0f

    .line 122
    sub-float v7, v2, v17

    .line 124
    mul-float v17, v17, v11

    .line 126
    sub-float v8, v17, v2

    .line 128
    move-object/from16 v2, p4

    .line 130
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 133
    sub-float v3, v16, v13

    .line 135
    const/4 v4, 0x0

    .line 136
    add-float v5, v16, v13

    .line 138
    const/high16 v2, 0x43870000  # 270.0f

    .line 140
    sub-float v7, v2, v19

    .line 142
    move-object/from16 v2, p4

    .line 144
    move/from16 v6, v18

    .line 146
    move/from16 v8, v19

    .line 148
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 151
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 154
    return-void
.end method

.method public getFabCradleMargin()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 3
    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 3
    return v0
.end method

.method public getFabDiameter()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 3
    return v0
.end method

.method public getHorizontalOffset()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 3
    return v0
.end method

.method public setCradleVerticalOffset(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_8

    .line 6
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "cradleVerticalOffset must be positive."

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method public setFabCradleMargin(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 3
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 3
    return-void
.end method

.method public setFabDiameter(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 3
    return-void
.end method

.method public setHorizontalOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 3
    return-void
.end method
