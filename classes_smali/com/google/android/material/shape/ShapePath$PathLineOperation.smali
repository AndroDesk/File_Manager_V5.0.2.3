.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    .line 3
    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 9
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    .line 11
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 19
    return-void
.end method
