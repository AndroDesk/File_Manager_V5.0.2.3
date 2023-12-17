.class public Lcom/android/fileexplorer/view/SectorBar;
.super Landroid/view/View;
.source "SectorBar.java"


# instance fields
.field private mBackgroundColor:I

.field private mDrawStyle:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mPercentColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/SectorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->SectorBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, -0x1000000

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mBackgroundColor:I

    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercentColor:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    if-ne p1, p2, :cond_4d

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5c

    .line 14
    :cond_4d
    iget-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_5c
    return-void
.end method


# virtual methods
.method public getPercent()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    .line 14
    iget v3, p0, Lcom/android/fileexplorer/view/SectorBar;->mBackgroundColor:I

    .line 16
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    shr-int/2addr v2, v3

    .line 25
    shr-int/lit8 v4, v0, 0x1

    .line 27
    int-to-float v4, v4

    .line 28
    shr-int/lit8 v5, v1, 0x1

    .line 30
    int-to-float v5, v5

    .line 31
    iget v6, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    .line 33
    sub-int/2addr v2, v6

    .line 34
    int-to-float v2, v2

    .line 35
    iget-object v6, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    iget-object v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget v4, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercentColor:I

    .line 44
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v6, Landroid/graphics/RectF;

    .line 49
    iget v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    .line 51
    int-to-float v4, v2

    .line 52
    int-to-float v5, v2

    .line 53
    sub-int/2addr v0, v2

    .line 54
    int-to-float v0, v0

    .line 55
    sub-int/2addr v1, v2

    .line 56
    int-to-float v1, v1

    .line 57
    invoke-direct {v6, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    .line 62
    const/high16 v1, 0x43b40000  # 360.0f

    .line 64
    mul-float v8, v0, v1

    .line 66
    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    .line 68
    if-ne v0, v3, :cond_46

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    const/4 v3, 0x0

    .line 72
    :goto_47
    move v9, v3

    .line 73
    iget-object v10, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    .line 75
    const/high16 v7, 0x43870000  # 270.0f

    .line 77
    move-object v5, p1

    .line 78
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public setPercent(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    if-gez v1, :cond_8

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    .line 8
    goto :goto_13

    .line 9
    :cond_8
    const/high16 v0, 0x3f800000  # 1.0f

    .line 11
    cmpl-float v1, p1, v0

    .line 13
    if-lez v1, :cond_11

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iput p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    .line 20
    :goto_13
    return-void
.end method
