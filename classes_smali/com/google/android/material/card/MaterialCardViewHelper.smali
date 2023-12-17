.class Lcom/google/android/material/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# static fields
.field private static final CARD_VIEW_SHADOW_MULTIPLIER:F = 1.5f

.field private static final CHECKED_ICON_LAYER_INDEX:I = 0x2

.field private static final CHECKED_STATE_SET:[I

.field private static final COS_45:D

.field private static final DEFAULT_STROKE_VALUE:I = -0x1


# instance fields
.field private final bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private final checkedIconMargin:I

.field private final checkedIconSize:I

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private fgDrawable:Landroid/graphics/drawable/Drawable;

.field private final foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private isBackgroundOverwritten:Z

.field private final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:I

.field private final userContentPadding:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_STATE_SET:[I

    .line 12
    const-wide v0, 0x4046800000000000L  # 45.0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 14
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 16
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p4

    .line 31
    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 34
    const p4, -0xbbbbbc

    .line 37
    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 43
    move-result-object p4

    .line 44
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 47
    move-result-object p4

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/google/android/material/R$styleable;->CardView:[I

    .line 54
    sget v2, Lcom/google/android/material/R$style;->CardView:I

    .line 56
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 59
    move-result-object p2

    .line 60
    sget p3, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    .line 62
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4b

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 72
    move-result p3

    .line 73
    invoke-virtual {p4, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 76
    :cond_4b
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 78
    invoke-direct {p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 81
    iput-object p3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 83
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p0, p3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object p1

    .line 94
    sget p3, Lcom/google/android/material/R$dimen;->mtrl_card_checked_icon_margin:I

    .line 96
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    move-result p3

    .line 100
    iput p3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 102
    sget p3, Lcom/google/android/material/R$dimen;->mtrl_card_checked_icon_size:I

    .line 104
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private calculateActualCornerPadding()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 12
    move-result v1

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopRightCornerResolvedSize()F

    .line 28
    move-result v2

    .line 29
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomRightCornerResolvedSize()F

    .line 48
    move-result v2

    .line 49
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 61
    invoke-virtual {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomLeftCornerResolvedSize()F

    .line 64
    move-result v3

    .line 65
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 68
    move-result v2

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 72
    move-result v1

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 76
    move-result v0

    .line 77
    return v0
.end method

.method private calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 7
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 9
    sub-double/2addr v0, v2

    .line 10
    float-to-double p1, p2

    .line 11
    mul-double/2addr v0, p1

    .line 12
    double-to-float p1, v0

    .line 13
    return p1

    .line 14
    :cond_d
    instance-of p1, p1, Lcom/google/android/material/shape/CutCornerTreatment;

    .line 16
    if-eqz p1, :cond_15

    .line 18
    const/high16 p1, 0x40000000  # 2.0f

    .line 20
    div-float/2addr p2, p1

    .line 21
    return p2

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private calculateHorizontalBackgroundPadding()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getMaxCardElevation()F

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 16
    move-result v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    add-float/2addr v0, v1

    .line 20
    return v0
.end method

.method private calculateVerticalBackgroundPadding()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getMaxCardElevation()F

    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_14

    .line 16
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 19
    move-result v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :goto_15
    add-float/2addr v0, v1

    .line 23
    return v0
.end method

.method private canClipToOutline()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method private createCheckedIconLayer()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz v1, :cond_e

    .line 10
    sget-object v2, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_STATE_SET:[I

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_e
    return-object v0
.end method

.method private createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 12
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [I

    .line 20
    const/4 v2, 0x0

    .line 21
    const v3, 0x10100a7

    .line 24
    aput v3, v1, v2

    .line 26
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 31
    return-object v0
.end method

.method private createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 13
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 18
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 8
    return-object v0
.end method

.method private getClickableForeground()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 13
    if-nez v0, :cond_2e

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCheckedIconLayer()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 24
    const/4 v3, 0x0

    .line 25
    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    aput-object v4, v2, v3

    .line 29
    const/4 v3, 0x1

    .line 30
    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 32
    aput-object v4, v2, v3

    .line 34
    const/4 v3, 0x2

    .line 35
    aput-object v0, v2, v3

    .line 37
    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 42
    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    .line 44
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 49
    return-object v0
.end method

.method private getParentCardViewCalculatedCornerPadding()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 11
    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1f

    .line 17
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 19
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 21
    sub-double/2addr v0, v2

    .line 22
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    .line 27
    move-result v2

    .line 28
    float-to-double v2, v2

    .line 29
    mul-double/2addr v0, v2

    .line 30
    double-to-float v0, v0

    .line 31
    return v0

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method private insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_20

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateVerticalBackgroundPadding()F

    .line 13
    move-result v0

    .line 14
    float-to-double v0, v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 18
    move-result-wide v0

    .line 19
    double-to-int v1, v0

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateHorizontalBackgroundPadding()F

    .line 23
    move-result v0

    .line 24
    float-to-double v2, v0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 28
    move-result-wide v2

    .line 29
    double-to-int v0, v2

    .line 30
    move v7, v0

    .line 31
    move v8, v1

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    move v7, v1

    .line 34
    move v8, v7

    .line 35
    :goto_22
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper$1;

    .line 37
    move-object v2, v0

    .line 38
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    move v5, v7

    .line 41
    move v6, v8

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/card/MaterialCardViewHelper$1;-><init>(Lcom/google/android/material/card/MaterialCardViewHelper;Landroid/graphics/drawable/Drawable;IIII)V

    .line 45
    return-object v0
.end method

.method private shouldAddCornerPaddingInsideCardBackground()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method private shouldAddCornerPaddingOutsideCardBackground()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Lr/a;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_18

    .line 15
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 17
    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
.end method

.method private updateInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    .line 9
    if-eqz v0, :cond_16

    .line 11
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_1f

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :goto_1f
    return-void
.end method

.method private updateRippleColor()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 11
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public forceRippleRedraw()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 11
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 17
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 19
    add-int/lit8 v6, v1, -0x1

    .line 21
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 28
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 30
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 32
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    :cond_22
    return-void
.end method

.method public getBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    return-object v0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 3
    return v0
.end method

.method public getUserContentPadding()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public isBackgroundOverwritten()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 3
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    .line 3
    return v0
.end method

.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    .line 9
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 15
    if-nez v0, :cond_17

    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 24
    :cond_17
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 33
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_android_checkable:I

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    .line 41
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconTint:I

    .line 54
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 60
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIcon:I

    .line 68
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 81
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_rippleColor:I

    .line 83
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 89
    if-nez v0, :cond_68

    .line 91
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 93
    sget v1, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    .line 95
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v0

    .line 111
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCardView_cardForegroundColor:I

    .line 113
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardForegroundColor(Landroid/content/res/ColorStateList;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateRippleColor()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateElevation()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    .line 129
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 131
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 133
    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_98

    .line 148
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    .line 151
    move-result-object p1

    .line 152
    goto :goto_9a

    .line 153
    :cond_98
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 155
    :goto_9a
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 3
    if-eqz v0, :cond_49

    .line 5
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 7
    sub-int/2addr p1, v0

    .line 8
    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 10
    sub-int/2addr p1, v1

    .line 11
    sub-int/2addr p2, v0

    .line 12
    sub-int/2addr p2, v1

    .line 13
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    invoke-virtual {v0}, Lr/a;->getUseCompatPadding()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2e

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateVerticalBackgroundPadding()F

    .line 24
    move-result v0

    .line 25
    const/high16 v1, 0x40000000  # 2.0f

    .line 27
    mul-float/2addr v0, v1

    .line 28
    float-to-double v2, v0

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 32
    move-result-wide v2

    .line 33
    double-to-int v0, v2

    .line 34
    sub-int/2addr p2, v0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateHorizontalBackgroundPadding()F

    .line 38
    move-result v0

    .line 39
    mul-float/2addr v0, v1

    .line 40
    float-to-double v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 44
    move-result-wide v0

    .line 45
    double-to-int v0, v0

    .line 46
    sub-int/2addr p1, v0

    .line 47
    :cond_2e
    move v5, p2

    .line 48
    iget p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 50
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 52
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 54
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x1

    .line 59
    if-ne v0, v1, :cond_3f

    .line 61
    move v4, p1

    .line 62
    move v2, p2

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    move v2, p1

    .line 65
    move v4, p2

    .line 66
    :goto_41
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 68
    const/4 v1, 0x2

    .line 69
    iget v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 74
    :cond_49
    return-void
.end method

.method public setBackgroundOverwritten(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 3
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    if-nez p1, :cond_9

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 13
    return-void
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    .line 3
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 13
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 18
    if-eqz p1, :cond_1e

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCheckedIconLayer()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 26
    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 31
    :cond_1e
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1a

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    .line 30
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_26

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    .line 39
    :cond_26
    return-void
.end method

.method public setProgress(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 20
    :cond_13
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateRippleColor()V

    .line 6
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 13
    move-result v1

    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 28
    if-eqz v0, :cond_20

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 35
    if-eqz v0, :cond_27

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 40
    :cond_27
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    .line 11
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    .line 11
    return-void
.end method

.method public setUserContentPadding(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    .line 9
    return-void
.end method

.method public updateClickable()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 18
    :goto_11
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eq v0, v1, :cond_18

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsetForeground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_18
    return-void
.end method

.method public updateContentPadding()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    if-eqz v0, :cond_17

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 22
    move-result v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getParentCardViewCalculatedCornerPadding()F

    .line 28
    move-result v1

    .line 29
    sub-float/2addr v0, v1

    .line 30
    float-to-int v0, v0

    .line 31
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 33
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 35
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 37
    add-int/2addr v3, v0

    .line 38
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 40
    add-int/2addr v4, v0

    .line 41
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 43
    add-int/2addr v5, v0

    .line 44
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 46
    add-int/2addr v2, v0

    .line 47
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/material/card/MaterialCardView;->setAncestorContentPadding(IIII)V

    .line 50
    return-void
.end method

.method public updateElevation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    invoke-virtual {v1}, Lr/a;->getCardElevation()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 12
    return-void
.end method

.method public updateInsets()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 7
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 9
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 20
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method

.method public updateStroke()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 5
    int-to-float v1, v1

    .line 6
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 11
    return-void
.end method
