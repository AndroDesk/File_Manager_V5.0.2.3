.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 1
    if-eqz p0, :cond_10

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_a

    .line 6
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance p0, Lcom/google/android/material/shape/CutCornerTreatment;

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>()V

    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    .line 22
    return-object p0
.end method

.method public static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    .line 6
    return-object v0
.end method

.method public static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 6
    return-object v0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 14
    :cond_d
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_d
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setParentAbsoluteElevation(F)V

    :cond_d
    return-void
.end method
