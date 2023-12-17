.class public Lcom/google/android/material/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;,
        Lcom/google/android/material/shape/MaterialShapeDrawable$CompatibilityShadowMode;
    }
.end annotation


# static fields
.field public static final SHADOW_COMPAT_MODE_ALWAYS:I = 0x2

.field public static final SHADOW_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final SHADOW_COMPAT_MODE_NEVER:I = 0x1

.field private static final SHADOW_OFFSET_MULTIPLIER:F = 0.25f

.field private static final SHADOW_RADIUS_MULTIPLIER:F = 0.75f

.field private static final TAG:Ljava/lang/String;

.field private static final clearPaint:Landroid/graphics/Paint;


# instance fields
.field private final containsIncompatibleShadowOp:Ljava/util/BitSet;

.field private final cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

.field private final edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final insetRectF:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final path:Landroid/graphics/Path;

.field private final pathBounds:Landroid/graphics/RectF;

.field private pathDirty:Z

.field private final pathInsetByStroke:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field private final rectF:Landroid/graphics/RectF;

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowBitmapDrawingEnable:Z

.field private final shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final transparentRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    const-string v0, "MaterialShapeDrawable"

    .line 5
    sput-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 13
    sput-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Landroid/graphics/Paint;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
    .registers 6

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 7
    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    new-array v0, v0, [Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 8
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 9
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 16
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 19
    new-instance v3, Lcom/google/android/material/shadow/ShadowRenderer;

    invoke-direct {v3}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 20
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    sget-object p1, Lcom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    .line 30
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable$1;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;Lcom/google/android/material/shape/MaterialShapeDrawable$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    .line 5
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/elevation/ElevationOverlayProvider;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapePathModel;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 3
    return p1
.end method

.method private calculatePaintColorTintFilter(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    .line 1
    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    .line 10
    move-result p2

    .line 11
    if-eq p2, p1, :cond_14

    .line 13
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 15
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 17
    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    return-object p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method private calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 6
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 8
    const/high16 v1, 0x3f800000  # 1.0f

    .line 10
    cmpl-float v0, v0, v1

    .line 12
    if-eqz v0, :cond_2c

    .line 14
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 21
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 23
    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 25
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v2

    .line 29
    const/high16 v3, 0x40000000  # 2.0f

    .line 31
    div-float/2addr v2, v3

    .line 32
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 35
    move-result p1

    .line 36
    div-float/2addr p1, v3

    .line 37
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 45
    :cond_2c
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 51
    return-void
.end method

.method private calculateStrokePath()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable$2;

    .line 12
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable$2;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 21
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 23
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 25
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Landroid/graphics/RectF;

    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    .line 33
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 36
    return-void
.end method

.method private calculateTintColorTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    move-result p1

    .line 10
    if-eqz p3, :cond_f

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    .line 15
    move-result p1

    .line 16
    :cond_f
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    .line 18
    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    return-object p3
.end method

.method private calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .line 1
    if-eqz p1, :cond_a

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_a

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintColorTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    :goto_a
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePaintColorTintFilter(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    .line 14
    move-result-object p1

    .line 15
    :goto_e
    return-object p1
.end method

.method private compositeElevationOverlayIfNeeded(I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getParentAbsoluteElevation()F

    .line 8
    move-result v1

    .line 9
    add-float/2addr v1, v0

    .line 10
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 12
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 14
    if-eqz v0, :cond_13

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    .line 19
    move-result p1

    .line 20
    :cond_13
    return p1
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const-string v1, "MaterialShapeDrawable"

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 4
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 6
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    return-object v1
.end method

.method private drawCompatShadow(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_f

    .line 9
    sget-object v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 18
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 20
    if-eqz v0, :cond_20

    .line 22
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 24
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/material/shadow/ShadowRenderer;->getShadowPaint()Landroid/graphics/Paint;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    :goto_21
    const/4 v1, 0x4

    .line 35
    if-ge v0, v1, :cond_41

    .line 37
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 39
    aget-object v1, v1, v0

    .line 41
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 43
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 45
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 47
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 52
    aget-object v1, v1, v0

    .line 54
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 56
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 58
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 60
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_21

    .line 66
    :cond_41
    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 68
    if-eqz v0, :cond_60

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    .line 77
    move-result v1

    .line 78
    neg-int v2, v0

    .line 79
    int-to-float v2, v2

    .line 80
    neg-int v3, v1

    .line 81
    int-to-float v3, v3

    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 87
    sget-object v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    int-to-float v0, v0

    .line 93
    int-to-float v1, v1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    :cond_60
    return-void
.end method

.method private drawFillShape(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 3
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 7
    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 12
    move-result-object v5

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    .line 18
    return-void
.end method

.method private drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V
    .registers 7

    .line 2
    invoke-virtual {p4, p5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget p4, p4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    mul-float/2addr p3, p4

    .line 4
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    .line 5
    :cond_17
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1a
    return-void
.end method

.method private drawStrokeShape(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 3
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Landroid/graphics/Path;

    .line 5
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Landroid/graphics/RectF;

    .line 10
    move-result-object v5

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    .line 16
    return-void
.end method

.method private getBoundsInsetByStroke()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 16
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Landroid/graphics/RectF;

    .line 21
    return-object v0
.end method

.method private getStrokeInsetLength()F
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x40000000  # 2.0f

    .line 15
    div-float/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private hasCompatShadow()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_15

    .line 8
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 10
    if-lez v0, :cond_15

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq v1, v0, :cond_16

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->requiresCompatShadow()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v2, 0x0

    .line 23
    :cond_16
    :goto_16
    return v2
.end method

.method private hasFill()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 7
    if-eq v0, v1, :cond_f

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 11
    if-ne v0, v1, :cond_d

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
    return v0
.end method

.method private hasStroke()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 7
    if-eq v0, v1, :cond_c

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 11
    if-ne v0, v1, :cond_19

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 22
    if-lez v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return v0
.end method

.method private invalidateSelfIgnoreShape()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method private maybeDrawCompatShadow(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasCompatShadow()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->prepareCanvasForShadow(Landroid/graphics/Canvas;)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 16
    if-nez v0, :cond_18

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    sub-float/2addr v0, v1

    .line 41
    float-to-int v0, v0

    .line 42
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v1, v2

    .line 58
    float-to-int v1, v1

    .line 59
    if-ltz v0, :cond_94

    .line 61
    if-ltz v1, :cond_94

    .line 63
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 65
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 68
    move-result v2

    .line 69
    float-to-int v2, v2

    .line 70
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 72
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 74
    mul-int/lit8 v3, v3, 0x2

    .line 76
    add-int/2addr v3, v2

    .line 77
    add-int/2addr v3, v0

    .line 78
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Landroid/graphics/RectF;

    .line 80
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 83
    move-result v2

    .line 84
    float-to-int v2, v2

    .line 85
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 87
    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 89
    mul-int/lit8 v4, v4, 0x2

    .line 91
    add-int/2addr v4, v2

    .line 92
    add-int/2addr v4, v1

    .line 93
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 95
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Landroid/graphics/Canvas;

    .line 101
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 107
    move-result-object v4

    .line 108
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 110
    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 112
    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 114
    sub-int/2addr v4, v5

    .line 115
    sub-int/2addr v4, v0

    .line 116
    int-to-float v0, v4

    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 120
    move-result-object v4

    .line 121
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 123
    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 125
    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 127
    sub-int/2addr v4, v5

    .line 128
    sub-int/2addr v4, v1

    .line 129
    int-to-float v1, v4

    .line 130
    neg-float v4, v0

    .line 131
    neg-float v5, v1

    .line 132
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    invoke-direct {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Landroid/graphics/Canvas;)V

    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    return-void

    .line 149
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 151
    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 153
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p1
.end method

.method private static modulateAlpha(II)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    ushr-int/lit8 p0, p1, 0x8

    return p0
.end method

.method private prepareCanvasForShadow(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    .line 8
    move-result v1

    .line 9
    int-to-float v0, v0

    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    return-void
.end method

.method private updateColorsForState([I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1e

    .line 8
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 16
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 21
    move-result v2

    .line 22
    if-eq v0, v2, :cond_1e

    .line 24
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    move v0, v1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    :goto_1f
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 34
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 36
    if-eqz v2, :cond_3b

    .line 38
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 46
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 48
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 51
    move-result p1

    .line 52
    if-eq v2, p1, :cond_3b

    .line 54
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v1, v0

    .line 61
    :goto_3c
    return v1
.end method

.method private updateTintFilter()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 7
    iget-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 20
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 22
    iget-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 24
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 26
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-direct {p0, v3, v2, v4, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 35
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 37
    iget-boolean v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 39
    if-eqz v3, :cond_37

    .line 41
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 43
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v3, v2}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 56
    :cond_37
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 58
    invoke-static {v0, v2}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_49

    .line 64
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 66
    invoke-static {v1, v0}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v5, v6

    .line 74
    :cond_49
    :goto_49
    return v5
.end method

.method private updateZ()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 7
    const/high16 v2, 0x3f400000  # 0.75f

    .line 9
    mul-float/2addr v2, v0

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 18
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 20
    const/high16 v2, 0x3e800000  # 0.25f

    .line 22
    mul-float/2addr v0, v2

    .line 23
    float-to-double v2, v0

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 27
    move-result-wide v2

    .line 28
    double-to-int v0, v2

    .line 29
    iput v0, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 37
    return-void
.end method


# virtual methods
.method public final calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 5
    iget-object v2, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    iget v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 9
    iget-object v4, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 11
    move-object v1, v2

    .line 12
    move v2, v3

    .line 13
    move-object v3, p1

    .line 14
    move-object v5, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 18
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 16
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 18
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 20
    invoke-static {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 29
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 36
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 38
    iget v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 53
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 55
    invoke-static {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-boolean v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 64
    if-eqz v2, :cond_50

    .line 66
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculateStrokePath()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 75
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 78
    const/4 v2, 0x0

    .line 79
    iput-boolean v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 81
    :cond_50
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->maybeDrawCompatShadow(Landroid/graphics/Canvas;)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasFill()Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5c

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawFillShape(Landroid/graphics/Canvas;)V

    .line 93
    :cond_5c
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_65

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    .line 102
    :cond_65
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v5, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getBottomLeftCornerResolvedSize()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getBottomRightCornerResolvedSize()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getBoundsAsRectF()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->rectF:Landroid/graphics/RectF;

    .line 12
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    return-object v0
.end method

.method public getElevation()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 5
    return v0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 5
    return-object v0
.end method

.method public getInterpolation()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 5
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1f

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 21
    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 23
    mul-float/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_36

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    const/16 v1, 0x1d

    .line 53
    if-lt v0, v1, :cond_3b

    .line 55
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    :cond_3b
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    .line 5
    return-object v0
.end method

.method public getParentAbsoluteElevation()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 5
    return v0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    int-to-float p1, p1

    .line 4
    int-to-float p2, p2

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    invoke-virtual {p0, v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 12
    return-void
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 5
    return v0
.end method

.method public getShadowCompatRotation()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 5
    return v0
.end method

.method public getShadowCompatibilityMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 5
    return v0
.end method

.method public getShadowElevation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    return v0
.end method

.method public getShadowOffsetX()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 5
    int-to-double v1, v1

    .line 6
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 8
    int-to-double v3, v0

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    move-result-wide v3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 16
    move-result-wide v3

    .line 17
    mul-double/2addr v3, v1

    .line 18
    double-to-int v0, v3

    .line 19
    return v0
.end method

.method public getShadowOffsetY()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 5
    int-to-double v1, v1

    .line 6
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 8
    int-to-double v3, v0

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    move-result-wide v3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 16
    move-result-wide v3

    .line 17
    mul-double/2addr v3, v1

    .line 18
    double-to-int v0, v3

    .line 19
    return v0
.end method

.method public getShadowRadius()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 5
    return v0
.end method

.method public getShadowVerticalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 5
    return v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    return-object v0
.end method

.method public getShapedViewModel()Lcom/google/android/material/shape/ShapePathModel;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/shape/ShapePathModel;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    check-cast v0, Lcom/google/android/material/shape/ShapePathModel;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 5
    return-object v0
.end method

.method public getStrokeTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 5
    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 5
    return v0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 5
    return-object v0
.end method

.method public getTopLeftCornerResolvedSize()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getTopRightCornerResolvedSize()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getTranslationZ()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 5
    return v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 21
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 23
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 28
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 30
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 32
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 37
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 39
    return-object v0
.end method

.method public getZ()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTranslationZ()F

    .line 8
    move-result v1

    .line 9
    add-float/2addr v1, v0

    .line 10
    return v1
.end method

.method public initializeElevationOverlay(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    new-instance v1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 13
    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public isElevationOverlayInitialized()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isPointInTransparentRegion(II)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTransparentRegion()Landroid/graphics/Region;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isRoundRect()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isShadowEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 5
    if-eqz v0, :cond_c

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 14
    :goto_d
    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_39

    .line 7
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 9
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 11
    if-eqz v0, :cond_12

    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_39

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 21
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_39

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 33
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_39

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 45
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 47
    if-eqz v0, :cond_37

    .line 49
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_37

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 59
    :goto_3a
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    .line 8
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 10
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    .line 4
    move-result p1

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_f

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    if-eqz p1, :cond_15

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 22
    :cond_15
    return p1
.end method

.method public requiresCompatShadow()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_16

    .line 9
    iget-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_16

    .line 17
    const/16 v1, 0x1d

    .line 19
    if-ge v0, v1, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public setAlpha(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 5
    if-eq v1, p1, :cond_b

    .line 7
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 12
    :cond_b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 8
    return-void
.end method

.method public setCornerSize(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setCornerSize(Lcom/google/android/material/shape/CornerSize;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgeIntersectionCheckEnable(Z)V

    .line 6
    return-void
.end method

.method public setElevation(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 14
    :cond_d
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_f

    .line 7
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 16
    :cond_f
    return-void
.end method

.method public setInterpolation(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_10

    .line 9
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    .line 5
    if-nez v1, :cond_d

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 16
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Landroid/graphics/Paint$Style;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 8
    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 14
    :cond_d
    return-void
.end method

.method public setScale(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    :cond_d
    return-void
.end method

.method public setShadowBitmapDrawingEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 3
    return-void
.end method

.method public setShadowColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lcom/google/android/material/shadow/ShadowRenderer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 14
    return-void
.end method

.method public setShadowCompatRotation(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 5
    if-eq v1, p1, :cond_b

    .line 7
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 12
    :cond_b
    return-void
.end method

.method public setShadowCompatibilityMode(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 5
    if-eq v1, p1, :cond_b

    .line 7
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 12
    :cond_b
    return-void
.end method

.method public setShadowElevation(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 5
    return-void
.end method

.method public setShadowEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 6
    return-void
.end method

.method public setShadowRadius(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 5
    return-void
.end method

.method public setShadowVerticalOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 5
    if-eq v1, p1, :cond_b

    .line 7
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 12
    :cond_b
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    return-void
.end method

.method public setShapedViewModel(Lcom/google/android/material/shape/ShapePathModel;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 4
    return-void
.end method

.method public setStroke(FI)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_f

    .line 7
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 16
    :cond_f
    return-void
.end method

.method public setStrokeTint(I)V
    .registers 2

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    return-void
.end method

.method public setTint(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 5
    if-eq v1, p1, :cond_e

    .line 7
    iput-object p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 15
    :cond_e
    return-void
.end method

.method public setTranslationZ(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 14
    :cond_d
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 5
    if-eq v1, p1, :cond_b

    .line 7
    iput-boolean p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    :cond_b
    return-void
.end method

.method public setZ(F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTranslationZ(F)V

    .line 9
    return-void
.end method
