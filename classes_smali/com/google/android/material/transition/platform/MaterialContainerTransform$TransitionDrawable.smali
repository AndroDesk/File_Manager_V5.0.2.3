.class final Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionDrawable"
.end annotation


# static fields
.field private static final COMPAT_SHADOW_COLOR:I = -0x777778

.field private static final SHADOW_COLOR:I = 0x2d000000

.field private static final SHADOW_DX_MULTIPLIER_ADJUSTMENT:F = 0.3f

.field private static final SHADOW_DY_MULTIPLIER_ADJUSTMENT:F = 1.5f


# instance fields
.field private final compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final containerPaint:Landroid/graphics/Paint;

.field private currentElevation:F

.field private currentElevationDy:F

.field private final currentEndBounds:Landroid/graphics/RectF;

.field private final currentEndBoundsMasked:Landroid/graphics/RectF;

.field private currentMaskBounds:Landroid/graphics/RectF;

.field private final currentStartBounds:Landroid/graphics/RectF;

.field private final currentStartBoundsMasked:Landroid/graphics/RectF;

.field private final debugPaint:Landroid/graphics/Paint;

.field private final debugPath:Landroid/graphics/Path;

.field private final displayHeight:F

.field private final displayWidth:F

.field private final drawDebugEnabled:Z

.field private final elevationShadowEnabled:Z

.field private final endBounds:Landroid/graphics/RectF;

.field private final endContainerPaint:Landroid/graphics/Paint;

.field private final endElevation:F

.field private final endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endView:Landroid/view/View;

.field private final entering:Z

.field private final fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

.field private final fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

.field private final maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

.field private final motionPathLength:F

.field private final motionPathMeasure:Landroid/graphics/PathMeasure;

