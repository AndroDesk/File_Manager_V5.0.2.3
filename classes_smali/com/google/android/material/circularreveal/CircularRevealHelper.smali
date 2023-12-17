.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 6
    check-cast p1, Landroid/view/View;

    .line 8
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    new-instance p1, Landroid/graphics/Path;

    .line 16
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    .line 23
    const/4 v1, 0x7

    .line 24
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 27
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 13
    iget v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 15
    iget v1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 17
    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 19
    const/high16 v2, 0x40000000  # 2.0f

    .line 21
    div-float/2addr p3, v2

    .line 22
    sub-float/2addr p2, p3

    .line 23
    iget-object p3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_18

    .line 12
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 14
    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 16
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 18
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 20
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    :cond_18
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2c

    .line 31
    const/high16 v0, -0x1000000

    .line 33
    const/high16 v1, 0x41200000  # 10.0f

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 38
    const/high16 v0, -0x10000

    .line 40
    const/high16 v1, 0x40a00000  # 5.0f

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    .line 45
    :cond_2c
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_31

    .line 7
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 15
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    const/high16 v3, 0x40000000  # 2.0f

    .line 24
    div-float/2addr v2, v3

    .line 25
    sub-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 28
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr v0, v3

    .line 36
    sub-float/2addr v2, v0

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    neg-float v0, v1

    .line 46
    neg-float v1, v2

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    :cond_31
    return-void
.end method

.method private getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .registers 8

    .line 1
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 3
    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 5
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    move-result p1

    .line 11
    int-to-float v4, p1

    .line 12
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p1

    .line 18
    int-to-float v5, p1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private invalidateRevealInfo()V
    .registers 6

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1b

    .line 6
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 13
    if-eqz v0, :cond_1b

    .line 15
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 17
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 19
    iget v3, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 21
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 23
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 25
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 33
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    move v0, v2

    .line 17
    :goto_10
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 19
    if-nez v3, :cond_1c

    .line 21
    if-nez v0, :cond_1b

    .line 23
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    move v1, v2

    .line 28
    :cond_1b
    return v1

    .line 29
    :cond_1c
    xor-int/2addr v0, v2

    .line 30
    return v0
.end method

.method private shouldDrawOverlayDrawable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method private shouldDrawScrim()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 3
    if-nez v0, :cond_12

    .line 5
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
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


# virtual methods
.method public buildCircularRevealCache()V
    .registers 7

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 3
    if-nez v0, :cond_55

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 11
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 16
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_43

    .line 24
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_43

    .line 32
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_43

    .line 40
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v3

    .line 52
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 54
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Landroid/graphics/Canvas;

    .line 60
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v4, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 65
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_43
    if-eqz v2, :cond_51

    .line 70
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v4, Landroid/graphics/BitmapShader;

    .line 74
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 76
    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 79
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    :cond_51
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 84
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 86
    :cond_55
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 3

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 3
    if-nez v0, :cond_17

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 24
    :cond_17
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8e

    .line 7
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 9
    if-eqz v0, :cond_6d

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3f

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_33

    .line 17
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 19
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_af

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v0

    .line 36
    int-to-float v4, v0

    .line 37
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v0

    .line 43
    int-to-float v5, v0

    .line 44
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 46
    move-object v1, p1

    .line 47
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    goto/16 :goto_af

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    const-string v1, "Unsupported strategy "

    .line 56
    invoke-static {v1, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 70
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 73
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 75
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_69

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 91
    move-result v1

    .line 92
    int-to-float v5, v1

    .line 93
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 98
    move-result v1

    .line 99
    int-to-float v6, v1

    .line 100
    iget-object v7, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 102
    move-object v2, p1

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    :cond_69
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 109
    goto :goto_af

    .line 110
    :cond_6d
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 112
    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 114
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 116
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 118
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_af

    .line 129
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 131
    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 133
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 135
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 137
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 139
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    goto :goto_af

    .line 143
    :cond_8e
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 145
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_af

    .line 154
    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 161
    move-result v0

    .line 162
    int-to-float v4, v0

    .line 163
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 168
    move-result v0

    .line 169
    int-to-float v5, v0

    .line 170
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 172
    move-object v1, p1

    .line 173
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    :cond_af
    :goto_af
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_17

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    .line 21
    move-result v0

    .line 22
    iput v0, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 24
    :cond_17
    return-object v1
.end method

.method public isOpaque()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 3
    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 4

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 6
    goto :goto_2b

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 9
    if-nez v0, :cond_12

    .line 11
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 13
    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 22
    :goto_15
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    .line 27
    move-result p1

    .line 28
    const v1, 0x38d1b717  # 1.0E-4f

    .line 31
    invoke-static {v0, p1, v1}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2b

    .line 37
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 39
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 42
    iput v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 44
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    .line 47
    return-void
.end method
