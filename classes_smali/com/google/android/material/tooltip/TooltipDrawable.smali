.class public Lcom/google/android/material/tooltip/TooltipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# static fields
.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I


# instance fields
.field private arrowSize:I

.field private final attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final context:Landroid/content/Context;

.field private final displayFrame:Landroid/graphics/Rect;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private layoutMargin:I

.field private locationOnScreenX:I

.field private minHeight:I

.field private minWidth:I

.field private padding:I

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 3
    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    .line 5
    sget v0, Lcom/google/android/material/R$attr;->tooltipStyle:I

    .line 7
    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 6
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 11
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    .line 13
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 16
    iput-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 18
    new-instance p3, Lcom/google/android/material/tooltip/TooltipDrawable$1;

    .line 20
    invoke-direct {p3, p0}, Lcom/google/android/material/tooltip/TooltipDrawable$1;-><init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 23
    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 25
    new-instance p3, Landroid/graphics/Rect;

    .line 27
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 30
    iput-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 32
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object p1

    .line 46
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 48
    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 50
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 53
    move-result-object p1

    .line 54
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/tooltip/TooltipDrawable;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private calculatePointerOffset()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 17
    sub-int/2addr v0, v1

    .line 18
    if-gez v0, :cond_26

    .line 20
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 22
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 30
    sub-int/2addr v0, v1

    .line 31
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 33
    sub-int/2addr v0, v1

    .line 34
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 36
    sub-int/2addr v0, v1

    .line 37
    :goto_24
    int-to-float v0, v0

    .line 38
    goto :goto_4c

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 41
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 49
    sub-int/2addr v0, v1

    .line 50
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 52
    sub-int/2addr v0, v1

    .line 53
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 55
    add-int/2addr v0, v1

    .line 56
    if-lez v0, :cond_4b

    .line 58
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 60
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 65
    move-result-object v1

    .line 66
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 68
    sub-int/2addr v0, v1

    .line 69
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 71
    sub-int/2addr v0, v1

    .line 72
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 74
    add-int/2addr v0, v1

    .line 75
    goto :goto_24

    .line 76
    :cond_4b
    const/4 v0, 0x0

    .line 77
    :goto_4c
    return v0
.end method

.method private calculateTextCenterFromBaseline()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 12
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 14
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 16
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 18
    add-float/2addr v1, v0

    .line 19
    const/high16 v0, 0x40000000  # 2.0f

    .line 21
    div-float/2addr v1, v0

    .line 22
    return v1
.end method

.method private calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextCenterFromBaseline()F

    .line 9
    move-result v0

    .line 10
    sub-float/2addr p1, v0

    .line 11
    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    .line 3
    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 4

    .line 3
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result v1

    .line 14
    int-to-double v1, v1

    .line 15
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 17
    int-to-double v3, v3

    .line 18
    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    move-result-wide v5

    .line 24
    mul-double/2addr v5, v3

    .line 25
    sub-double/2addr v1, v5

    .line 26
    double-to-float v1, v1

    .line 27
    const/high16 v2, 0x40000000  # 2.0f

    .line 29
    div-float/2addr v1, v2

    .line 30
    neg-float v2, v1

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 34
    move-result v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 38
    move-result v0

    .line 39
    new-instance v1, Lcom/google/android/material/shape/OffsetEdgeTreatment;

    .line 41
    new-instance v2, Lcom/google/android/material/shape/MarkerEdgeTreatment;

    .line 43
    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 45
    int-to-float v3, v3

    .line 46
    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MarkerEdgeTreatment;-><init>(F)V

    .line 49
    invoke-direct {v1, v2, v0}, Lcom/google/android/material/shape/OffsetEdgeTreatment;-><init>(Lcom/google/android/material/shape/EdgeTreatment;F)V

    .line 52
    return-object v1
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F

    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_29

    .line 23
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 32
    move-result-object v3

    .line 33
    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 35
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 37
    iget-object v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 42
    :cond_29
    iget-object v5, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 48
    move-result v7

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 52
    move-result v0

    .line 53
    int-to-float v8, v0

    .line 54
    int-to-float v9, v1

    .line 55
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 60
    move-result-object v10

    .line 61
    move-object v4, p1

    .line 62
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method private getTextWidth()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 3
    sget-object v2, Lcom/google/android/material/R$styleable;->Tooltip:[I

    .line 5
    const/4 v6, 0x0

    .line 6
    new-array v5, v6, [I

    .line 8
    move-object v1, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p2

    .line 21
    sget p3, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    .line 23
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 52
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 63
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    .line 65
    invoke-static {p2, p1, p3}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 72
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 74
    sget p3, Lcom/google/android/material/R$attr;->colorOnBackground:I

    .line 76
    const-class v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {p2, p3, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    .line 85
    move-result p2

    .line 86
    iget-object p3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 88
    const-class v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    const v1, 0x1010031

    .line 97
    invoke-static {p3, v1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    .line 100
    move-result p3

    .line 101
    const/16 v0, 0xe5

    .line 103
    invoke-static {p3, v0}, Lf0/d;->c(II)I

    .line 106
    move-result p3

    .line 107
    const/16 v0, 0x99

    .line 109
    invoke-static {p2, v0}, Lf0/d;->c(II)I

    .line 112
    move-result p2

    .line 113
    invoke-static {p3, p2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    .line 116
    move-result p2

    .line 117
    sget p3, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    .line 119
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 122
    move-result p2

    .line 123
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 130
    iget-object p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 132
    sget p3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 134
    const-class v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {p2, p3, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    .line 143
    move-result p2

    .line 144
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 151
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    .line 153
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 156
    move-result p2

    .line 157
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 159
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    .line 161
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 164
    move-result p2

    .line 165
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 167
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    .line 169
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 172
    move-result p2

    .line 173
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 175
    sget p2, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    .line 177
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 180
    move-result p2

    .line 181
    iput p2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 183
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    return-void
.end method

.method private updateLocationOnScreen(Landroid/view/View;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    aget v0, v0, v1

    .line 10
    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 12
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 17
    return-void
.end method


# virtual methods
.method public detachView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 10
    int-to-double v1, v1

    .line 11
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide v3

    .line 17
    mul-double/2addr v3, v1

    .line 18
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 20
    int-to-double v1, v1

    .line 21
    sub-double/2addr v3, v1

    .line 22
    neg-double v1, v3

    .line 23
    double-to-float v1, v1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->drawText(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getTextWidth()F

    .line 9
    move-result v1

    .line 10
    add-float/2addr v0, v1

    .line 11
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    return v0
.end method

.method public getLayoutMargin()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 3
    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 3
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 3
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTextPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 3
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 27
    return-void
.end method

.method public onStateChange([I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public setLayoutMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setMinWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setRelativeToView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 11
    iget-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 20
    :cond_13
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 11
    return-void
.end method

.method public setTextPadding(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setTextResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method
