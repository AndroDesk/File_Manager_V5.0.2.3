.class public Lmiuix/smooth/internal/SmoothDrawHelper;
.super Ljava/lang/Object;
.source "SmoothDrawHelper.java"


# static fields
.field private static final EXTRA_PADDING:F = 0.5f


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mOutterPath:Landroid/graphics/Path;

.field private mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 7
    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    .line 31
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 34
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    .line 38
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 41
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 43
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2;

    .line 45
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2;-><init>()V

    .line 48
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 55
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 57
    return-void
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .registers 7

    .line 1
    if-nez p3, :cond_9

    .line 3
    iget-object p3, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    .line 5
    invoke-virtual {p3, p2, p4, p5, p6}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    .line 8
    move-result-object p2

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object p4, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    .line 12
    invoke-virtual {p4, p2, p3, p5, p6}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    .line 15
    move-result-object p2

    .line 16
    :goto_f
    iget-object p3, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    .line 18
    invoke-virtual {p3, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->getSmoothPath(Landroid/graphics/Path;Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Landroid/graphics/Path;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method


# virtual methods
.method public drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6
    iget-object p2, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 8
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 19
    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-eqz v0, :cond_35

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 31
    iget v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 33
    int-to-float v1, v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 39
    iget v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 46
    iget-object v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :cond_35
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRadii()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 3
    return-object v0
.end method

.method public getRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 3
    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Rect;)Landroid/graphics/Path;
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    const/high16 v1, 0x3f000000  # 0.5f

    .line 26
    if-eqz v0, :cond_22

    .line 28
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v2, 0x40000000  # 2.0f

    .line 33
    div-float/2addr v0, v2

    .line 34
    add-float/2addr v1, v0

    .line 35
    :cond_22
    move v8, v1

    .line 36
    new-instance v3, Landroid/graphics/Path;

    .line 38
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 41
    new-instance v4, Landroid/graphics/RectF;

    .line 43
    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 46
    iget-object v5, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 48
    iget v6, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 50
    move-object v2, p0

    .line 51
    move v7, v8

    .line 52
    invoke-direct/range {v2 .. v8}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 3
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 3
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v1, v1

    .line 6
    const/high16 v2, 0x3f000000  # 0.5f

    .line 8
    sub-float/2addr v1, v2

    .line 9
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 11
    int-to-float v3, v3

    .line 12
    sub-float/2addr v3, v2

    .line 13
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 15
    int-to-float v4, v4

    .line 16
    add-float/2addr v4, v2

    .line 17
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 19
    int-to-float p1, p1

    .line 20
    add-float/2addr p1, v2

    .line 21
    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 26
    if-eqz p1, :cond_2d

    .line 28
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2d

    .line 36
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 38
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2d

    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    if-eqz p1, :cond_37

    .line 49
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 51
    int-to-float p1, p1

    .line 52
    const/high16 v0, 0x40000000  # 2.0f

    .line 54
    div-float/2addr p1, v0

    .line 55
    add-float/2addr v2, p1

    .line 56
    :cond_37
    move v9, v2

    .line 57
    iget-object v4, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 59
    iget-object v5, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 61
    iget-object v6, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 63
    iget v7, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 65
    move-object v3, p0

    .line 66
    move v8, v9

    .line 67
    invoke-direct/range {v3 .. v9}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 73
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 75
    if-eqz p1, :cond_50

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 80
    goto :goto_57

    .line 81
    :cond_50
    new-instance p1, Landroid/graphics/Path;

    .line 83
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 86
    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 88
    :goto_57
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 90
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 92
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 97
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 99
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 101
    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 106
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setRadii([F)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 3
    return-void
.end method

.method public setRadius(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 3
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 3
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 3
    return-void
.end method
