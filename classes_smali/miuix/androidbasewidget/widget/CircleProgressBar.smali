.class public Lmiuix/androidbasewidget/widget/CircleProgressBar;
.super Lmiuix/androidbasewidget/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_NEED_DRAW_MIN_VALUE:I

.field private static final DEFAULT_FADE_OUT_DURATION:I

.field private static final DEFAULT_ROTATE_VELOCITY:I


# instance fields
.field private mArcPath:Landroid/graphics/Path;

.field private mArcRect:Landroid/graphics/RectF;

.field private mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field private mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field private mChangeProgressAnimator:Landroid/animation/Animator;

.field private mCurrentLevel:I

.field private mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevAlpha:I

.field private mPrevLevel:I

.field private mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

.field private mProgressLevels:[I

.field private mRotateVelocity:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->ALPHA_NEED_DRAW_MIN_VALUE:I

    const v0, 0x92cba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->DEFAULT_FADE_OUT_DURATION:I

    const v0, 0x92cba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->DEFAULT_ROTATE_VELOCITY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    const/16 p2, 0x12c

    iput p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    sget p3, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_light:I

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget p3, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_dark:I

    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    sget v0, Lmiuix/androidbasewidget/R$attr;->circleProgressBarColor:I

    invoke-static {p1, v0, p3}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    move-result p1

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private calcDuration(I)I
    .registers 3

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr p1, v0

    return p1
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .registers 16

    if-eqz p2, :cond_8

    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/high16 v0, 0x43b40000  # 360.0f

    if-eqz p2, :cond_75

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000  # -90.0f

    mul-float/2addr p5, v0

    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    iget-object p5, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e9

    :cond_75
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-nez p2, :cond_9a

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    :cond_9a
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v5, -0x3d4c0000  # -90.0f

    mul-float v6, p5, v0

    const/4 v7, 0x1

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_e9
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_13c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, p4

    int-to-float v4, p5

    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    div-int/lit8 v1, v1, 0x2

    sub-int v0, p4, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p5, v2

    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {p2, v0, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13c
    if-eqz p3, :cond_144

    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_144
    return-void
.end method

.method private getBackDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    aget-object p1, v0, p1

    :goto_8
    return-object p1
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .registers 9

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_2c

    aget v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2c
    return-object v1
.end method

.method private getForeDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    aget-object p1, v0, p1

    :goto_8
    return-object p1
.end method

.method private getIntrinsicHeight()I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_25

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_25
    return v1
.end method

.method private getIntrinsicWidth()I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_25

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_25
    return v1
.end method

.method private getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    aget-object p1, v0, p1

    :goto_8
    return-object p1
.end method

.method private getRate()F
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_34

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_24
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_31

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getPrevAlpha()I
    .registers 2

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    return v0
.end method

.method public getProgressLevelCount()I
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    array-length v0, v0

    add-int/2addr v1, v0

    :goto_8
    return v1
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    move-result v6

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    rsub-int v7, v0, 0xff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_43

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    move-result v6

    iget v7, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawablesForLevels([I[I[I)V
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .registers 8

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    if-eqz p2, :cond_23

    array-length p1, p2

    move v1, v0

    :goto_19
    if-ge v1, p1, :cond_23

    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    if-eqz p3, :cond_31

    array-length p1, p3

    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_31

    aget-object v2, p3, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_31
    if-eqz p2, :cond_a0

    array-length p1, p2

    move p3, v0

    :goto_35
    if-ge p3, p1, :cond_6d

    aget-object v1, p2, p3

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4e

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_62

    :cond_4e
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_65

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_62
    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    new-instance p1, Landroid/graphics/RectF;

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v2, p2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    invoke-direct {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    :cond_a0
    return-void
.end method

.method public setOnProgressChangedListener(Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    return-void
.end method

.method public setPrevAlpha(I)V
    .registers 2

    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_1f

    :cond_b
    array-length v0, v0

    move v2, v1

    :goto_d
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1a

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    aget v4, v4, v2

    if-ge p1, v4, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    move v2, v3

    :goto_1b
    if-ne v2, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iget p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    if-eq v0, p1, :cond_47

    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    iput v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setPrevAlpha(I)V

    const-string p1, "prevAlpha"

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_47
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressByAnimator(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .registers 6

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->stopProgressAnimator()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "progress"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->calcDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_3e

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3e
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setProgressLevels([I)V
    .registers 2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    return-void
.end method

.method public setRotateVelocity(I)V
    .registers 2

    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    return-void
.end method

.method public setThumb(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopProgressAnimator()V
    .registers 2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method
