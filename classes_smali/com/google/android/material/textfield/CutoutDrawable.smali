.class Lcom/google/android/material/textfield/CutoutDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "CutoutDrawable.java"


# instance fields
.field private final cutoutBounds:Landroid/graphics/RectF;

.field private final cutoutPaint:Landroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_8

    .line 2
    :cond_3
    new-instance p1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    :goto_8
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/CutoutDrawable;->setPaintStyles()V

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private postDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    iget v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16
    :cond_f
    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_18

    .line 11
    check-cast v0, Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v1, :cond_1b

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->saveCanvasLayer(Landroid/graphics/Canvas;)V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method private saveCanvasLayer(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 6
    move-result v0

    .line 7
    int-to-float v3, v0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 11
    move-result v0

    .line 12
    int-to-float v4, v0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    .line 21
    return-void
.end method

.method private setPaintStyles()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 18
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 26
    return-void
.end method

.method private useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroid/view/View;

    .line 3
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->preDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->postDraw(Landroid/graphics/Canvas;)V

    .line 17
    return-void
.end method

.method public hasCutout()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public removeCutout()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    .line 5
    return-void
.end method

.method public setCutout(FFFF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_20

    .line 2
    :cond_1a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_20
    return-void
.end method

.method public setCutout(Landroid/graphics/RectF;)V
    .registers 5

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    return-void
.end method