.field private final motionPathPosition:[F

.field private progress:F

.field private final progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final startBounds:Landroid/graphics/RectF;

.field private final startContainerPaint:Landroid/graphics/Paint;

.field private final startElevation:F

.field private final startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final startView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V
    .registers 33

    move-object v0, p0

    move-object/from16 v1, p3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v6, Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-direct {v6}, Lcom/google/android/material/transition/platform/MaskEvaluator;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 9
    iput-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 10
    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 12
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    move-object v10, p2

    .line 13
    iput-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    move-object/from16 v11, p4

    .line 15
    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v11, p5

    .line 16
    iput v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    move-object/from16 v11, p6

    .line 17
    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    move-object/from16 v11, p7

    .line 18
    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    move-object/from16 v12, p8

    .line 19
    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v12, p9

    .line 20
    iput v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    move/from16 v12, p14

    .line 21
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    move/from16 v12, p15

    .line 22
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    move-object/from16 v12, p16

    .line 23
    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-object/from16 v12, p17

    .line 24
    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v12, p18

    .line 25
    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move/from16 v12, p19

    .line 26
    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 28
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    .line 31
    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    move/from16 v10, p10

    .line 32
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p11

    .line 33
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p12

    .line 34
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 35
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 36
    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 37
    invoke-virtual {v8, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    const v3, -0x777778

    .line 38
    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 39
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 40
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 41
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 42
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 43
    invoke-static/range {p3 .. p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 44
    invoke-static/range {p7 .. p7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 45
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v10, p1

    invoke-virtual {p1, v6, v3, v8, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 46
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    .line 47
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iput v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v7, v2

    .line 49
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v7, v2

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-static/range {p13 .. p13}, Lcom/google/android/material/transition/platform/TransitionUtils;->createColorShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000  # 10.0f

    .line 53
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V
    .registers 21

    .line 1
    invoke-direct/range {p0 .. p19}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private static calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x40000000  # 2.0f

    .line 7
    div-float/2addr p1, v0

    .line 8
    div-float/2addr p0, p1

    .line 9
    const/high16 p1, 0x3f800000  # 1.0f

    .line 11
    sub-float/2addr p0, p1

    .line 12
    const p1, 0x3e99999a  # 0.3f

    .line 15
    mul-float/2addr p0, p1

    .line 16
    return p0
.end method

.method private static calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    .line 4
    move-result p0

    .line 5
    div-float/2addr p0, p1

    .line 6
    const/high16 p1, 0x3fc00000  # 1.5f

    .line 8
    mul-float/2addr p0, p1

    .line 9
    return p0
.end method

.method private drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .registers 7

    .line 1
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    .line 4
    move-result-object p2

    .line 5
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-nez v0, :cond_16

    .line 12
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 15
    iget p1, p2, Landroid/graphics/PointF;->x:F

    .line 17
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 19
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 25
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 27
    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    :goto_27
    return-void
.end method

.method private drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    return-void
.end method

.method private drawElevationShadow(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v1, 0x1c

    .line 19
    if-le v0, v1, :cond_18

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V

    .line 28
    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method

.method private drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 5
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 7
    float-to-int v2, v2

    .line 8
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 10
    float-to-int v3, v3

    .line 11
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 13
    float-to-int v4, v4

    .line 14
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 16
    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 22
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 27
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 29
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    .line 31
    float-to-int v1, v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    .line 35
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 37
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 48
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method private drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_20

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 27
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 32
    goto :goto_2b

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    :goto_2b
    return-void
.end method

.method private drawEndView(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v2

    .line 10
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 12
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 14
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 16
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 18
    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->endScale:F

    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 22
    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    .line 24
    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;

    .line 26
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 29
    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    .line 33
    return-void
.end method

.method private drawStartView(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v2

    .line 10
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 12
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 14
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 16
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 18
    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->startScale:F

    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 22
    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    .line 24
    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;

    .line 26
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 29
    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    .line 33
    return-void
.end method

.method private static getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    .line 6
    move-result v1

    .line 7
    iget p0, p0, Landroid/graphics/RectF;->top:F

    .line 9
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    return-object v0
.end method

.method private maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_13

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 20
    :cond_13
    return-void
.end method

.method private setProgress(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    .line 10
    :cond_9
    return-void
.end method

.method private updateProgress(F)V
    .registers 15

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    .line 7
    const/high16 v2, 0x437f0000  # 255.0f

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_10

    .line 12
    invoke-static {v3, v2, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 15
    move-result v1

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-static {v2, v3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 20
    move-result v1

    .line 21
    :goto_14
    float-to-int v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    .line 27
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 29
    mul-float/2addr v1, p1

    .line 30
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 36
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 38
    const/4 v1, 0x0

    .line 39
    aget v1, v0, v1

    .line 41
    const/4 v2, 0x1

    .line 42
    aget v0, v0, v2

    .line 44
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 46
    invoke-static {v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 64
    move-result v6

    .line 65
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 67
    invoke-static {v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 85
    move-result v7

    .line 86
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 88
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 90
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 93
    move-result v8

    .line 94
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 99
    move-result v9

    .line 100
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 102
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 105
    move-result v10

    .line 106
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 108
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 111
    move-result v11

    .line 112
    move v5, p1

    .line 113
    invoke-interface/range {v4 .. v11}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;

    .line 116
    move-result-object v2

    .line 117
    iput-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 119
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 121
    iget v5, v2, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    .line 123
    const/high16 v6, 0x40000000  # 2.0f

    .line 125
    div-float v7, v5, v6

    .line 127
    sub-float v7, v1, v7

    .line 129
    div-float/2addr v5, v6

    .line 130
    add-float/2addr v5, v1

    .line 131
    iget v2, v2, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    .line 133
    add-float/2addr v2, v0

    .line 134
    invoke-virtual {v4, v7, v0, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 139
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 141
    iget v5, v4, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    .line 143
    div-float v7, v5, v6

    .line 145
    sub-float v7, v1, v7

    .line 147
    div-float/2addr v5, v6

    .line 148
    add-float/2addr v5, v1

    .line 149
    iget v1, v4, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    .line 151
    add-float/2addr v1, v0

    .line 152
    invoke-virtual {v2, v7, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 157
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 164
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 171
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 178
    move-result v0

    .line 179
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 189
    move-result v0

    .line 190
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 192
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 199
    move-result v1

    .line 200
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 210
    move-result v1

    .line 211
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 213
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 215
    invoke-interface {v2, v4}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z

    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_df

    .line 221
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 223
    goto :goto_e1

    .line 224
    :cond_df
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 226
    :goto_e1
    const/high16 v5, 0x3f800000  # 1.0f

    .line 228
    invoke-static {v3, v5, v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    .line 231
    move-result v0

    .line 232
    if-eqz v2, :cond_ea

    .line 234
    goto :goto_ec

    .line 235
    :cond_ea
    sub-float v0, v5, v0

    .line 237
    :goto_ec
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 239
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 241
    invoke-interface {v1, v4, v0, v2}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V

    .line 244
    new-instance v0, Landroid/graphics/RectF;

    .line 246
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 248
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 250
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 252
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 254
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 257
    move-result v1

    .line 258
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 260
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 262
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 264
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 269
    move-result v2

    .line 270
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 272
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 274
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 276
    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 278
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 281
    move-result v3

    .line 282
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 284
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 286
    iget-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 288
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 290
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 293
    move-result v4

    .line 294
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 297
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 299
    iget-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 301
    iget-object v7, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 303
    iget-object v8, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 305
    iget-object v9, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 307
    iget-object v10, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 309
    iget-object v11, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 311
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 313
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 316
    move-result-object v12

    .line 317
    move v6, p1

    .line 318
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/material/transition/platform/MaskEvaluator;->evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 321
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    .line 323
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    .line 325
    invoke-static {v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 328
    move-result v0

    .line 329
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 331
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 333
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    .line 335
    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F

    .line 338
    move-result v0

    .line 339
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 341
    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    .line 343
    invoke-static {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F

    .line 346
    move-result v1

    .line 347
    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 349
    mul-float/2addr v0, v2

    .line 350
    float-to-int v0, v0

    .line 351
    int-to-float v0, v0

    .line 352
    mul-float/2addr v1, v2

    .line 353
    float-to-int v1, v1

    .line 354
    int-to-float v1, v1

    .line 355
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    .line 357
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 359
    const/high16 v4, 0x2d000000

    .line 361
    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 364
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 366
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 373
    move-result v0

    .line 374
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 384
    move-result v0

    .line 385
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 387
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 394
    move-result v1

    .line 395
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 405
    move-result v1

    .line 406
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 408
    invoke-interface {v2, p1, v0, v1}, Lcom/google/android/material/transition/platform/FadeModeEvaluator;->evaluate(FFF)Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 411
    move-result-object p1

    .line 412
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 414
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_1ae

    .line 422
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 424
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 426
    iget v0, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    .line 428
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 431
    :cond_1ae
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 436
    move-result p1

    .line 437
    if-eqz p1, :cond_1bf

    .line 439
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 441
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 443
    iget v0, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    .line 445
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    :cond_1bf
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 451
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_11

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 18
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    .line 20
    if-eqz v0, :cond_1a

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    move-result v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, -0x1

    .line 28
    :goto_1b
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    .line 30
    if-eqz v1, :cond_29

    .line 32
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 34
    const/4 v2, 0x0

    .line 35
    cmpl-float v1, v1, v2

    .line 37
    if-lez v1, :cond_29

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadow(Landroid/graphics/Canvas;)V

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 44
    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->clip(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 54
    iget-boolean v1, v1, Lcom/google/android/material/transition/platform/FadeModeResult;->endOnTop:Z

    .line 56
    if-eqz v1, :cond_40

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    .line 64
    goto :goto_46

    .line 65
    :cond_40
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    .line 71
    :goto_46
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    .line 73
    if-eqz v1, :cond_76

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 80
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    .line 82
    const v2, -0xff01

    .line 85
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 90
    const/16 v1, -0x100

    .line 92
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 97
    const v1, -0xff0100

    .line 100
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 105
    const v1, -0xff0001

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 113
    const v1, -0xffff01

    .line 116
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 119
    :cond_76
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Setting alpha on is not supported"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Setting a color filter is not supported"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
