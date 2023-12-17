.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final FORMULA_MULTIPLIER:F = 4.5f

.field private static final FORMULA_OFFSET:F = 2.0f


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlayColor:I

.field private final elevationOverlayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 13
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 21
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object p1

    .line 37
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 39
    iput p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    .line 41
    return-void
.end method

.method private isThemeSurfaceColor(I)Z
    .registers 3

    .line 1
    const/16 v0, 0xff

    .line 3
    invoke-static {p1, v0}, Lf0/d;->c(II)I

    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 9
    if-ne p1, v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x437f0000  # 255.0f

    .line 7
    mul-float/2addr p1, v0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public calculateOverlayAlphaFraction(F)F
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, v0, v1

    .line 6
    if-lez v2, :cond_23

    .line 8
    cmpg-float v2, p1, v1

    .line 10
    if-gtz v2, :cond_c

    .line 12
    goto :goto_23

    .line 13
    :cond_c
    div-float/2addr p1, v0

    .line 14
    const/high16 v0, 0x40900000  # 4.5f

    .line 16
    float-to-double v1, p1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    .line 20
    move-result-wide v1

    .line 21
    double-to-float p1, v1

    .line 22
    mul-float/2addr p1, v0

    .line 23
    const/high16 v0, 0x40000000  # 2.0f

    .line 25
    add-float/2addr p1, v0

    .line 26
    const/high16 v0, 0x42c80000  # 100.0f

    .line 28
    div-float/2addr p1, v0

    .line 29
    const/high16 v0, 0x3f800000  # 1.0f

    .line 31
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_23
    :goto_23
    return v1
.end method

.method public compositeOverlay(IF)I
    .registers 5

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result p2

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    .line 5
    invoke-static {p1, v1}, Lf0/d;->c(II)I

    move-result p1

    .line 6
    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 7
    invoke-static {p1, v1, p2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p1

    .line 8
    invoke-static {p1, v0}, Lf0/d;->c(II)I

    move-result p1

    return p1
.end method

.method public compositeOverlay(IFLandroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result p3

    add-float/2addr p3, p2

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result p1

    return p1
.end method

.method public compositeOverlayIfNeeded(IF)I
    .registers 4

    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result p1

    :cond_e
    return p1
.end method

.method public compositeOverlayIfNeeded(IFLandroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result p3

    add-float/2addr p3, p2

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result p1

    return p1
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(F)I
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result p1

    return p1
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(FLandroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result p2

    add-float/2addr p2, p1

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    move-result p1

    return p1
.end method

.method public getParentAbsoluteElevation(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getThemeElevationOverlayColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 3
    return v0
.end method

.method public getThemeSurfaceColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 3
    return v0
.end method

.method public isThemeElevationOverlayEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 3
    return v0
.end method
