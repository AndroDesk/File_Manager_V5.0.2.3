.class Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 6
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 8
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 10
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 9
    sub-float/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 12
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 18
    sub-float/2addr v1, v2

    .line 19
    new-instance v2, Landroid/graphics/RectF;

    .line 21
    float-to-double v3, v0

    .line 22
    float-to-double v0, v1

    .line 23
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 26
    move-result-wide v0

    .line 27
    double-to-float v0, v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    .line 34
    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 37
    iget p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 39
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 51
    invoke-virtual {p2, p4, v0, v2, p3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 54
    return-void
.end method

.method public getAngle()F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 9
    sub-float/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 12
    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 18
    sub-float/2addr v1, v2

    .line 19
    div-float/2addr v0, v1

    .line 20
    float-to-double v0, v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 28
    move-result-wide v0

    .line 29
    double-to-float v0, v0

    .line 30
    return v0
.end method
