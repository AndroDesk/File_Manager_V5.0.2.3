.class Lcom/google/android/material/floatingactionbutton/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;
    }
.end annotation


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private borderTint:Landroid/content/res/ColorStateList;

.field public borderWidth:F

.field private bottomInnerStrokeColor:I

.field private bottomOuterStrokeColor:I

.field private final boundsRectF:Landroid/graphics/RectF;

.field private currentBorderTintColor:I

.field private invalidateShader:Z

.field private final paint:Landroid/graphics/Paint;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapePath:Landroid/graphics/Path;

.field private final state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

.field private topInnerStrokeColor:I

.field private topOuterStrokeColor:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 6
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    .line 34
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;-><init>(Lcom/google/android/material/floatingactionbutton/BorderDrawable;Lcom/google/android/material/floatingactionbutton/BorderDrawable$1;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 50
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    .line 54
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 59
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 6
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    div-float/2addr v1, v2

    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v8, v2, [I

    .line 17
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    .line 19
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 21
    invoke-static {v3, v4}, Lf0/d;->b(II)I

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    aput v3, v8, v4

    .line 28
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 30
    iget v5, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 32
    invoke-static {v3, v5}, Lf0/d;->b(II)I

    .line 35
    move-result v3

    .line 36
    const/4 v5, 0x1

    .line 37
    aput v3, v8, v5

    .line 39
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 41
    invoke-static {v3, v4}, Lf0/d;->c(II)I

    .line 44
    move-result v3

    .line 45
    iget v6, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 47
    invoke-static {v3, v6}, Lf0/d;->b(II)I

    .line 50
    move-result v3

    .line 51
    const/4 v6, 0x2

    .line 52
    aput v3, v8, v6

    .line 54
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 56
    invoke-static {v3, v4}, Lf0/d;->c(II)I

    .line 59
    move-result v3

    .line 60
    iget v7, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 62
    invoke-static {v3, v7}, Lf0/d;->b(II)I

    .line 65
    move-result v3

    .line 66
    const/4 v7, 0x3

    .line 67
    aput v3, v8, v7

    .line 69
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 71
    iget v9, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 73
    invoke-static {v3, v9}, Lf0/d;->b(II)I

    .line 76
    move-result v3

    .line 77
    const/4 v9, 0x4

    .line 78
    aput v3, v8, v9

    .line 80
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    .line 82
    iget v10, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 84
    invoke-static {v3, v10}, Lf0/d;->b(II)I

    .line 87
    move-result v3

    .line 88
    const/4 v10, 0x5

    .line 89
    aput v3, v8, v10

    .line 91
    new-array v2, v2, [F

    .line 93
    const/4 v3, 0x0

    .line 94
    aput v3, v2, v4

    .line 96
    aput v1, v2, v5

    .line 98
    const/high16 v3, 0x3f000000  # 0.5f

    .line 100
    aput v3, v2, v6

    .line 102
    aput v3, v2, v7

    .line 104
    const/high16 v3, 0x3f800000  # 1.0f

    .line 106
    sub-float v1, v3, v1

    .line 108
    aput v1, v2, v9

    .line 110
    aput v3, v2, v10

    .line 112
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 114
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 116
    int-to-float v5, v3

    .line 117
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 119
    int-to-float v7, v0

    .line 120
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    move-object v3, v1

    .line 125
    move-object v9, v2

    .line 126
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 129
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x40000000  # 2.0f

    .line 25
    div-float/2addr v0, v1

    .line 26
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 31
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 33
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 38
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v2, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 54
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 57
    move-result v3

    .line 58
    div-float/2addr v3, v1

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_56

    .line 75
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 77
    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 80
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 82
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    :cond_56
    return-void
.end method

.method public getBoundsAsRectF()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Landroid/graphics/RectF;

    .line 12
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lcom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_9

    .line 8
    const/4 v0, -0x3

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, -0x2

    .line 11
    :goto_a
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 34
    return-void

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 42
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 49
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 51
    const/high16 v2, 0x3f800000  # 1.0f

    .line 53
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 55
    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    .line 57
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_48

    .line 68
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Landroid/graphics/Path;

    .line 70
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 73
    :cond_48
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_15

    .line 13
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    return-object v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 4
    return-void
.end method

.method public onStateChange([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 13
    if-eq p1, v0, :cond_13

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 18
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 20
    :cond_13
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 27
    :cond_1a
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 29
    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setBorderTint(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 15
    :cond_e
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    return-void
.end method

.method public setBorderWidth(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 9
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 11
    const v1, 0x3faaa993  # 1.3333f

    .line 14
    mul-float/2addr p1, v1

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 24
    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setGradientColors(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    .line 3
    iput p2, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 5
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    .line 7
    iput p4, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 9
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method
