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
.field private static final ALPHA_NEED_DRAW_MIN_VALUE:I = 0xa

.field private static final DEFAULT_FADE_OUT_DURATION:I = 0x12c

.field private static final DEFAULT_ROTATE_VELOCITY:I = 0x12c


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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    const/16 p2, 0x12c

    .line 5
    iput p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 7
    sget p3, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_light:I

    .line 8
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9
    sget p3, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_dark:I

    .line 10
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 11
    sget v0, Lmiuix/androidbasewidget/R$attr;->circleProgressBarColor:I

    invoke-static {p1, v0, p3}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    move-result p1

    .line 12
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, p2

    .line 14
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

    .line 1
    mul-int/lit16 p1, p1, 0x3e8

    .line 3
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    .line 5
    div-int/2addr p1, v0

    .line 6
    return p1
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .registers 16

    .line 1
    if-eqz p2, :cond_8

    .line 3
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 12
    move-result p2

    .line 13
    const/high16 v0, 0x43b40000  # 360.0f

    .line 15
    if-eqz p2, :cond_75

    .line 17
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object p2

    .line 21
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 23
    int-to-float v2, p2

    .line 24
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object p2

    .line 28
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 30
    int-to-float v3, p2

    .line 31
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object p2

    .line 35
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 37
    int-to-float v4, p2

    .line 38
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 41
    move-result-object p2

    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 44
    int-to-float v5, p2

    .line 45
    const/4 v6, 0x0

    .line 46
    const/16 v7, 0x1f

    .line 48
    move-object v1, p1

    .line 49
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 52
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 56
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 75
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 78
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 80
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 82
    const/high16 v2, -0x3d4c0000  # -90.0f

    .line 84
    mul-float/2addr p5, v0

    .line 85
    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 88
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 90
    iget-object p5, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 97
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 99
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 104
    const/4 p5, 0x0

    .line 105
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    goto :goto_e9

    .line 118
    :cond_75
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 120
    if-nez p2, :cond_9a

    .line 122
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 129
    move-result p2

    .line 130
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 137
    move-result v1

    .line 138
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 143
    move-result-object p2

    .line 144
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 146
    new-instance p2, Landroid/graphics/Canvas;

    .line 148
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 150
    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 155
    :cond_9a
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 161
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 163
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 168
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 171
    move-result-object v1

    .line 172
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 174
    neg-int v1, v1

    .line 175
    int-to-float v1, v1

    .line 176
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 179
    move-result-object v2

    .line 180
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 182
    neg-int v2, v2

    .line 183
    int-to-float v2, v2

    .line 184
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 189
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 191
    const/high16 v5, -0x3d4c0000  # -90.0f

    .line 193
    mul-float v6, p5, v0

    .line 195
    const/4 v7, 0x1

    .line 196
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 198
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 204
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 206
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 211
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 214
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 216
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 219
    move-result-object p5

    .line 220
    iget p5, p5, Landroid/graphics/Rect;->left:I

    .line 222
    int-to-float p5, p5

    .line 223
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 226
    move-result-object p4

    .line 227
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 229
    int-to-float p4, p4

    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    :goto_e9
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 236
    if-eqz p2, :cond_13c

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 244
    move-result p4

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 248
    move-result p5

    .line 249
    sub-int/2addr p4, p5

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 253
    move-result p5

    .line 254
    sub-int/2addr p4, p5

    .line 255
    div-int/lit8 p4, p4, 0x2

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 260
    move-result p5

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 264
    move-result v1

    .line 265
    sub-int/2addr p5, v1

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 269
    move-result v1

    .line 270
    sub-int/2addr p5, v1

    .line 271
    div-int/lit8 p5, p5, 0x2

    .line 273
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 276
    move-result v1

    .line 277
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 280
    move-result v2

    .line 281
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 284
    move-result v3

    .line 285
    int-to-float v3, v3

    .line 286
    mul-float/2addr v3, v0

    .line 287
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 290
    move-result v0

    .line 291
    int-to-float v0, v0

    .line 292
    div-float/2addr v3, v0

    .line 293
    int-to-float v0, p4

    .line 294
    int-to-float v4, p5

    .line 295
    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 298
    div-int/lit8 v1, v1, 0x2

    .line 300
    sub-int v0, p4, v1

    .line 302
    div-int/lit8 v2, v2, 0x2

    .line 304
    sub-int v3, p5, v2

    .line 306
    add-int/2addr p4, v1

    .line 307
    add-int/2addr p5, v2

    .line 308
    invoke-virtual {p2, v0, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    :cond_13c
    if-eqz p3, :cond_144

    .line 319
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 322
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    :cond_144
    return-void
.end method

.method private getBackDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    aget-object p1, v0, p1

    .line 9
    :goto_8
    return-object p1
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    array-length v1, p1

    .line 14
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_11
    array-length v4, p1

    .line 19
    if-ge v3, v4, :cond_2c

    .line 21
    aget v4, p1, v3

    .line 23
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v1, v3

    .line 29
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 32
    move-result v5

    .line 33
    aget-object v6, v1, v3

    .line 35
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result v6

    .line 39
    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_11

    .line 45
    :cond_2c
    return-object v1
.end method

.method private getForeDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    aget-object p1, v0, p1

    .line 9
    :goto_8
    return-object p1
.end method

.method private getIntrinsicHeight()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v2, :cond_17

    .line 14
    aget-object v2, v2, v0

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    move-result v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 24
    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v2, :cond_25

    .line 28
    aget-object v0, v2, v0

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    move-result v0

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v1

    .line 38
    :cond_25
    return v1
.end method

.method private getIntrinsicWidth()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v2, :cond_17

    .line 14
    aget-object v2, v2, v0

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 19
    move-result v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 24
    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v2, :cond_25

    .line 28
    aget-object v0, v2, v0

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 33
    move-result v0

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v1

    .line 38
    :cond_25
    return v1
.end method

.method private getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    aget-object p1, v0, p1

    .line 9
    :goto_8
    return-object p1
.end method

.method private getRate()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getProgressLevelCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_34

    .line 11
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v2, :cond_17

    .line 15
    aget-object v2, v2, v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 24
    :cond_17
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v2, :cond_24

    .line 28
    aget-object v2, v2, v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    :cond_24
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 39
    if-eqz v2, :cond_31

    .line 41
    aget-object v2, v2, v1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_8

    .line 53
    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    return-void
.end method

.method public getPrevAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 3
    return v0
.end method

.method public getProgressLevelCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    add-int/2addr v1, v0

    .line 9
    :goto_8
    return v1
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 4
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v3

    .line 8
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 10
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v4

    .line 14
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 16
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v5

    .line 20
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    .line 23
    move-result v6

    .line 24
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 26
    rsub-int v7, v0, 0xff

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 33
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 35
    const/16 v1, 0xa

    .line 37
    if-lt v0, v1, :cond_43

    .line 39
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 41
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v3

    .line 45
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 47
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v4

    .line 51
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 53
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v5

    .line 57
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    .line 60
    move-result v6

    .line 61
    iget v7, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 63
    move-object v1, p0

    .line 64
    move-object v2, p1

    .line 65
    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 68
    :cond_43
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicWidth()I

    .line 5
    move-result p1

    .line 6
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicHeight()I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public setDrawablesForLevels([I[I[I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 19
    invoke-direct {p0, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    if-eqz p2, :cond_23

    .line 6
    array-length p1, p2

    move v1, v0

    :goto_19
    if-ge v1, p1, :cond_23

    aget-object v2, p2, v1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    if-eqz p3, :cond_31

    .line 8
    array-length p1, p3

    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_31

    aget-object v2, p3, v1

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_31
    if-eqz p2, :cond_a0

    .line 10
    array-length p1, p2

    move p3, v0

    :goto_35
    if-ge p3, p1, :cond_6d

    aget-object v1, p2, p3

    .line 11
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4e

    .line 12
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_62

    .line 13
    :cond_4e
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_65

    .line 14
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

    .line 15
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
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

    .line 17
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

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    .line 3
    return-void
.end method

.method public setPrevAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_b

    .line 10
    move v0, v1

    .line 11
    goto :goto_1f

    .line 12
    :cond_b
    array-length v0, v0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    const/4 v3, -0x1

    .line 15
    if-ge v2, v0, :cond_1a

    .line 17
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 19
    aget v4, v4, v2

    .line 21
    if-ge p1, v4, :cond_17

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_d

    .line 27
    :cond_1a
    move v2, v3

    .line 28
    :goto_1b
    if-ne v2, v3, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v2

    .line 32
    :goto_1f
    iget p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 34
    if-eq v0, p1, :cond_47

    .line 36
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 38
    iput v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 40
    const/16 p1, 0xff

    .line 42
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 45
    const-string p1, "prevAlpha"

    .line 47
    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [I

    .line 50
    aput v1, v0, v1

    .line 52
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 55
    move-result-object p1

    .line 56
    const-wide/16 v0, 0x12c

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 61
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 63
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 66
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 72
    :cond_47
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    .line 74
    if-eqz p1, :cond_4e

    .line 76
    invoke-interface {p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 79
    :cond_4e
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1
.end method

.method public setProgressByAnimator(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 3
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

    .line 4
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 5
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->calcDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_3e

    .line 7
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    :cond_3e
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setProgressLevels([I)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 3
    return-void
.end method

.method public setRotateVelocity(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    .line 3
    return-void
.end method

.method public setThumb(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopProgressAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_f
    return-void
.end method
