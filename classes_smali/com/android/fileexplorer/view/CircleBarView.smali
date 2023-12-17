.class public Lcom/android/fileexplorer/view/CircleBarView;
.super Landroid/view/View;
.source "CircleBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/CircleBarView$CircleItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0x2d


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDegrees:F

.field private mHasAnimation:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/CircleBarView$CircleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoAnimation:Z

.field private mOverPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 16
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/CircleBarView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mDegrees:F

    .line 3
    return p1
.end method

.method private applyAnimation()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_24

    .line 12
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x3e8

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 25
    new-instance v1, Lcom/android/fileexplorer/view/CircleBarView$1;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/CircleBarView$1;-><init>(Lcom/android/fileexplorer/view/CircleBarView;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36
    return-void

    .line 37
    :array_24
    .array-data 4
        -0x3d4c0000  # -90.0f
        0x0
        0x42b40000  # 90.0f
        0x43340000  # 180.0f
        0x43870000  # 270.0f
    .end array-data
.end method

.method private applyDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    .line 5
    int-to-float v1, v1

    .line 6
    iget-object v2, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v3

    .line 12
    int-to-float v3, v3

    .line 13
    sub-float/2addr v3, v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v4

    .line 18
    int-to-float v4, v4

    .line 19
    sub-float/2addr v4, v1

    .line 20
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    .line 25
    if-eqz v1, :cond_4a

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_4a

    .line 33
    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_59

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 51
    iget-object v3, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget v4, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->color:I

    .line 55
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v6, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 60
    iget v3, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->start:I

    .line 62
    int-to-float v7, v3

    .line 63
    iget v2, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->size:I

    .line 65
    int-to-float v8, v2

    .line 66
    const/4 v9, 0x0

    .line 67
    iget-object v10, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 69
    move-object/from16 v5, p1

    .line 71
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    goto :goto_26

    .line 75
    :cond_4a
    iget-object v12, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 77
    const/4 v13, 0x0

    .line 78
    const/high16 v14, 0x43b40000  # 360.0f

    .line 80
    const/4 v15, 0x0

    .line 81
    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 83
    move-object/from16 v11, p1

    .line 85
    move-object/from16 v16, v1

    .line 87
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    :cond_59
    iget-boolean v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    .line 92
    if-eqz v1, :cond_5e

    .line 94
    return-void

    .line 95
    :cond_5e
    iget v4, v0, Lcom/android/fileexplorer/view/CircleBarView;->mDegrees:F

    .line 97
    const/4 v1, 0x0

    .line 98
    cmpl-float v1, v4, v1

    .line 100
    const/high16 v2, 0x43870000  # 270.0f

    .line 102
    if-lez v1, :cond_6a

    .line 104
    sub-float/2addr v2, v4

    .line 105
    move v5, v2

    .line 106
    goto :goto_6d

    .line 107
    :cond_6a
    neg-float v1, v4

    .line 108
    add-float/2addr v1, v2

    .line 109
    move v5, v1

    .line 110
    :goto_6d
    iget-object v3, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    .line 112
    const/4 v6, 0x0

    .line 113
    iget-object v7, v0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    .line 115
    move-object/from16 v2, p1

    .line 117
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method private init()V
    .registers 5

    .line 1
    const/high16 v0, 0x41800000  # 16.0f

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f060533

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 40
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 42
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget v3, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    .line 49
    int-to-float v3, v3

    .line 50
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    .line 55
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    .line 87
    iget v1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    .line 89
    const/high16 v2, 0x3f800000  # 1.0f

    .line 91
    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 94
    move-result v2

    .line 95
    add-int/2addr v2, v1

    .line 96
    int-to-float v1, v2

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    return-void
.end method

.method private measureDimension(II)I
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p2

    .line 9
    const/high16 v1, 0x40000000  # 2.0f

    .line 11
    if-ne v0, v1, :cond_e

    .line 13
    move p1, p2

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    const/high16 v1, -0x80000000

    .line 17
    if-ne v0, v1, :cond_16

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result p1

    .line 23
    :cond_16
    :goto_16
    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/CircleBarView;->applyDraw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mHasAnimation:Z

    .line 6
    if-nez p1, :cond_d

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mHasAnimation:Z

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->applyAnimation()V

    .line 14
    :cond_d
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    const/16 v0, 0x2d

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/CircleBarView;->measureDimension(II)I

    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/view/CircleBarView;->measureDimension(II)I

    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 14
    return-void
.end method

.method public setmItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/CircleBarView$CircleItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    .line 3
    return-void
.end method
