.class Lcom/google/android/material/transition/MaskEvaluator;
.super Ljava/lang/Object;
.source "MaskEvaluator.java"


# instance fields
.field private currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endPath:Landroid/graphics/Path;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final startPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 27
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 32
    return-void
.end method


# virtual methods
.method public clip(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 6
    return-void
.end method

.method public evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .registers 15

    .line 1
    invoke-virtual {p7}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getStart()F

    .line 4
    move-result v4

    .line 5
    invoke-virtual {p7}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getEnd()F

    .line 8
    move-result v5

    .line 9
    move-object v0, p2

    .line 10
    move-object v1, p3

    .line 11
    move-object v2, p4

    .line 12
    move-object v3, p6

    .line 13
    move v6, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 20
    iget-object p2, p0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 22
    iget-object p3, p0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    .line 24
    const/high16 p4, 0x3f800000  # 1.0f

    .line 26
    invoke-virtual {p2, p1, p4, p5, p3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 31
    iget-object p2, p0, Lcom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 33
    iget-object p3, p0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    .line 35
    invoke-virtual {p1, p2, p4, p6, p3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 40
    iget-object p2, p0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    .line 42
    iget-object p3, p0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    .line 44
    sget-object p4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 46
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 49
    return-void
.end method

.method public getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 3
    return-object v0
.end method
