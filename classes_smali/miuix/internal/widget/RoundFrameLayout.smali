.class public Lmiuix/internal/widget/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field private mAreaRegion:Landroid/graphics/Region;

.field private mBorderColor:I

.field private mBorderWidth:F

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadii:[F

.field private mRadius:F

.field private mUseSmooth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lmiuix/internal/widget/RoundFrameLayout;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_immersion_menu_background_radius:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    iput v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    .line 18
    const/16 v1, 0x8

    .line 20
    new-array v1, v1, [F

    .line 22
    const/4 v2, 0x0

    .line 23
    aput v0, v1, v2

    .line 25
    const/4 v2, 0x1

    .line 26
    aput v0, v1, v2

    .line 28
    const/4 v3, 0x2

    .line 29
    aput v0, v1, v3

    .line 31
    const/4 v3, 0x3

    .line 32
    aput v0, v1, v3

    .line 34
    const/4 v3, 0x4

    .line 35
    aput v0, v1, v3

    .line 37
    const/4 v3, 0x5

    .line 38
    aput v0, v1, v3

    .line 40
    const/4 v3, 0x6

    .line 41
    aput v0, v1, v3

    .line 43
    const/4 v3, 0x7

    .line 44
    aput v0, v1, v3

    .line 46
    iput-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    .line 50
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 55
    iput-boolean v2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mUseSmooth:Z

    .line 57
    invoke-static {p0, v2}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 60
    new-instance v0, Landroid/graphics/Path;

    .line 62
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 65
    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 67
    new-instance v0, Landroid/graphics/Region;

    .line 69
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 72
    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    .line 76
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 79
    iput-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 81
    const/4 v1, -0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    return-void
.end method

.method private onBorderDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 3
    if-eqz v0, :cond_77

    .line 5
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-eqz v0, :cond_77

    .line 12
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_14

    .line 20
    goto :goto_77

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 26
    move-result v0

    .line 27
    float-to-int v0, v0

    .line 28
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 33
    move-result v1

    .line 34
    float-to-int v1, v1

    .line 35
    new-instance v2, Landroid/graphics/RectF;

    .line 37
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 40
    iget v3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 42
    const/high16 v4, 0x40000000  # 2.0f

    .line 44
    div-float/2addr v3, v4

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    move-result v5

    .line 49
    int-to-float v5, v5

    .line 50
    add-float/2addr v5, v3

    .line 51
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 56
    move-result v5

    .line 57
    int-to-float v5, v5

    .line 58
    add-float/2addr v5, v3

    .line 59
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 64
    move-result v5

    .line 65
    sub-int/2addr v0, v5

    .line 66
    int-to-float v0, v0

    .line 67
    sub-float/2addr v0, v3

    .line 68
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    move-result v0

    .line 74
    sub-int/2addr v1, v0

    .line 75
    int-to-float v0, v1

    .line 76
    sub-float/2addr v0, v3

    .line 77
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 79
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 84
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 99
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 101
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 106
    iget v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    .line 113
    mul-float/2addr v3, v4

    .line 114
    sub-float/2addr v0, v3

    .line 115
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    :cond_77
    :goto_77
    return-void
.end method

.method private refreshRegion()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    new-instance v2, Landroid/graphics/RectF;

    .line 22
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v3

    .line 36
    int-to-float v3, v3

    .line 37
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v3

    .line 43
    sub-int/2addr v0, v3

    .line 44
    int-to-float v0, v0

    .line 45
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    move-result v0

    .line 51
    sub-int/2addr v1, v0

    .line 52
    int-to-float v0, v1

    .line 53
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 55
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 60
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 62
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 64
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 66
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 69
    new-instance v0, Landroid/graphics/Region;

    .line 71
    iget v1, v2, Landroid/graphics/RectF;->left:F

    .line 73
    float-to-int v1, v1

    .line 74
    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 76
    float-to-int v3, v3

    .line 77
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 79
    float-to-int v4, v4

    .line 80
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 82
    float-to-int v2, v2

    .line 83
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Region;-><init>(IIII)V

    .line 86
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    .line 88
    iget-object v2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 90
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/RoundFrameLayout;->onClipDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-direct {p0, p1}, Lmiuix/internal/widget/RoundFrameLayout;->onBorderDraw(Landroid/graphics/Canvas;)V

    .line 10
    return-void
.end method

.method public enableSmoothRound(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mUseSmooth:Z

    .line 3
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public onClipDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 11
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    iget-object p3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 6
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    invoke-direct {p0}, Lmiuix/internal/widget/RoundFrameLayout;->refreshRegion()V

    .line 15
    return-void
.end method

.method public setBorder(FI)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 3
    iput p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setRadius(F)V
    .registers 4

    .line 1
    iput p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius([F)V

    return-void
.end method

.method public setRadius([F)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4
    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d
    return-void
.end method
