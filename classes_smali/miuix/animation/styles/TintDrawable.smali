.class public Lmiuix/animation/styles/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"


# static fields
.field private static final sListener:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final TINT_STYLE_HOVER:I

.field private final TINT_STYLE_RECT_ROUND:I

.field private final TINT_STYLE_VIEW_SHAPE:I

.field private final TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/RectF;

.field private mCornerBounds:Landroid/graphics/RectF;

.field private mHoverRadius:F

.field private mOriDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTintStyle:I

.field private mTouchRadius:[F

.field private mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field private mTouchRectLocationMode:I

.field private mTouchRectRoundPadding:Landroid/graphics/RectF;

.field private mTouchRectRoundRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/animation/styles/TintDrawable$1;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_VIEW_SHAPE:I

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_RECT_ROUND:I

    .line 10
    const/4 v1, 0x4

    .line 11
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_HOVER:I

    .line 13
    const/high16 v1, 0x41d00000  # 26.0f

    .line 15
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    .line 19
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v1, Landroid/graphics/RectF;

    .line 26
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 29
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    .line 40
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 43
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 45
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    .line 50
    new-array v2, v0, [F

    .line 52
    const/4 v3, 0x0

    .line 53
    aput v1, v2, v3

    .line 55
    iput-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 57
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 60
    new-instance v1, Landroid/graphics/RectF;

    .line 62
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 65
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 67
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 69
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 71
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    .line 73
    return-void
.end method

.method public static synthetic access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/animation/styles/TintDrawable;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    .line 4
    return-void
.end method

.method private clear()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 4
    return-void
.end method

.method private createBitmap(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    move-result v0

    .line 9
    if-ne v0, p1, :cond_19

    .line 11
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 29
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    :try_start_22
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_34} :catch_35

    .line 53
    goto :goto_3c

    .line 54
    :catch_35
    const-string p1, "miuix_anim"

    .line 56
    const-string p2, "TintDrawable.createBitmap failed, out of memory"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_3c
    return-void
.end method

.method private drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_23

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 14
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 18
    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 24
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 28
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 30
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    return-void

    .line 36
    :cond_23
    :goto_23
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 38
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method private drawHoverTint(Landroid/graphics/Canvas;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 12
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 20
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 22
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    .line 24
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method private drawRectRound(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 18
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    .line 25
    if-eq v0, v1, :cond_82

    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq v0, v1, :cond_26

    .line 30
    const/16 v1, 0x1008

    .line 32
    if-eq v0, v1, :cond_22

    .line 34
    goto :goto_98

    .line 35
    :cond_22
    invoke-direct {p0, p1, p2}, Lmiuix/animation/styles/TintDrawable;->perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V

    .line 38
    goto :goto_98

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 56
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 58
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 60
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 62
    int-to-float v2, v2

    .line 63
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 65
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 67
    add-float/2addr v2, v4

    .line 68
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 70
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v2, v2

    .line 73
    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 75
    add-float/2addr v2, v4

    .line 76
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 78
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 80
    int-to-float v2, v2

    .line 81
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 83
    sub-float/2addr v2, v4

    .line 84
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 86
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 88
    int-to-float v1, v1

    .line 89
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 91
    sub-float/2addr v1, v2

    .line 92
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 94
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x0

    .line 99
    cmpg-float v0, v0, v1

    .line 101
    if-gez v0, :cond_6c

    .line 103
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 105
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 107
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 109
    :cond_6c
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 111
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 114
    move-result v0

    .line 115
    cmpg-float v0, v0, v1

    .line 117
    if-gez v0, :cond_7c

    .line 119
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 121
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 123
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 125
    :cond_7c
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 130
    goto :goto_98

    .line 131
    :cond_82
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 136
    move-result v0

    .line 137
    int-to-float v0, v0

    .line 138
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 143
    move-result v1

    .line 144
    int-to-float v1, v1

    .line 145
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 148
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 150
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 153
    :goto_98
    return-void
.end method

.method public static get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lmiuix/animation/styles/TintDrawable;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    check-cast p0, Lmiuix/animation/styles/TintDrawable;

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method private getRectRoundEnableFromView(I)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_5

    .line 4
    const/4 p1, 0x2

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 8
    :goto_7
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 10
    return-void
.end method

.method private getRectRoundGravityFromView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 11
    if-eqz v1, :cond_10

    .line 13
    check-cast v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 15
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 17
    :cond_10
    return-void
.end method

.method private getRectRoundPaddingsFromView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/graphics/RectF;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_38

    .line 14
    check-cast v0, Landroid/graphics/RectF;

    .line 16
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 18
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 20
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 23
    move-result v3

    .line 24
    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 26
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 28
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 30
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 33
    move-result v3

    .line 34
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 36
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 38
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 40
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 43
    move-result v3

    .line 44
    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 46
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 48
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 50
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 53
    move-result v0

    .line 54
    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 56
    goto :goto_42

    .line 57
    :cond_38
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 59
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 61
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 63
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 65
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 67
    :goto_42
    return-void
.end method

.method private getRectRoundRadiusFromView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/Float;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_81

    .line 15
    instance-of v1, v0, Ljava/lang/Integer;

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_81

    .line 20
    :cond_13
    instance-of v1, v0, Landroid/graphics/RectF;

    .line 22
    if-eqz v1, :cond_78

    .line 24
    const/16 v1, 0x8

    .line 26
    new-array v1, v1, [F

    .line 28
    fill-array-data v1, :array_8e

    .line 31
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 33
    check-cast v0, Landroid/graphics/RectF;

    .line 35
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 41
    move-result v4

    .line 42
    aput v4, v1, v2

    .line 44
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 46
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 48
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 51
    move-result v2

    .line 52
    aput v2, v1, v3

    .line 54
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 56
    const/4 v2, 0x2

    .line 57
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 59
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 62
    move-result v3

    .line 63
    aput v3, v1, v2

    .line 65
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 67
    const/4 v2, 0x3

    .line 68
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 70
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 73
    move-result v3

    .line 74
    aput v3, v1, v2

    .line 76
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 78
    const/4 v2, 0x4

    .line 79
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 81
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 84
    move-result v3

    .line 85
    aput v3, v1, v2

    .line 87
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 89
    const/4 v2, 0x5

    .line 90
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 92
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 95
    move-result v3

    .line 96
    aput v3, v1, v2

    .line 98
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 100
    const/4 v2, 0x6

    .line 101
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 103
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 106
    move-result v3

    .line 107
    aput v3, v1, v2

    .line 109
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 111
    const/4 v2, 0x7

    .line 112
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 114
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    .line 117
    move-result v0

    .line 118
    aput v0, v1, v2

    .line 120
    goto :goto_8d

    .line 121
    :cond_78
    new-array v0, v3, [F

    .line 123
    const/high16 v1, 0x41d00000  # 26.0f

    .line 125
    aput v1, v0, v2

    .line 127
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 129
    goto :goto_8d

    .line 130
    :cond_81
    :goto_81
    new-array v1, v3, [F

    .line 132
    check-cast v0, Ljava/lang/Float;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 137
    move-result v0

    .line 138
    aput v0, v1, v2

    .line 140
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 142
    :goto_8d
    return-void

    .line 143
    :array_8e
    .array-data 4
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
        0x41d00000  # 26.0f
    .end array-data
.end method

.method private getTouchLocationModeFromView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/Integer;

    .line 11
    if-eqz v1, :cond_15

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    .line 25
    :goto_18
    return-void
.end method

.method private getTouchRectFromView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/graphics/RectF;

    .line 11
    if-eqz v1, :cond_16

    .line 13
    check-cast v0, Landroid/graphics/RectF;

    .line 15
    new-instance v1, Landroid/graphics/RectF;

    .line 17
    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 20
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 26
    :goto_19
    return-void
.end method

.method private initBitmap(I)V
    .registers 8

    .line 1
    const-string v0, "miuix_anim"

    .line 3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    if-eqz v1, :cond_c5

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 13
    goto/16 :goto_c5

    .line 15
    :cond_e
    :try_start_e
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 21
    new-instance v1, Landroid/graphics/Canvas;

    .line 23
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 39
    move-result v4

    .line 40
    neg-int v3, v3

    .line 41
    int-to-float v3, v3

    .line 42
    neg-int v4, v4

    .line 43
    int-to-float v4, v4

    .line 44
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 49
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 56
    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 61
    invoke-virtual {v3, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3f} :catch_af

    .line 64
    if-nez p1, :cond_c4

    .line 66
    :try_start_41
    new-instance p1, Landroid/graphics/ColorMatrix;

    .line 68
    const/16 v3, 0x14

    .line 70
    new-array v3, v3, [F

    .line 72
    const/high16 v4, 0x3f800000  # 1.0f

    .line 74
    aput v4, v3, v2

    .line 76
    const/4 v2, 0x1

    .line 77
    const/4 v5, 0x0

    .line 78
    aput v5, v3, v2

    .line 80
    const/4 v2, 0x2

    .line 81
    aput v5, v3, v2

    .line 83
    const/4 v2, 0x3

    .line 84
    aput v5, v3, v2

    .line 86
    const/4 v2, 0x4

    .line 87
    aput v5, v3, v2

    .line 89
    const/4 v2, 0x5

    .line 90
    aput v5, v3, v2

    .line 92
    const/4 v2, 0x6

    .line 93
    aput v4, v3, v2

    .line 95
    const/4 v2, 0x7

    .line 96
    aput v5, v3, v2

    .line 98
    const/16 v2, 0x8

    .line 100
    aput v5, v3, v2

    .line 102
    const/16 v2, 0x9

    .line 104
    aput v5, v3, v2

    .line 106
    const/16 v2, 0xa

    .line 108
    aput v5, v3, v2

    .line 110
    const/16 v2, 0xb

    .line 112
    aput v5, v3, v2

    .line 114
    const/16 v2, 0xc

    .line 116
    aput v4, v3, v2

    .line 118
    const/16 v2, 0xd

    .line 120
    aput v5, v3, v2

    .line 122
    const/16 v2, 0xe

    .line 124
    aput v5, v3, v2

    .line 126
    const/16 v2, 0xf

    .line 128
    aput v5, v3, v2

    .line 130
    const/16 v2, 0x10

    .line 132
    aput v5, v3, v2

    .line 134
    const/16 v2, 0x11

    .line 136
    aput v5, v3, v2

    .line 138
    const/16 v2, 0x12

    .line 140
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    .line 143
    aput v4, v3, v2

    .line 145
    const/16 v2, 0x13

    .line 147
    aput v5, v3, v2

    .line 149
    invoke-direct {p1, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 152
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 154
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    .line 156
    invoke-direct {v3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 164
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_a8} :catch_a9

    .line 169
    goto :goto_c4

    .line 170
    :catch_a9
    :try_start_a9
    const-string p1, "the Bitmap empty or Recycled"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ae} :catch_af

    .line 175
    goto :goto_c4

    .line 176
    :catch_af
    move-exception p1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v2, "TintDrawable.initBitmap failed, "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_c4
    :goto_c4
    return-void

    .line 198
    :cond_c5
    :goto_c5
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method private perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 1
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    .line 3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_aa

    .line 15
    const/4 v1, 0x2

    .line 16
    const/high16 v3, 0x3f000000  # 0.5f

    .line 18
    if-eq v0, v1, :cond_7f

    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_54

    .line 23
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 32
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 35
    move-result v1

    .line 36
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 39
    move-result v1

    .line 40
    sub-float/2addr v0, v1

    .line 41
    mul-float/2addr v0, v3

    .line 42
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 54
    move-result v4

    .line 55
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 58
    move-result v4

    .line 59
    sub-float/2addr v1, v4

    .line 60
    mul-float/2addr v1, v3

    .line 61
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 63
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 66
    move-result v3

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 70
    move-result v3

    .line 71
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 73
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 76
    move-result v4

    .line 77
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 80
    move-result v2

    .line 81
    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 84
    goto :goto_c1

    .line 85
    :cond_54
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 94
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 97
    move-result v1

    .line 98
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 101
    move-result v1

    .line 102
    sub-float/2addr v0, v1

    .line 103
    mul-float/2addr v0, v3

    .line 104
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 106
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 109
    move-result v1

    .line 110
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 113
    move-result v1

    .line 114
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 116
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 119
    move-result v3

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 123
    move-result v3

    .line 124
    invoke-direct {p0, v2, v0, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 127
    goto :goto_c1

    .line 128
    :cond_7f
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 133
    move-result v0

    .line 134
    int-to-float v0, v0

    .line 135
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 137
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 140
    move-result v1

    .line 141
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 144
    move-result v1

    .line 145
    sub-float/2addr v0, v1

    .line 146
    mul-float/2addr v0, v3

    .line 147
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 149
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 152
    move-result v1

    .line 153
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 156
    move-result v1

    .line 157
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 159
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 162
    move-result v3

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 166
    move-result v3

    .line 167
    invoke-direct {p0, v0, v2, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 170
    goto :goto_c1

    .line 171
    :cond_aa
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 173
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 176
    move-result v0

    .line 177
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 180
    move-result v0

    .line 181
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 183
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 186
    move-result v1

    .line 187
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 190
    move-result v1

    .line 191
    invoke-direct {p0, v2, v2, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 194
    :goto_c1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 199
    return-void
.end method

.method private processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_49

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_49

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Canvas: trying to draw too large"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_49

    .line 29
    :try_start_1c
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    const/16 v0, 0x32

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-static {p1, v0, v1}, Lmiuix/animation/utils/CommonUtils;->compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 42
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 44
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_30} :catch_31

    .line 49
    goto :goto_48

    .line 50
    :catch_31
    move-exception p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v0, "TintDrawable.processingOOMForDrawBitmap failed, "

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-string p2, "miuix_anim"

    .line 70
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_48
    return-void

    .line 74
    :cond_49
    throw p1
.end method

.method private realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .registers 6

    .line 1
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 3
    array-length v0, p2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_f

    .line 7
    const/4 v0, 0x0

    .line 8
    aget p2, p2, v0

    .line 10
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p3, p2, p2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 15
    goto :goto_25

    .line 16
    :cond_f
    array-length p2, p2

    .line 17
    const/16 v0, 0x8

    .line 19
    if-ne p2, v0, :cond_25

    .line 21
    new-instance p2, Landroid/graphics/Path;

    .line 23
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 28
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 30
    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 33
    iget-object p3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private recycleBitmap()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 11
    :cond_a
    return-void
.end method

.method public static setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_21

    .line 7
    new-instance v0, Lmiuix/animation/styles/TintDrawable;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable;-><init>()V

    .line 12
    iput-object p0, v0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lmiuix/animation/styles/TintDrawable;->setOriDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    sget-object v1, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    new-instance v1, Lmiuix/animation/styles/TintDrawable$2;

    .line 28
    invoke-direct {v1, p0, v0}, Lmiuix/animation/styles/TintDrawable$2;-><init>(Landroid/view/View;Lmiuix/animation/styles/TintDrawable;)V

    .line 31
    invoke-static {p0, v1}, Lmiuix/animation/Folme;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 34
    :cond_21
    return-object v0
.end method

.method private setBounds(FF)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v3, v0, p1

    add-float v4, v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setBounds(FFFF)V
    .registers 8

    .line 5
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p2, p3

    float-to-int p3, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setOriDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-void
.end method

.method private tintStyleLoadData()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchLocationModeFromView()V

    .line 4
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_2b

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_24

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1d

    .line 15
    const/16 v1, 0x1008

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    goto :goto_2e

    .line 20
    :cond_13
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 23
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    .line 26
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundGravityFromView()V

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 33
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundPaddingsFromView()V

    .line 36
    goto :goto_2e

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 40
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 47
    :goto_2e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 27
    int-to-float v5, v0

    .line 28
    int-to-float v6, v1

    .line 29
    add-int/2addr v0, v2

    .line 30
    int-to-float v0, v0

    .line 31
    add-int/2addr v1, v3

    .line 32
    int-to-float v1, v1

    .line 33
    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 47
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 49
    invoke-virtual {v0, v2}, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;->getIntValue(Landroid/view/View;)I

    .line 52
    move-result v0

    .line 53
    :try_start_34
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 61
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    if-eqz v1, :cond_43

    .line 65
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_43
    iget v1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq v1, v2, :cond_53

    .line 73
    const/4 v2, 0x4

    .line 74
    if-eq v1, v2, :cond_4f

    .line 76
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V

    .line 79
    goto :goto_5d

    .line 80
    :cond_4f
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawHoverTint(Landroid/graphics/Canvas;I)V

    .line 83
    goto :goto_5d

    .line 84
    :cond_53
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawRectRound(Landroid/graphics/Canvas;I)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_56} :catch_59
    .catchall {:try_start_34 .. :try_end_56} :catchall_57

    .line 87
    goto :goto_5d

    .line 88
    :catchall_57
    move-exception v0

    .line 89
    goto :goto_61

    .line 90
    :catch_59
    move-exception v0

    .line 91
    :try_start_5a
    invoke-direct {p0, v0, p1}, Lmiuix/animation/styles/TintDrawable;->processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    .line 94
    :goto_5d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    return-void

    .line 98
    :goto_61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 101
    throw v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public initTintBuffer(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->getRectRoundEnableFromView(I)V

    .line 9
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_2c

    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_2f

    .line 17
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v1

    .line 29
    if-eqz v0, :cond_28

    .line 31
    if-nez v1, :cond_21

    .line 33
    goto :goto_28

    .line 34
    :cond_21
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->createBitmap(II)V

    .line 37
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->initBitmap(I)V

    .line 40
    goto :goto_2f

    .line 41
    :cond_28
    :goto_28
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->tintStyleLoadData()V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method

.method public restoreOriginalDrawable()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setHoverCorner(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-eqz v0, :cond_7

    .line 6
    const/4 v0, 0x4

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 10
    :goto_9
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 12
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    .line 14
    return-void
.end method
