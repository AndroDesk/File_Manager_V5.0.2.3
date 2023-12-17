.class public Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field public static final a:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-wide v0, 0x4046800000000000L  # 45.0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    move-result-wide v0

    .line 10
    double-to-float v0, v0

    .line 11
    sput v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:F

    .line 13
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    const/4 p1, 0x0

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v0

    .line 10
    double-to-float v0, v0

    .line 11
    sub-float/2addr v0, p1

    .line 12
    mul-float/2addr v0, p1

    .line 13
    add-float/2addr v0, p1

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    sget v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:F

    .line 19
    invoke-static {v1, p1, p1, p1}, Lf0/e;->a(FFFF)F

    .line 22
    move-result p1

    .line 23
    float-to-double v0, v0

    .line 24
    float-to-double v2, p1

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 28
    move-result-wide v4

    .line 29
    mul-double/2addr v4, v0

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 36
    move-result-wide v2

    .line 37
    mul-double/2addr v2, v0

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 41
    const/4 p1, 0x0

    .line 42
    throw p1
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
