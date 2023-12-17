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
.field private static final MIN_SIZE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dbb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleBarView;->MIN_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->init()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/view/CircleBarView;F)F
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mDegrees:F

    return p1
.end method

.method private applyAnimation()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/android/fileexplorer/view/CircleBarView$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/CircleBarView$1;-><init>(Lcom/android/fileexplorer/view/CircleBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

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

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    iget-object v3, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    iget v3, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->start:I

    int-to-float v7, v3

    iget v2, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->size:I

    int-to-float v8, v2

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_26

    :cond_4a
    iget-object v12, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/high16 v14, 0x43b40000  # 360.0f

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_59
    iget-boolean v1, v0, Lcom/android/fileexplorer/view/CircleBarView;->mNoAnimation:Z

    if-eqz v1, :cond_5e

    return-void

    :cond_5e
    iget v4, v0, Lcom/android/fileexplorer/view/CircleBarView;->mDegrees:F

    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    const/high16 v2, 0x43870000  # 270.0f

    if-lez v1, :cond_6a

    sub-float/2addr v2, v4

    move v5, v2

    goto :goto_6d

    :cond_6a
    neg-float v1, v4

    add-float/2addr v1, v2

    move v5, v1

    :goto_6d
    iget-object v3, v0, Lcom/android/fileexplorer/view/CircleBarView;->mRectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 5

    const/high16 v0, 0x41800000  # 16.0f

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f28a5

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleBarView;->mOverPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mStrokeWidth:I

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private measureDimension(II)I
    .registers 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_e

    move p1, p2

    goto :goto_16

    :cond_e
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_16

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_16
    :goto_16
    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/CircleBarView;->applyDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mHasAnimation:Z

    if-nez p1, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mHasAnimation:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleBarView;->applyAnimation()V

    :cond_d
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    const/16 v0, 0x2d

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/CircleBarView;->measureDimension(II)I

    move-result p1

    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/view/CircleBarView;->measureDimension(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

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

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleBarView;->mItemList:Ljava/util/List;

    return-void
.end method
