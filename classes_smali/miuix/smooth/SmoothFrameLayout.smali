.class public Lmiuix/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout.java"


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

.field private mLayer:Landroid/graphics/Rect;

.field private mSavedLayer:Landroid/graphics/RectF;


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
    sput-object v0, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {p3}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 7
    sget-object p3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_radius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 9
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    .line 10
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4a

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topRightRadius:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomRightRadius:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomLeftRadius:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 14
    :cond_4a
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 15
    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 16
    sget v2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 17
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p2, v4, p3

    const/4 v5, 0x1

    aput p2, v4, v5

    aput v0, v4, v1

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

    .line 18
    invoke-virtual {p0, v4}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    .line 19
    :cond_81
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_miuix_strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 20
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeWidth(I)V

    .line 21
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_miuix_strokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeColor(I)V

    .line 23
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_layerType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 p3, 0x0

    .line 24
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateBackground()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBounds()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    return-void
.end method

.method private updateBounds()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_11

    .line 8
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

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
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 22
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 24
    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 26
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 32
    move-result v2

    .line 33
    if-eq v2, v1, :cond_25

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 40
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 43
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_11

    .line 8
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

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
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 22
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 24
    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 26
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 32
    move-result v2

    .line 33
    if-eq v2, v1, :cond_25

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 40
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 43
    return-void
.end method

.method public getCornerRadii()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadii()[F

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_16

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 13
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadii()[F

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [F

    .line 23
    :goto_16
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadius()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 6
    const/4 p4, 0x0

    .line 7
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 12
    int-to-float p1, p1

    .line 13
    int-to-float p2, p2

    .line 14
    const/4 p4, 0x0

    .line 15
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBounds()V

    .line 21
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 6
    if-nez p1, :cond_d

    .line 8
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 14
    :cond_d
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    .line 17
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    if-gez v1, :cond_6

    .line 6
    move p1, v0

    .line 7
    :cond_6
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 12
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 18
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    .line 21
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_10

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 14
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    .line 17
    :cond_10
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_10

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 14
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    .line 17
    :cond_10
    return-void
.end method
