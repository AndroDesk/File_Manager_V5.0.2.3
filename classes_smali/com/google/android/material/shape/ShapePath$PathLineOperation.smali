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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p0
.end method

.method public static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method public static synthetic access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 1

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p0
.end method

.method public static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
