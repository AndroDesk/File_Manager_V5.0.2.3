.class public Lcom/google/android/material/chip/ChipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private checkedIconVisible:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;

.field private chipIconSize:F

.field private chipIconTint:Landroid/content/res/ColorStateList;

.field private chipIconVisible:Z

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;

.field private chipStrokeWidth:F

.field private chipSurfaceColor:Landroid/content/res/ColorStateList;

.field private closeIcon:Landroid/graphics/drawable/Drawable;

.field private closeIconContentDescription:Ljava/lang/CharSequence;

.field private closeIconEndPadding:F

.field private closeIconRipple:Landroid/graphics/drawable/Drawable;

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;

.field private closeIconVisible:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private compatRippleColor:Landroid/content/res/ColorStateList;

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I

.field private currentChipStrokeColor:I

.field private currentChipSurfaceColor:I

.field private currentCompatRippleColor:I

.field private currentCompositeSurfaceBackgroundColor:I

.field private currentTextColor:I

.field private currentTint:I

.field private final debugPaint:Landroid/graphics/Paint;

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hasChipIconTint:Z

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private isShapeThemingEnabled:Z

.field private maxWidth:I

.field private final pointF:Landroid/graphics/PointF;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private final shapePath:Landroid/graphics/Path;

.field private shouldDrawText:Z

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private textEndPadding:F

.field private textStartPadding:F

.field private tint:Landroid/content/res/ColorStateList;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private useCompatRipple:Z


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
    const v2, 0x101009e

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    .line 12
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 14
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 16
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 19
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 22
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    const/high16 p2, -0x40800000  # -1.0f

    .line 6
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    .line 10
    const/4 p3, 0x1

    .line 11
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 16
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 18
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 23
    new-instance p2, Landroid/graphics/RectF;

    .line 25
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 30
    new-instance p2, Landroid/graphics/PointF;

    .line 32
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 37
    new-instance p2, Landroid/graphics/Path;

    .line 39
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 44
    const/16 p2, 0xff

    .line 46
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 48
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 50
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 52
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 54
    const/4 p4, 0x0

    .line 55
    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 65
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    .line 67
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 70
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 72
    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    move-result-object p1

    .line 88
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 90
    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 92
    iput-object p4, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 94
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    .line 96
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 102
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 104
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 106
    if-eqz p1, :cond_71

    .line 108
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 110
    const/4 p2, -0x1

    .line 111
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 114
    :cond_71
    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 10
    move-result v0

    .line 11
    invoke-static {p1, v0}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 29
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    if-ne p1, v0, :cond_33

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2d

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 48
    invoke-static {p1, v0}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 51
    return-void

    .line 52
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_40

    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 65
    :cond_40
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    if-ne p1, v0, :cond_4d

    .line 69
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    .line 71
    if-eqz p1, :cond_4d

    .line 73
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 75
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 78
    :cond_4d
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_f

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_41

    .line 16
    :cond_f
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 18
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 20
    add-float/2addr v0, v1

    .line 21
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_26

    .line 27
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 29
    int-to-float v1, v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 33
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 35
    add-float/2addr v1, v0

    .line 36
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 41
    int-to-float v1, v1

    .line 42
    sub-float/2addr v1, v0

    .line 43
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 45
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 47
    sub-float/2addr v1, v0

    .line 48
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 50
    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 53
    move-result p1

    .line 54
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 56
    const/high16 v1, 0x40000000  # 2.0f

    .line 58
    div-float v1, v0, v1

    .line 60
    sub-float/2addr p1, v1

    .line 61
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 63
    add-float/2addr p1, v0

    .line 64
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 66
    :cond_41
    return-void
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    .line 1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2a

    .line 10
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 12
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 14
    add-float/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 17
    add-float/2addr v0, v1

    .line 18
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 20
    add-float/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 23
    add-float/2addr v0, v1

    .line 24
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_24

    .line 30
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 32
    int-to-float p1, p1

    .line 33
    sub-float/2addr p1, v0

    .line 34
    iput p1, p2, Landroid/graphics/RectF;->right:F

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 39
    int-to-float p1, p1

    .line 40
    add-float/2addr p1, v0

    .line 41
    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3b

    .line 10
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 12
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 14
    add-float/2addr v0, v1

    .line 15
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_20

    .line 21
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 23
    int-to-float v1, v1

    .line 24
    sub-float/2addr v1, v0

    .line 25
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 27
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 29
    sub-float/2addr v1, v0

    .line 30
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 32
    goto :goto_2b

    .line 33
    :cond_20
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 35
    int-to-float v1, v1

    .line 36
    add-float/2addr v1, v0

    .line 37
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 39
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 41
    add-float/2addr v1, v0

    .line 42
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 44
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 47
    move-result p1

    .line 48
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 50
    const/high16 v1, 0x40000000  # 2.0f

    .line 52
    div-float v1, v0, v1

    .line 54
    sub-float/2addr p1, v1

    .line 55
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 57
    add-float/2addr p1, v0

    .line 58
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 60
    :cond_3b
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_39

    .line 10
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 12
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 14
    add-float/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 17
    add-float/2addr v0, v1

    .line 18
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 20
    add-float/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 23
    add-float/2addr v0, v1

    .line 24
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_26

    .line 30
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 32
    int-to-float v1, v1

    .line 33
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 35
    sub-float/2addr v1, v0

    .line 36
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 38
    goto :goto_2f

    .line 39
    :cond_26
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 41
    int-to-float v2, v1

    .line 42
    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 44
    int-to-float v1, v1

    .line 45
    add-float/2addr v1, v0

    .line 46
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 48
    :goto_2f
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 50
    int-to-float v0, v0

    .line 51
    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 53
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 55
    int-to-float p1, p1

    .line 56
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 58
    :cond_39
    return-void
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 6
    if-eqz v0, :cond_44

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 13
    move-result v1

    .line 14
    add-float/2addr v1, v0

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 17
    add-float/2addr v1, v0

    .line 18
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 23
    move-result v2

    .line 24
    add-float/2addr v2, v0

    .line 25
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 27
    add-float/2addr v2, v0

    .line 28
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2e

    .line 34
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 36
    int-to-float v0, v0

    .line 37
    add-float/2addr v0, v1

    .line 38
    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 40
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 42
    int-to-float v0, v0

    .line 43
    sub-float/2addr v0, v2

    .line 44
    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 49
    int-to-float v0, v0

    .line 50
    add-float/2addr v0, v2

    .line 51
    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 53
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 55
    int-to-float v0, v0

    .line 56
    sub-float/2addr v0, v1

    .line 57
    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 59
    :goto_3a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 64
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 66
    int-to-float p1, p1

    .line 67
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 69
    :cond_44
    return-void
