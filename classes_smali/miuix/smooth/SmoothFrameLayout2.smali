.class public Lmiuix/smooth/SmoothFrameLayout2;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmoothFrameLayout2"


# instance fields
.field private mClip:Z

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mPaintSolid:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTempRadii:[F

.field private mUseSmooth:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topRightRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_44

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomRightRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_44

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomLeftRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_44
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topRightRadius:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomRightRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomLeftRadius:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p2, v4, p3

    aput p2, v4, v1

    const/4 p2, 0x2

    aput v0, v4, p2

    const/4 p2, 0x3

    aput v0, v4, p2

    const/4 p2, 0x4

    aput v2, v4, p2

    const/4 p2, 0x5

    aput v2, v4, p2

    const/4 p2, 0x6

    aput v3, v4, p2

    const/4 p2, 0x7

    aput v3, v4, p2

    invoke-virtual {p0, v4}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadii([F)V

    :cond_7b
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_miuix_strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_miuix_strokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_miuix_useSmooth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    sget-object p2, Lmiuix/smooth/SmoothCornerHelper;->FORCE_USE_SMOOTH:Ljava/lang/Boolean;

    if-eqz p2, :cond_9d

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    :cond_9d
    iget-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    if-eqz p2, :cond_a4

    invoke-direct {p0, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setSmoothCornerEnable(Z)V

    :cond_a4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintSolid:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private clipInnerRoundRect(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v1, :cond_2c

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    add-float v7, v1, v0

    add-float v8, v1, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_65

    :cond_2c
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [F

    iput-object v7, p0, Lmiuix/smooth/SmoothFrameLayout2;->mTempRadii:[F

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x2

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float/2addr v1, v0

    aput v1, v7, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    :goto_65
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private clipRoundRect(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1e

    :cond_15
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_1e
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawRoundRectStroke(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v1, :cond_2c

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    add-float v7, v1, v0

    add-float v8, v1, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_65

    :cond_2c
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [F

    iput-object v7, p0, Lmiuix/smooth/SmoothFrameLayout2;->mTempRadii:[F

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x2

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float/2addr v1, v0

    aput v1, v7, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    :goto_65
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    return-void
.end method

.method private updateBackground()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    if-nez v1, :cond_b

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipRoundRect(Landroid/graphics/Canvas;)V

    :cond_b
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipInnerRoundRect(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_20

    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_20
    iget-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    if-nez v1, :cond_2b

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_2b

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->drawRoundRectStroke(Landroid/graphics/Canvas;)V

    :cond_2b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipRoundRect(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipInnerRoundRect(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1f

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_1f
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_26

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->drawRoundRectStroke(Landroid/graphics/Canvas;)V

    :cond_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCornerRadii()[F
    .registers 2

    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    return v0
.end method

.method public getUseSmooth()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCornerRadii([F)V
    .registers 2

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    move p1, v0

    :cond_6
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2

    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setUseSmooth(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->setSmoothCornerEnable(Z)V

    return-void
.end method
