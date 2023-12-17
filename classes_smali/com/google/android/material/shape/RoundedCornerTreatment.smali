.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# instance fields
.field public radius:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    .line 2
    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .registers 12

    .line 1
    mul-float v0, p4, p3

    .line 3
    const/high16 v1, 0x43340000  # 180.0f

    .line 5
    sub-float v2, v1, p2

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 11
    const/high16 v0, 0x40000000  # 2.0f

    .line 13
    mul-float/2addr p4, v0

    .line 14
    mul-float v4, p4, p3

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/high16 v5, 0x43340000  # 180.0f

    .line 20
    move-object v0, p1

    .line 21
    move v3, v4

    .line 22
    move v6, p2

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 26
    return-void
.end method
