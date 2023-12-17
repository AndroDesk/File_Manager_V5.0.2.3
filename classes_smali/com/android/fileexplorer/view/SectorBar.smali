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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/SectorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->SectorBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mBackgroundColor:I

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercentColor:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    if-ne p1, p2, :cond_4d

    iget-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5c

    :cond_4d
    iget-object p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/fileexplorer/view/SectorBar;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    shr-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    shr-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget-object v6, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercentColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/fileexplorer/view/SectorBar;->mStrokeWidth:I

    int-to-float v4, v2

    int-to-float v5, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v6, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float v8, v0, v1

    iget v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mDrawStyle:I

    if-ne v0, v3, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    move v9, v3

    iget-object v10, p0, Lcom/android/fileexplorer/view/SectorBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43870000  # 270.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPercent(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    goto :goto_13

    :cond_8
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_11

    iput v0, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    goto :goto_13

    :cond_11
    iput p1, p0, Lcom/android/fileexplorer/view/SectorBar;->mPercent:F

    :goto_13
    return-void
.end method
