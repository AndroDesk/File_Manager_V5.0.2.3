.class public Lcom/miui/maml/elements/PaintScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "PaintScreenElement.java"


# static fields
.field private static DEFAULT_WEIGHT:F = 1.0f

.field public static final TAG_NAME:Ljava/lang/String; = "Paint"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mCachedPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPendingMouseUp:Z

.field private mWeight:F

.field private mWeightExp:Lcom/miui/maml/data/Expression;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 7
    new-instance p1, Landroid/graphics/Path;

    .line 9
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 14
    sget p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 16
    float-to-double p1, p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 20
    move-result p1

    .line 21
    sput p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    .line 27
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 32
    iget-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    .line 45
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 50
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 57
    sget v0, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 64
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 76
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 83
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p2

    .line 8
    const-string v0, "weight"

    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-static {p2, p1}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 26
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 28
    const-string v0, "xfermode"

    .line 30
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p2, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 43
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 25
    move-result v4

    .line 26
    iget-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 28
    if-eqz v5, :cond_3f

    .line 30
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 32
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 37
    neg-float v6, v3

    .line 38
    neg-float v7, v4

    .line 39
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 44
    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 46
    iget-object v7, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 53
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 56
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 58
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 61
    const/4 v5, 0x0

    .line 62
    iput-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 64
    :cond_3f
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p1, v5, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    iget-boolean v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 73
    if-eqz v5, :cond_95

    .line 75
    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 77
    cmpl-float v2, v5, v2

    .line 79
    if-lez v2, :cond_95

    .line 81
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 83
    if-lez v2, :cond_95

    .line 85
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 92
    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    .line 94
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 102
    move-result v5

    .line 103
    iget v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 105
    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 108
    move-result v5

    .line 109
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    neg-float v2, v3

    .line 116
    add-float/2addr v2, v0

    .line 117
    neg-float v0, v4

    .line 118
    add-float/2addr v0, v1

    .line 119
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 132
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 135
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 137
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 139
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    :cond_95
    return-void
.end method

.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz p1, :cond_18

    .line 15
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 25
    :cond_18
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 27
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    .line 33
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 14
    return-void
.end method

.method public init()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v2, v0, v1

    .line 11
    if-gez v2, :cond_1a

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "screen_width"

    .line 19
    invoke-static {v2, v0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 26
    move-result v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 30
    move-result v2

    .line 31
    cmpg-float v1, v2, v1

    .line 33
    if-gez v1, :cond_30

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object v1

    .line 39
    const-string v2, "screen_height"

    .line 41
    invoke-static {v2, v1}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 48
    move-result v2

    .line 49
    :cond_30
    float-to-double v0, v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 53
    move-result-wide v0

    .line 54
    double-to-int v0, v0

    .line 55
    float-to-double v1, v2

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 59
    move-result-wide v1

    .line 60
    double-to-int v1, v1

    .line 61
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 63
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 69
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 71
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 78
    new-instance v0, Landroid/graphics/Canvas;

    .line 80
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 87
    return-void
.end method

.method public onActionCancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 4
    return-void
.end method

.method public onActionDown(FF)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    return-void
.end method

.method public onActionMove(FF)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    return-void
.end method

.method public onActionUp()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 7
    return-void
.end method

.method public reset(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 6
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 14
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    :cond_a
    return-void
.end method
