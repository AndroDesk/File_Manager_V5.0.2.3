.class public final Lcom/google/android/material/transition/MaterialArcMotion;
.super Lf1/j;
.source "MaterialArcMotion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/j;-><init>()V

    .line 4
    return-void
.end method

.method private static getControlPoint(FFFF)Landroid/graphics/PointF;
    .registers 5

    .line 1
    cmpl-float v0, p1, p3

    .line 3
    if-lez v0, :cond_a

    .line 5
    new-instance p0, Landroid/graphics/PointF;

    .line 7
    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance p1, Landroid/graphics/PointF;

    .line 13
    invoke-direct {p1, p0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    return-object p1
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialArcMotion;->getControlPoint(FFFF)Landroid/graphics/PointF;

    .line 12
    move-result-object p1

    .line 13
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 15
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 17
    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 20
    return-object v0
.end method
