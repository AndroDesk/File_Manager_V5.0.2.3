.class public final Lr/e;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field public a:F

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Rect;

.field public e:F

.field public f:Z

.field public g:Z

.field public h:Landroid/content/res/ColorStateList;

.field public i:Landroid/graphics/PorterDuffColorFilter;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(FLandroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr/e;->f:Z

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lr/e;->g:Z

    .line 10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iput-object v0, p0, Lr/e;->k:Landroid/graphics/PorterDuff$Mode;

    .line 14
    iput p1, p0, Lr/e;->a:F

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x5

    .line 19
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    iput-object p1, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p0, p2}, Lr/e;->b(Landroid/content/res/ColorStateList;)V

    .line 27
    new-instance p1, Landroid/graphics/RectF;

    .line 29
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 32
    iput-object p1, p0, Lr/e;->c:Landroid/graphics/RectF;

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 36
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iput-object p1, p0, Lr/e;->d:Landroid/graphics/Rect;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .line 1
    if-eqz p1, :cond_14

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_14

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .registers 5

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    iput-object p1, p0, Lr/e;->h:Landroid/content/res/ColorStateList;

    .line 10
    iget-object v0, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lr/e;->h:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    return-void
.end method

.method public final c(Landroid/graphics/Rect;)V
    .registers 10

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p1

    .line 7
    :cond_6
    iget-object v0, p0, Lr/e;->c:Landroid/graphics/RectF;

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    int-to-float v1, v1

    .line 12
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 14
    int-to-float v2, v2

    .line 15
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 17
    int-to-float v3, v3

    .line 18
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    int-to-float v4, v4

    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    iget-object v0, p0, Lr/e;->d:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    iget-boolean p1, p0, Lr/e;->f:Z

    .line 31
    if-eqz p1, :cond_54

    .line 33
    iget p1, p0, Lr/e;->e:F

    .line 35
    iget v0, p0, Lr/e;->a:F

    .line 37
    iget-boolean v1, p0, Lr/e;->g:Z

    .line 39
    invoke-static {p1, v0, v1}, Lr/f;->a(FFZ)F

    .line 42
    move-result p1

    .line 43
    iget v0, p0, Lr/e;->e:F

    .line 45
    iget v1, p0, Lr/e;->a:F

    .line 47
    iget-boolean v2, p0, Lr/e;->g:Z

    .line 49
    if-eqz v2, :cond_3c

    .line 51
    float-to-double v2, v0

    .line 52
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 54
    sget-wide v6, Lr/f;->a:D

    .line 56
    sub-double/2addr v4, v6

    .line 57
    float-to-double v0, v1

    .line 58
    mul-double/2addr v4, v0

    .line 59
    add-double/2addr v4, v2

    .line 60
    double-to-float v0, v4

    .line 61
    :cond_3c
    iget-object v1, p0, Lr/e;->d:Landroid/graphics/Rect;

    .line 63
    float-to-double v2, v0

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 67
    move-result-wide v2

    .line 68
    double-to-int v0, v2

    .line 69
    float-to-double v2, p1

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 73
    move-result-wide v2

    .line 74
    double-to-int p1, v2

    .line 75
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 78
    iget-object p1, p0, Lr/e;->c:Landroid/graphics/RectF;

    .line 80
    iget-object v0, p0, Lr/e;->d:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 85
    :cond_54
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 3
    iget-object v1, p0, Lr/e;->i:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    if-eqz v1, :cond_13

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_13

    .line 13
    iget-object v1, p0, Lr/e;->i:Landroid/graphics/PorterDuffColorFilter;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    iget-object v2, p0, Lr/e;->c:Landroid/graphics/RectF;

    .line 23
    iget v3, p0, Lr/e;->a:F

    .line 25
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 28
    if-eqz v1, :cond_21

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    :cond_21
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lr/e;->d:Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lr/e;->a:F

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 8
    return-void
.end method

.method public final isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lr/e;->j:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    :cond_a
    iget-object v0, p0, Lr/e;->h:Landroid/content/res/ColorStateList;

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1a

    .line 21
    :cond_14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, p1}, Lr/e;->c(Landroid/graphics/Rect;)V

    .line 7
    return-void
.end method

.method public final onStateChange([I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr/e;->h:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v0, :cond_15

    .line 20
    move v0, v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    if-eqz v0, :cond_1d

    .line 25
    iget-object v2, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    :cond_1d
    iget-object p1, p0, Lr/e;->j:Landroid/content/res/ColorStateList;

    .line 32
    if-eqz p1, :cond_2c

    .line 34
    iget-object v2, p0, Lr/e;->k:Landroid/graphics/PorterDuff$Mode;

    .line 36
    if-eqz v2, :cond_2c

    .line 38
    invoke-virtual {p0, p1, v2}, Lr/e;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lr/e;->i:Landroid/graphics/PorterDuffColorFilter;

    .line 44
    return v1

    .line 45
    :cond_2c
    return v0
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lr/e;->b:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr/e;->j:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lr/e;->k:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-virtual {p0, p1, v0}, Lr/e;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lr/e;->i:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr/e;->k:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lr/e;->j:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0, v0, p1}, Lr/e;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lr/e;->i:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    return-void
.end method
