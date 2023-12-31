.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathCubicOperation;,
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;,
        Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$LineShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    }
.end annotation


# static fields
.field public static final ANGLE_LEFT:F = 180.0f

.field private static final ANGLE_UP:F = 270.0f


# instance fields
.field private containsIncompatibleShadowOp:Z

.field public currentShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final shadowCompatOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    return-void
.end method

.method private addConnectingShadowIfNecessary(F)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    .line 4
    move-result v0

    .line 5
    cmpl-float v0, v0, p1

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    .line 13
    move-result v0

    .line 14
    sub-float v0, p1, v0

    .line 16
    const/high16 v1, 0x43b40000  # 360.0f

    .line 18
    add-float/2addr v0, v1

    .line 19
    rem-float/2addr v0, v1

    .line 20
    const/high16 v1, 0x43340000  # 180.0f

    .line 22
    cmpl-float v1, v0, v1

    .line 24
    if-lez v1, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    .line 40
    move-result v4

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    .line 44
    move-result v5

    .line 45
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    .line 51
    move-result v2

    .line 52
    invoke-static {v1, v2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 55
    invoke-static {v1, v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 58
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 60
    new-instance v2, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    .line 62
    invoke-direct {v2, v1}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    .line 71
    return-void
.end method

.method private addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    .line 12
    return-void
.end method

.method private getCurrentShadowAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    .line 3
    return v0
.end method

.method private getEndShadowAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 3
    return v0
.end method

.method private setCurrentShadowAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    .line 3
    return-void
.end method

.method private setEndShadowAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 3
    return-void
.end method

.method private setEndX(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 3
    return-void
.end method

.method private setEndY(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 3
    return-void
.end method

.method private setStartX(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 3
    return-void
.end method

.method private setStartY(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 3
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 9
    invoke-static {v0, p6}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 12
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    .line 19
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    .line 22
    add-float v0, p5, p6

    .line 24
    const/4 v2, 0x0

    .line 25
    cmpg-float p6, p6, v2

    .line 27
    if-gez p6, :cond_1e

    .line 29
    const/4 p6, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p6, 0x0

    .line 32
    :goto_1f
    const/high16 v2, 0x43b40000  # 360.0f

    .line 34
    const/high16 v3, 0x43340000  # 180.0f

    .line 36
    if-eqz p6, :cond_27

    .line 38
    add-float/2addr p5, v3

    .line 39
    rem-float/2addr p5, v2

    .line 40
    :cond_27
    if-eqz p6, :cond_2c

    .line 42
    add-float/2addr v3, v0

    .line 43
    rem-float/2addr v3, v2

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v3, v0

    .line 46
    :goto_2d
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    .line 49
    add-float p5, p1, p3

    .line 51
    const/high16 p6, 0x3f000000  # 0.5f

    .line 53
    mul-float/2addr p5, p6

    .line 54
    sub-float/2addr p3, p1

    .line 55
    const/high16 p1, 0x40000000  # 2.0f

    .line 57
    div-float/2addr p3, p1

    .line 58
    float-to-double v0, v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 62
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 66
    move-result-wide v2

    .line 67
    double-to-float v2, v2

    .line 68
    mul-float/2addr p3, v2

    .line 69
    add-float/2addr p3, p5

    .line 70
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 73
    add-float p3, p2, p4

    .line 75
    mul-float/2addr p3, p6

    .line 76
    sub-float/2addr p4, p2

    .line 77
    div-float/2addr p4, p1

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 81
    move-result-wide p1

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 85
    move-result-wide p1

    .line 86
    double-to-float p1, p1

    .line 87
    mul-float/2addr p4, p1

    .line 88
    add-float/2addr p4, p3

    .line 89
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 92
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/google/android/material/shape/ShapePath$PathOperation;

    .line 18
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-void
.end method

.method public containsIncompatibleShadowOp()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 3
    return v0
.end method

.method public createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getEndShadowAngle()F

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    new-instance v1, Lcom/google/android/material/shape/ShapePath$1;

    .line 17
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 20
    return-object v1
.end method

.method public cubicToPoint(FFFFFF)V
    .registers 15

    .line 1
    new-instance v7, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;

    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;-><init>(FFFFFF)V

    .line 13
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 15
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 21
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 24
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 27
    return-void
.end method

.method public getEndX()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 3
    return v0
.end method

.method public getEndY()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 3
    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 3
    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 3
    return v0
.end method

.method public lineTo(FF)V
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 9
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 12
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    .line 26
    move-result v3

    .line 27
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    .line 33
    move-result v0

    .line 34
    const/high16 v2, 0x43870000  # 270.0f

    .line 36
    add-float/2addr v0, v2

    .line 37
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    .line 40
    move-result v3

    .line 41
    add-float/2addr v3, v2

    .line 42
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 48
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 51
    return-void
.end method

.method public quadToPoint(FFFF)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$200(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 9
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$300(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 12
    invoke-static {v0, p3}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$400(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 15
    invoke-static {v0, p4}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$500(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 26
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 29
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 32
    return-void
.end method

.method public reset(FF)V
    .registers 5

    const/high16 v0, 0x43870000  # 270.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    return-void
.end method

.method public reset(FFFF)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setStartX(F)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setStartY(F)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000  # 360.0f

    rem-float/2addr p3, p1

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndShadowAngle(F)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    return-void
.end method