.end method

.method private calculateTextCenterFromBaseline()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

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

.method private canShowCheckedIcon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

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

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipDrawable;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 9
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .registers 4

    .line 1
    const-string v0, "chip"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    .line 15
    :cond_e
    sget v1, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    .line 17
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_32

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 9
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 14
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 16
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 32
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    neg-float v0, v0

    .line 47
    neg-float p2, p2

    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    :cond_32
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 3
    if-nez v0, :cond_2f

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 7
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 28
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 33
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    :cond_2f
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_32

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 9
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 14
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 16
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 32
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    neg-float v0, v0

    .line 47
    neg-float p2, p2

    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    :cond_32
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_53

    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 10
    if-nez v0, :cond_53

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 14
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 28
    if-nez v0, :cond_26

    .line 30
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 41
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 43
    int-to-float v1, v1

    .line 44
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 46
    const/high16 v3, 0x40000000  # 2.0f

    .line 48
    div-float v4, v2, v3

    .line 50
    add-float/2addr v4, v1

    .line 51
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 53
    int-to-float v1, v1

    .line 54
    div-float v5, v2, v3

    .line 56
    add-float/2addr v5, v1

    .line 57
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 59
    int-to-float v1, v1

    .line 60
    div-float v6, v2, v3

    .line 62
    sub-float/2addr v1, v6

    .line 63
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 65
    int-to-float p2, p2

    .line 66
    div-float/2addr v2, v3

    .line 67
    sub-float/2addr p2, v2

    .line 68
    invoke-virtual {v0, v4, v5, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 73
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 75
    div-float/2addr v0, v3

    .line 76
    sub-float/2addr p2, v0

    .line 77
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 79
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    :cond_53
    return-void
.end method

.method private drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 3
    if-nez v0, :cond_26

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 7
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 21
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 24
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    :cond_26
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4c

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 9
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 14
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 16
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 32
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 43
    if-eqz v1, :cond_42

    .line 45
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 61
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    goto :goto_47

    .line 67
    :cond_42
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :goto_47
    neg-float v0, v0

    .line 73
    neg-float p2, p2

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    :cond_4c
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 3
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 20
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 22
    if-nez v0, :cond_27

    .line 24
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    goto :goto_3c

    .line 40
    :cond_27
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 45
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 50
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 57
    move-result-object v1

    .line 58
    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 61
    :goto_3c
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 3
    if-eqz v0, :cond_85

    .line 5
    const/high16 v1, -0x1000000

    .line 7
    const/16 v2, 0x7f

    .line 9
    invoke-static {v1, v2}, Lf0/d;->c(II)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_20

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2c

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 35
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 40
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 47
    if-eqz v0, :cond_44

    .line 49
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 51
    int-to-float v4, v0

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 55
    move-result v5

    .line 56
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 58
    int-to-float v6, v0

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 62
    move-result v7

    .line 63
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 65
    move-object v3, p1

    .line 66
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    :cond_44
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_56

    .line 75
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 77
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 82
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 89
    const/high16 v1, -0x10000

    .line 91
    invoke-static {v1, v2}, Lf0/d;->c(II)I

    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 100
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 105
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 112
    const v1, -0xff0100

    .line 115
    invoke-static {v1, v2}, Lf0/d;->c(II)I

    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 124
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 127
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 129
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    :cond_85
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_95

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 13
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_2a

    .line 24
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 26
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 36
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 38
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 40
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 43
    :cond_2a
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 45
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 69
    move-result p2

    .line 70
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 72
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    if-le p2, v0, :cond_54

    .line 83
    const/4 p2, 0x1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move p2, v1

    .line 86
    :goto_55
    if-eqz p2, :cond_60

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    move-result v1

    .line 92
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 97
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 99
    if-eqz p2, :cond_7a

    .line 101
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 103
    if-eqz v2, :cond_7a

    .line 105
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 107
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 110
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 113
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 116
    move-result v3

    .line 117
    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 119
    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 122
    move-result-object v0

    .line 123
    :cond_7a
    move-object v3, v0

    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 128
    move-result v5

    .line 129
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 131
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 133
    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 135
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 140
    move-result-object v8

    .line 141
    move-object v2, p1

    .line 142
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 145
    if-eqz p2, :cond_95

    .line 147
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 150
    :cond_95
    return-void
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 8
    :goto_7
    return-object v0
.end method

.method private static hasState([II)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    array-length v1, p0

    .line 6
    move v2, v0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_11

    .line 9
    aget v3, p0, v2

    .line 11
    if-ne v3, p1, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_6

    .line 18
    :cond_11
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 10
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isStateful(Lcom/google/android/material/resources/TextAppearance;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 12
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_e

    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

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
    move-result-object p2

    .line 15
    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 20
    move-result p3

    .line 21
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 23
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 25
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 27
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 30
    move-result-object p3

    .line 31
    invoke-direct {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipSurfaceColor(Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 36
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 38
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 45
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 51
    move-result p3

    .line 52
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 55
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    .line 57
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_45

    .line 63
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 66
    move-result p3

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 70
    :cond_45
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 72
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 74
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 81
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    .line 83
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 86
    move-result p3

    .line 87
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 90
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 92
    sget v1, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    .line 94
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 101
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    .line 103
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 112
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 114
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 121
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    .line 123
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 126
    move-result p3

    .line 127
    const/4 v1, 0x1

    .line 128
    if-eq p3, v1, :cond_94

    .line 130
    const/4 v1, 0x2

    .line 131
    if-eq p3, v1, :cond_8e

    .line 133
    const/4 v1, 0x3

    .line 134
    if-eq p3, v1, :cond_88

    .line 136
    goto :goto_99

    .line 137
    :cond_88
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 139
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    goto :goto_99

    .line 143
    :cond_8e
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 145
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    goto :goto_99

    .line 149
    :cond_94
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 151
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    :goto_99
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    .line 156
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 159
    move-result p3

    .line 160
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 163
    const-string p3, "http://schemas.android.com/apk/res-auto"

    .line 165
    if-eqz p1, :cond_bf

    .line 167
    const-string v1, "chipIconEnabled"

    .line 169
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_bf

    .line 175
    const-string v1, "chipIconVisible"

    .line 177
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    if-nez v1, :cond_bf

    .line 183
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    .line 185
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 188
    move-result v1

    .line 189
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 192
    :cond_bf
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 194
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    .line 196
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_db

    .line 211
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 213
    invoke-static {v2, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_db
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    .line 222
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 225
    move-result v1

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 229
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    .line 231
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 234
    move-result v1

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 238
    if-eqz p1, :cond_108

    .line 240
    const-string v1, "closeIconEnabled"

    .line 242
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_108

    .line 248
    const-string v1, "closeIconVisible"

    .line 250
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    if-nez v1, :cond_108

    .line 256
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    .line 258
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 261
    move-result v1

    .line 262
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 265
    :cond_108
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 267
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    .line 269
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 278
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 280
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 287
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    .line 289
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 292
    move-result v1

    .line 293
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 296
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    .line 298
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 301
    move-result v1

    .line 302
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 305
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    .line 307
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    move-result v1

    .line 311
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 314
    if-eqz p1, :cond_154

    .line 316
    const-string v1, "checkedIconEnabled"

    .line 318
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    move-result-object v1

    .line 322
    if-eqz v1, :cond_154

    .line 324
    const-string v1, "checkedIconVisible"

    .line 326
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    move-result-object p1

    .line 330
    if-nez p1, :cond_154

    .line 332
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    .line 334
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 337
    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 341
    :cond_154
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 343
    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    .line 345
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    .line 354
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 357
    move-result p3

    .line 358
    if-eqz p3, :cond_170

    .line 360
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 362
    invoke-static {p3, p2, p1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 369
    :cond_170
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 371
    sget p3, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    .line 373
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 380
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 382
    sget p3, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    .line 384
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 391
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    .line 393
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 396
    move-result p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 400
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    .line 402
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 405
    move-result p1

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 409
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    .line 411
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 414
    move-result p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 418
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    .line 420
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 423
    move-result p1

    .line 424
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 427
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    .line 429
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 432
    move-result p1

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 436
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    .line 438
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 441
    move-result p1

    .line 442
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 445
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    .line 447
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 450
    move-result p1

    .line 451
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 454
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    .line 456
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 459
    move-result p1

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 463
    sget p1, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    .line 465
    const p3, 0x7fffffff

    .line 468
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 471
    move-result p1

    .line 472
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 475
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 478
    return-void
.end method

.method private onStateChange([I[I)Z
    .registers 9

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    .line 6
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_11

    :cond_10
    move v1, v2

    .line 7
    :goto_11
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_19

    .line 8
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    move v0, v4

    .line 9
    :cond_19
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_24

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 10
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_25

    :cond_24
    move v3, v2

    .line 11
    :goto_25
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v5, v3, :cond_2c

    .line 12
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    move v0, v4

    .line 13
    :cond_2c
    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v1

    .line 14
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    if-eq v3, v1, :cond_36

    move v3, v4

    goto :goto_37

    :cond_36
    move v3, v2

    .line 15
    :goto_37
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_3f

    move v5, v4

    goto :goto_40

    :cond_3f
    move v5, v2

    :goto_40
    or-int/2addr v3, v5

    if-eqz v3, :cond_4d

    .line 16
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    .line 17
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 18
    :cond_4d
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_58

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 19
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_59

    :cond_58
    move v1, v2

    .line 20
    :goto_59
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v3, v1, :cond_60

    .line 21
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    move v0, v4

    .line 22
    :cond_60
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_73

    .line 23
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 24
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    .line 25
    :goto_74
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v3, v1, :cond_7f

    .line 26
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 27
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v1, :cond_7f

    move v0, v4

    .line 28
    :cond_7f
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    .line 32
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_a1

    :cond_a0
    move v1, v2

    .line 33
    :goto_a1
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    if-eq v3, v1, :cond_a8

    .line 34
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    move v0, v4

    .line 35
    :cond_a8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/ChipDrawable;->hasState([II)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v1, :cond_bb

    move v1, v4

    goto :goto_bc

    :cond_bb
    move v1, v2

    .line 36
    :goto_bc
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eq v3, v1, :cond_d8

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_d8

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 38
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d5

    move v0, v4

    move v1, v0

    goto :goto_d9

    :cond_d5
    move v1, v2

    move v0, v4

    goto :goto_d9

    :cond_d8
    move v1, v2

    .line 40
    :goto_d9
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_e4

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_e5

    :cond_e4
    move v3, v2

    .line 41
    :goto_e5
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    if-eq v5, v3, :cond_f6

    .line 42
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    .line 43
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_f7

    :cond_f6
    move v4, v0

    .line 44
    :goto_f7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 45
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 46
    :cond_106
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 47
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 48
    :cond_115
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 49
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 50
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 53
    :cond_132
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_145

    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 54
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_145
    if-eqz v4, :cond_14a

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_14a
    if-eqz v1, :cond_14f

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_14f
    return v4
.end method

.method private setChipSurfaceColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 14
    :cond_d
    return-void
.end method

.method private showsCheckedIcon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

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

.method private showsChipIcon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

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

.method private showsCloseIcon()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

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

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_6
    return-void
.end method

.method private updateCompatRippleColor()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 15
    return-void
.end method

.method private updateFrameworkCloseIconRipple()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    sget-object v3, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 18
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 20
    return-void
.end method


# virtual methods
.method public calculateChipIconWidth()F
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

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
    return v0

    .line 16
    :cond_f
    :goto_f
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 18
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 20
    add-float/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 23
    add-float/2addr v0, v1

    .line 24
    return v0
.end method

.method public calculateCloseIconWidth()F
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 9
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 14
    add-float/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 5
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 9
    if-eqz v1, :cond_37

    .line 11
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 16
    move-result v1

    .line 17
    add-float/2addr v1, v0

    .line 18
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 20
    add-float/2addr v1, v0

    .line 21
    invoke-static {p0}, Lg0/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_23

    .line 27
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 29
    int-to-float v0, v0

    .line 30
    add-float/2addr v0, v1

    .line 31
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 33
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 38
    int-to-float v0, v0

    .line 39
    sub-float/2addr v0, v1

    .line 40
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 42
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 44
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 47
    move-result p1

    .line 48
    int-to-float p1, p1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    .line 52
    move-result v1

    .line 53
    sub-float/2addr p1, v1

    .line 54
    iput p1, p2, Landroid/graphics/PointF;->y:F

    .line 56
    :cond_37
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_56

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_56

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 21
    const/16 v8, 0xff

    .line 23
    if-ge v7, v8, :cond_29

    .line 25
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 27
    int-to-float v3, v1

    .line 28
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 30
    int-to-float v4, v1

    .line 31
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 33
    int-to-float v5, v1

    .line 34
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    int-to-float v6, v1

    .line 37
    move-object v2, p1

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    .line 41
    move-result v1

    .line 42
    :cond_29
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 48
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 50
    if-eqz v2, :cond_36

    .line 52
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_36
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 67
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 69
    if-eqz v2, :cond_49

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 74
    :cond_49
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 80
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 82
    if-ge v0, v8, :cond_56

    .line 84
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 3
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 8
    move-result v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 12
    :goto_b
    return v0
.end method

.method public getChipEndPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 3
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    instance-of v1, v0, Lg0/c;

    .line 7
    if-eqz v1, :cond_10

    .line 9
    check-cast v0, Lg0/c;

    .line 11
    invoke-interface {v0}, Lg0/c;->b()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :cond_10
    :goto_10
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 3
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 3
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 3
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 3
    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 8
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    instance-of v1, v0, Lg0/c;

    .line 7
    if-eqz v1, :cond_10

    .line 9
    check-cast v0, Lg0/c;

    .line 11
    invoke-interface {v0}, Lg0/c;->b()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :cond_10
    :goto_10
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 3
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 3
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 3
    return v0
.end method

.method public getCloseIconState()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 3
    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 8
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 3
    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 3
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 3
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 3
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 6
    move-result v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 10
    add-float/2addr v1, v0

    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 24
    move-result v0

    .line 25
    add-float/2addr v0, v1

    .line 26
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 28
    add-float/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 32
    move-result v1

    .line 33
    add-float/2addr v1, v0

    .line 34
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 36
    add-float/2addr v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 40
    move-result v0

    .line 41
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    move-result v0

    .line 47
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    .line 3
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_18

    .line 19
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 30
    move-result v5

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    .line 34
    move-result v6

    .line 35
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 37
    move-object v2, p1

    .line 38
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 41
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    const/high16 v1, 0x437f0000  # 255.0f

    .line 48
    div-float/2addr v0, v1

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 52
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 3
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 3
    return v0
.end method

.method public getUseCompatRipple()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_9
    return-void
.end method

.method public isCheckable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 3
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 3
    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 3
    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isCloseIconStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 3
    return v0
.end method

.method public isShapeThemingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 3
    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_24
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Lcom/google/android/material/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 9
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 v0, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, 0x1

    :goto_52
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 11
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-static {v1, p1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-static {v1, p1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2b

    .line 37
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-static {v1, p1}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2b
    if-eqz v0, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 49
    :cond_30
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public onLevelChange(I)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 11
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2b

    .line 37
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2b
    if-eqz v0, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 49
    :cond_30
    return v0
.end method

.method public onSizeChange()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-interface {v0}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    .line 14
    :cond_d
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p1

    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 10
    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 10
    :cond_9
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 3
    if-eq v0, p1, :cond_21

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 10
    move-result v0

    .line 11
    if-nez p1, :cond_13

    .line 13
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 15
    if-eqz p1, :cond_13

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 27
    cmpl-float p1, v0, p1

    .line 29
    if-eqz p1, :cond_21

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 34
    :cond_21
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 14
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_22

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 8
    move-result v0

    .line 9
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 14
    move-result p1

    .line 15
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 28
    cmpl-float p1, v0, p1

    .line 30
    if-eqz p1, :cond_22

    .line 32
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 35
    :cond_22
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 4
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 14
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 25
    :cond_18
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result p1

    if-eq v0, p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_28

    if-eqz p1, :cond_1d

    .line 6
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 7
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_28
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 14
    :cond_d
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_13

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 20
    :cond_13
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 14
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 15
    :cond_e
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 14
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_30

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 10
    move-result v1

    .line 11
    if-eqz p1, :cond_11

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 42
    cmpl-float p1, v1, p1

    .line 44
    if-eqz p1, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 49
    :cond_30
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 4
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 4
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 20
    cmpl-float p1, v0, p1

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 27
    :cond_1a
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 14
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 6
    if-eq v0, p1, :cond_1b

    .line 8
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_14

    .line 16
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 28
    :cond_1b
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result p1

    if-eq v0, p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_28

    if-eqz p1, :cond_1d

    .line 6
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 7
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_28
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 15
    :cond_e
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 14
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 15
    :cond_e
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 14
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 7
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 21
    :cond_14
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 21
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    :cond_17
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 14
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_37

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 10
    move-result v1

    .line 11
    if-eqz p1, :cond_11

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateFrameworkCloseIconRipple()V

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 31
    move-result p1

    .line 32
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2d

    .line 41
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 49
    cmpl-float p1, v1, p1

    .line 51
    if-eqz p1, :cond_37

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 56
    :cond_37
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 3
    if-eq v0, p1, :cond_13

    .line 5
    invoke-static {}, Lk0/a;->c()Lk0/a;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lk0/a;->c:Lk0/d;

    .line 11
    invoke-virtual {v0, p1, v1}, Lk0/a;->d(Ljava/lang/CharSequence;Lk0/d;)Landroid/text/SpannableStringBuilder;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 20
    :cond_13
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 4
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    .line 4
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_14

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 21
    :cond_14
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 14
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_14

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 21
    :cond_14
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 14
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_14

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 21
    :cond_14
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 14
    return-void
.end method

.method public setCloseIconState([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_19

    .line 9
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-static {v0, p1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 25
    :cond_18
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    if-eq v0, p1, :cond_28

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eq v0, p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_28

    if-eqz p1, :cond_1d

    .line 6
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 7
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_28
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 10
    :cond_9
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 3
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 3
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 10
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 20
    cmpl-float p1, v0, p1

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 27
    :cond_1a
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 14
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 10
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 20
    cmpl-float p1, v0, p1

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 27
    :cond_1a
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 14
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    .line 3
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 17
    :cond_10
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
.end method

.method public setShouldDrawText(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 3
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 3
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 10
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const-string p1, ""

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1a

    .line 13
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 15
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 27
    :cond_1a
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 11
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 15
    :cond_e
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 14
    return-void
.end method

.method public setTextResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 15
    :cond_e
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 14
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 14
    :cond_d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    if-eq v0, p1, :cond_11

    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 9
    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 18
    :cond_11
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 17
    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 11
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2b

    .line 37
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2b
    if-eqz v0, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 49
    :cond_30
    return v0
.end method

.method public shouldDrawText()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 10
    :cond_9
    return-void
.end method
