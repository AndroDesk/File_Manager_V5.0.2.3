.class public Lmiuix/smooth/SmoothGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

.field private mLayer:Landroid/graphics/Rect;

.field private mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mSavedLayer:Landroid/graphics/RectF;

.field public mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    sput-object v0, Lmiuix/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 7
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 9
    new-instance p1, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {p1}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {p1}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method private constructor <init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 15
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    if-nez p2, :cond_23

    .line 19
    iget-object p2, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_29

    .line 20
    :cond_23
    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 21
    :goto_29
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 22
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 23
    iget-object p2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    invoke-virtual {p2, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 24
    iget-object p2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    invoke-virtual {p2, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 25
    iget-object p2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    invoke-virtual {p2, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 26
    iget-object p2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p1, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    invoke-virtual {p2, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5

    .line 1
    if-nez p2, :cond_7

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p3, p4, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4
    iget-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 13
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->canApplyTheme()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->canApplyTheme()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/smooth/SmoothGradientDrawable;->getLayerType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_11

    .line 8
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x1f

    .line 13
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 16
    move-result v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, -0x1

    .line 19
    :goto_12
    iget-object v2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 21
    if-eqz v2, :cond_1a

    .line 23
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    :goto_1d
    iget-object v2, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 32
    sget-object v3, Lmiuix/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 34
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 37
    invoke-virtual {p0}, Lmiuix/smooth/SmoothGradientDrawable;->getLayerType()I

    .line 40
    move-result v2

    .line 41
    if-eq v2, v1, :cond_2d

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 46
    :cond_2d
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 48
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getColors()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    return-object v0
.end method

.method public getLayerType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    .line 5
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_12

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 9
    iget-object v1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPath(Landroid/graphics/Rect;)Landroid/graphics/Path;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Landroidx/core/content/a;->n(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 21
    iget-object v1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 23
    invoke-virtual {v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadius()F

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 30
    :goto_1d
    return-void
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 5
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 5
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8

    .line 1
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothGradientDrawable:[I

    .line 3
    invoke-direct {p0, p1, p4, p3, v0}, Lmiuix/smooth/SmoothGradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothGradientDrawable_miuix_strokeWidth:I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothGradientDrawable;->setStrokeWidth(I)V

    .line 17
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothGradientDrawable_miuix_strokeColor:I

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothGradientDrawable;->setStrokeColor(I)V

    .line 26
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothGradientDrawable_android_layerType:I

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothGradientDrawable;->setLayerType(I)V

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 41
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 16
    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mLayer:Landroid/graphics/Rect;

    .line 18
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 12
    :goto_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_b

    .line 3
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_b
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_b

    .line 6
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_b
    return-void
.end method

.method public setColors([I[F)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1d

    .line 9
    if-lt v1, v2, :cond_e

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 18
    :goto_11
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 6
    iput-object p1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    .line 8
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 13
    if-nez p1, :cond_18

    .line 15
    iget-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    .line 20
    iget-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 25
    :cond_18
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 11
    const/4 v0, 0x0

    .line 12
    cmpg-float v1, p1, v0

    .line 14
    if-gez v1, :cond_10

    .line 16
    move p1, v0

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 19
    iput p1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    .line 24
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 26
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 29
    iget-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 31
    invoke-virtual {p1, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 34
    return-void
.end method

.method public setLayerType(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_11

    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_11

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 8
    iget v1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    .line 10
    if-eq v1, p1, :cond_10

    .line 12
    iput p1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public setStrokeColor(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 5
    if-eq v1, p1, :cond_10

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 5
    if-eq v1, p1, :cond_10

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void
.end method
