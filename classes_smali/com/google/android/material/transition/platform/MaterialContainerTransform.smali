.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final ELEVATION_NOT_SET:F = -1.0f

.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field private static final PROP_BOUNDS:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final PROP_SHAPE_APPEARANCE:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field private static final TRANSITION_PROPS:[Ljava/lang/String;


# instance fields
.field private containerColor:I

.field private drawDebugEnabled:Z

.field private drawingViewId:I

.field private elevationShadowEnabled:Z

.field private endContainerColor:I

.field private endElevation:F

.field private endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private endView:Landroid/view/View;

.field private endViewId:I

.field private fadeMode:I

.field private fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scrimColor:I

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private startContainerColor:I

.field private startElevation:F

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startView:Landroid/view/View;

.field private startViewId:I

.field private transitionDirection:I


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    .line 1
    const-class v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 3
    const-string v0, "MaterialContainerTransform"

    .line 5
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    .line 7
    const-string v0, "materialContainerTransition:bounds"

    .line 9
    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 19
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 21
    const/4 v7, 0x0

    .line 22
    const/high16 v1, 0x3e800000  # 0.25f

    .line 24
    invoke-direct {v2, v7, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 27
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 29
    const/high16 v8, 0x3f800000  # 1.0f

    .line 31
    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 34
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 36
    invoke-direct {v4, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 39
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 41
    const/high16 v1, 0x3f400000  # 0.75f

    .line 43
    invoke-direct {v5, v7, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v1, v0

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 51
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 53
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 55
    new-instance v10, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 57
    const v1, 0x3f19999a  # 0.6f

    .line 60
    const v2, 0x3f666666  # 0.9f

    .line 63
    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 66
    new-instance v11, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 68
    invoke-direct {v11, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 71
    new-instance v12, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 73
    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 76
    new-instance v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 78
    const v3, 0x3e99999a  # 0.3f

    .line 81
    invoke-direct {v13, v3, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 84
    const/4 v14, 0x0

    .line 85
    move-object v9, v0

    .line 86
    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 89
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 91
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 93
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 95
    const v4, 0x3dcccccd  # 0.1f

    .line 98
    const v5, 0x3ecccccd  # 0.4f

    .line 101
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 104
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 106
    invoke-direct {v5, v4, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 109
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 111
    invoke-direct {v6, v4, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 114
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 116
    invoke-direct {v8, v4, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 119
    const/16 v20, 0x0

    .line 121
    move-object v15, v0

    .line 122
    move-object/from16 v16, v3

    .line 124
    move-object/from16 v17, v5

    .line 126
    move-object/from16 v18, v6

    .line 128
    move-object/from16 v19, v8

    .line 130
    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 133
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 135
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 137
    new-instance v10, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 139
    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 142
    new-instance v11, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 144
    invoke-direct {v11, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 147
    new-instance v12, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 149
    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 152
    new-instance v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 154
    const v1, 0x3e4ccccd  # 0.2f

    .line 157
    invoke-direct {v13, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 160
    move-object v9, v0

    .line 161
    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 164
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 9
    const v1, 0x1020002

    .line 12
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 17
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 19
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 21
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 23
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 25
    const/high16 v1, 0x52000000

    .line 27
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 29
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 31
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 33
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    const/16 v2, 0x1c

    .line 39
    if-lt v1, v2, :cond_29

    .line 41
    const/4 v0, 0x1

    .line 42
    :cond_29
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 44
    const/high16 v0, -0x40800000  # -1.0f

    .line 46
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 48
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 50
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 52
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 55
    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/material/transition/platform/MaterialContainerTransform;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 3
    return p0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/transition/ArcMotion;

    .line 7
    if-nez v1, :cond_16

    .line 9
    instance-of v0, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 16
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    :goto_16
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 25
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance p1, Landroid/graphics/RectF;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 27
    return-object p1
.end method

.method private static captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_c

    .line 4
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 12
    goto :goto_2d

    .line 13
    :cond_c
    if-eqz p1, :cond_11

    .line 15
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 20
    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    instance-of p1, p1, Landroid/view/View;

    .line 28
    if-eqz p1, :cond_2d

    .line 30
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/View;

    .line 38
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 46
    :cond_2d
    :goto_2d
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 48
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 50
    invoke-static {p1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_43

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_43

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_64

    .line 68
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    move-result-object p2

    .line 72
    if-nez p2, :cond_4e

    .line 74
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    .line 77
    move-result-object p2

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    .line 82
    move-result-object p2

    .line 83
    :goto_52
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 85
    const-string v1, "materialContainerTransition:bounds"

    .line 87
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 92
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 95
    move-result-object p1

    .line 96
    const-string p2, "materialContainerTransition:shapeAppearance"

    .line 98
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_64
    return-void
.end method

.method private static getElevationOrDefault(FLandroid/view/View;)F
    .registers 3

    .line 1
    const/high16 v0, -0x40800000  # -1.0f

    .line 3
    cmpl-float v0, p0, v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    sget-object p0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p1}, Lm0/g0$i;->i(Landroid/view/View;)F

    .line 13
    move-result p0

    .line 14
    :goto_d
    return p0
.end method

.method private static getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 4

    .line 1
    if-eqz p1, :cond_3

    .line 3
    return-object p1

    .line 4
    :cond_3
    sget p1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 12
    if-eqz v0, :cond_14

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    .line 28
    move-result v0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq v0, v1, :cond_29

    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-static {p1, v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_29
    instance-of p1, p0, Lcom/google/android/material/shape/Shapeable;

    .line 44
    if-eqz p1, :cond_34

    .line 46
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    .line 48
    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_34
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .registers 10

    .line 1
    if-eqz p1, :cond_3

    .line 3
    goto :goto_4

    .line 4
    :cond_3
    move-object p2, p3

    .line 5
    :goto_4
    new-instance p1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 7
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 9
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p3

    .line 17
    move-object v1, p3

    .line 18
    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 20
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 22
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 30
    move-object v2, p3

    .line 31
    check-cast v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 33
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 35
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p3

    .line 43
    move-object v3, p3

    .line 44
    check-cast v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 46
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 48
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {p3, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    move-object v4, p2

    .line 57
    check-cast v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v0, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 64
    return-object p1
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    return v0
.end method

.method private isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_22

    .line 7
    if-eq v0, v2, :cond_21

    .line 9
    const/4 p1, 0x2

    .line 10
    if-ne v0, p1, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p2, "Invalid transition direction: "

    .line 17
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p2

    .line 21
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    return v2

    .line 35
    :cond_22
    invoke-static {p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    .line 38
    move-result p2

    .line 39
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    .line 42
    move-result p1

    .line 43
    cmpl-float p1, p2, p1

    .line 45
    if-lez p1, :cond_2f

    .line 47
    move v1, v2

    .line 48
    :cond_2f
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    .line 3
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 5
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 10
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    .line 3
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 5
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 10
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 33

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    move-object/from16 v1, p3

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_10d

    .line 10
    if-nez v1, :cond_d

    .line 12
    goto/16 :goto_10d

    .line 14
    :cond_d
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 16
    const-string v4, "materialContainerTransition:bounds"

    .line 18
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    move-object v10, v3

    .line 23
    check-cast v10, Landroid/graphics/RectF;

    .line 25
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    const-string v5, "materialContainerTransition:shapeAppearance"

    .line 29
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    move-object v11, v3

    .line 34
    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 36
    if-eqz v10, :cond_106

    .line 38
    if-nez v11, :cond_29

    .line 40
    goto/16 :goto_106

    .line 42
    :cond_29
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 44
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    move-object v14, v3

    .line 49
    check-cast v14, Landroid/graphics/RectF;

    .line 51
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 53
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    move-object v15, v3

    .line 58
    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 60
    if-eqz v14, :cond_fe

    .line 62
    if-nez v15, :cond_41

    .line 64
    goto/16 :goto_fe

    .line 66
    :cond_41
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 68
    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_4d

    .line 76
    move-object v0, v5

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move-object v0, v4

    .line 79
    :goto_4e
    iget v1, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 84
    move-result v3

    .line 85
    if-ne v1, v3, :cond_5e

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/view/View;

    .line 93
    move-object v2, v1

    .line 94
    goto :goto_69

    .line 95
    :cond_5e
    iget v1, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 97
    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    move-object/from16 v28, v2

    .line 103
    move-object v2, v0

    .line 104
    move-object/from16 v0, v28

    .line 106
    :goto_69
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    .line 109
    move-result-object v1

    .line 110
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 112
    neg-float v3, v3

    .line 113
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 115
    neg-float v1, v1

    .line 116
    invoke-static {v2, v0, v3, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v10, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 123
    invoke-virtual {v14, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 126
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 129
    move-result v1

    .line 130
    move/from16 v21, v1

    .line 132
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 134
    move-object v7, v3

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 138
    move-result-object v8

    .line 139
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 141
    invoke-static {v9, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    .line 144
    move-result v12

    .line 145
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 147
    invoke-static {v9, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    .line 150
    move-result v16

    .line 151
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 153
    move/from16 v17, v9

    .line 155
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 157
    move/from16 v18, v9

    .line 159
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 161
    move/from16 v19, v9

    .line 163
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 165
    move/from16 v20, v9

    .line 167
    iget-boolean v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 169
    move/from16 v22, v9

    .line 171
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 173
    invoke-static {v9, v1}, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 176
    move-result-object v23

    .line 177
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 179
    invoke-static {v9, v1, v10, v14}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 182
    move-result-object v24

    .line 183
    invoke-direct {v6, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 186
    move-result-object v25

    .line 187
    iget-boolean v1, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 189
    move/from16 v26, v1

    .line 191
    const/16 v27, 0x0

    .line 193
    move-object v9, v4

    .line 194
    move-object v13, v5

    .line 195
    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 198
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 200
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 203
    move-result v1

    .line 204
    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 206
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 209
    move-result v7

    .line 210
    iget v8, v0, Landroid/graphics/RectF;->right:F

    .line 212
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 215
    move-result v8

    .line 216
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 218
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 221
    move-result v0

    .line 222
    invoke-virtual {v3, v1, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    const/4 v0, 0x2

    .line 226
    new-array v0, v0, [F

    .line 228
    fill-array-data v0, :array_10e

    .line 231
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 234
    move-result-object v7

    .line 235
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    .line 237
    invoke-direct {v0, v6, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 240
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;

    .line 245
    move-object v0, v8

    .line 246
    move-object/from16 v1, p0

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    .line 251
    invoke-virtual {v6, v8}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 254
    return-object v7

    .line 255
    :cond_fe
    :goto_fe
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    .line 257
    const-string v1, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v2

    .line 263
    :cond_106
    :goto_106
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    .line 265
    const-string v1, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_10d
    :goto_10d
    return-object v2

    .line 271
    :array_10e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 3
    return v0
.end method

.method public getDrawingViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 3
    return v0
.end method

.method public getEndContainerColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 3
    return v0
.end method

.method public getEndElevation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 3
    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getEndViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 3
    return v0
.end method

.method public getFadeMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 3
    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-object v0
.end method

.method public getFitMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 3
    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-object v0
.end method

.method public getScrimColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 3
    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-object v0
.end method

.method public getStartContainerColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 3
    return v0
.end method

.method public getStartElevation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 3
    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getStartViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 3
    return v0
.end method

.method public getTransitionDirection()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 3
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 3
    return v0
.end method

.method public isElevationShadowEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 3
    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 3
    return v0
.end method

.method public setAllContainerColors(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 3
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 5
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 7
    return-void
.end method

.method public setContainerColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 3
    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 3
    return-void
.end method

.method public setDrawingViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 3
    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 3
    return-void
.end method

.method public setEndContainerColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 3
    return-void
.end method

.method public setEndElevation(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 3
    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setEndViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 3
    return-void
.end method

.method public setFadeMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 3
    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-void
.end method

.method public setFitMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 3
    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 3
    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 3
    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 3
    return-void
.end method

.method public setStartContainerColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 3
    return-void
.end method

.method public setStartElevation(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 3
    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setStartViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 3
    return-void
.end method

.method public setTransitionDirection(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 3
    return-void
.end method
