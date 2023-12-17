.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    .line 8
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setLeft(F)V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setTop(F)V

    .line 10
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setRight(F)V

    .line 13
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setBottom(F)V

    .line 16
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1100(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1300(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getBottom()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 3
    return v0
.end method

.method private getLeft()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 3
    return v0
.end method

.method private getRight()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 3
    return v0
.end method

.method private getStartAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 3
    return v0
.end method

.method private getSweepAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 3
    return v0
.end method

.method private getTop()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 3
    return v0
.end method

.method private setBottom(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 3
    return-void
.end method

.method private setLeft(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 3
    return-void
.end method

.method private setRight(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 3
    return-void
.end method

.method private setStartAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 3
    return-void
.end method

.method private setSweepAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 3
    return-void
.end method

.method private setTop(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 3
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 9
    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    .line 14
    move-result v1

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    .line 18
    move-result v2

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    .line 22
    move-result v3

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    .line 33
    move-result v1

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 45
    return-void
.end method
