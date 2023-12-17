.class public Lmiuix/internal/view/CheckWidgetCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckWidgetCircleDrawable.java"


# static fields
.field private static final PADDING:I = 0x1


# instance fields
.field private mHasStroke:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mStrokeDisableAlpha:I

.field private mStrokeNormalAlpha:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mUncheckedDisableAlpha:I

.field private mUncheckedNormalAlpha:I


# direct methods
.method public constructor <init>(III)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 9

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 5
    iput v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 6
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput p2, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    .line 9
    iput p3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-eqz p4, :cond_28

    move p1, v1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 10
    :goto_29
    iput-boolean p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz p1, :cond_45

    .line 11
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000  # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    :cond_45
    iput p5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    .line 16
    iput p6, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 9
    add-int v3, v1, v2

    .line 11
    div-int/lit8 v3, v3, 0x2

    .line 13
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 15
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    add-int v5, v4, v0

    .line 19
    div-int/lit8 v5, v5, 0x2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    sub-int/2addr v0, v4

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v0

    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 29
    int-to-float v1, v3

    .line 30
    int-to-float v2, v5

    .line 31
    int-to-float v0, v0

    .line 32
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 34
    mul-float/2addr v3, v0

    .line 35
    const/high16 v4, 0x3f800000  # 1.0f

    .line 37
    sub-float/2addr v3, v4

    .line 38
    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    iget-boolean v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    .line 45
    if-eqz v3, :cond_38

    .line 47
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 49
    mul-float/2addr v0, v3

    .line 50
    sub-float/2addr v0, v4

    .line 51
    sub-float/2addr v0, v4

    .line 52
    iget-object v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    :cond_38
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 3
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    .line 8
    if-eqz v0, :cond_20

    .line 10
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    .line 12
    if-ne p1, v0, :cond_15

    .line 14
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 16
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    .line 24
    if-ne p1, v0, :cond_20

    .line 26
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 28
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 3
    return-void
.end method
