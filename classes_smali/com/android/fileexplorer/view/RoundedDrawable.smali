.class public Lcom/android/fileexplorer/view/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mCornersRounded:[Z

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mRebuildShader:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private final mSquareCornersRect:Landroid/graphics/RectF;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    .line 27
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 32
    new-instance v1, Landroid/graphics/Matrix;

    .line 34
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    .line 41
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 46
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 48
    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 50
    iput-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 52
    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 55
    const/4 v2, 0x0

    .line 56
    iput v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 58
    const/4 v3, 0x4

    .line 59
    new-array v3, v3, [Z

    .line 61
    fill-array-data v3, :array_96

    .line 64
    iput-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 66
    const/4 v3, 0x0

    .line 67
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mOval:Z

    .line 69
    iput v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 71
    const/high16 v3, -0x1000000

    .line 73
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 76
    move-result-object v4

    .line 77
    iput-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 79
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 81
    iput-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 83
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    move-result v4

    .line 89
    iput v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 97
    int-to-float v4, v4

    .line 98
    int-to-float p1, p1

    .line 99
    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    .line 104
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 109
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    .line 119
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 124
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    return-void

    .line 151
    :array_96
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private static all([Z)Z
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_d

    .line 6
    aget-boolean v3, p0, v2

    .line 8
    if-eqz v3, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 13
    goto :goto_3

    .line 14
    :cond_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method private static any([Z)Z
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_e

    .line 6
    aget-boolean v3, p0, v2

    .line 8
    if-eqz v3, :cond_b

    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_3

    .line 15
    :cond_e
    return v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    move-result v3

    .line 29
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v2

    .line 33
    :try_start_20
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 35
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/graphics/Canvas;

    .line 41
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_3c

    .line 59
    move-object v0, v1

    .line 60
    goto :goto_47

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    const-string p0, "RoundedDrawable"

    .line 67
    const-string v1, "Failed to create bitmap from drawable!"

    .line 69
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_47
    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 2

    .line 1
    if-eqz p0, :cond_8

    .line 3
    new-instance v0, Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    if-eqz p0, :cond_32

    .line 3
    instance-of v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    .line 10
    if-eqz v0, :cond_27

    .line 12
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_26

    .line 21
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 28
    move-result v3

    .line 29
    invoke-static {v2}, Lcom/android/fileexplorer/view/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    return-object p0

    .line 40
    :cond_27
    invoke-static {p0}, Lcom/android/fileexplorer/view/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_32

    .line 46
    new-instance p0, Lcom/android/fileexplorer/view/RoundedDrawable;

    .line 48
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_32
    return-object p0
.end method

.method private static only(I[Z)Z
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/4 v3, 0x1

    .line 5
    if-ge v2, v0, :cond_12

    .line 7
    aget-boolean v4, p1, v2

    .line 9
    if-ne v2, p0, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v3, v1

    .line 13
    :goto_c
    if-eq v4, v3, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return v3
.end method

.method private redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->all([Z)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v0, v0, v1

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 20
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 22
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 27
    move-result v0

    .line 28
    add-float/2addr v0, v1

    .line 29
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 34
    move-result v3

    .line 35
    add-float/2addr v3, v2

    .line 36
    iget v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 38
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 40
    const/4 v6, 0x0

    .line 41
    aget-boolean v5, v5, v6

    .line 43
    if-nez v5, :cond_3c

    .line 45
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 47
    add-float v6, v1, v4

    .line 49
    add-float v7, v2, v4

    .line 51
    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 56
    iget-object v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    :cond_3c
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 63
    const/4 v6, 0x1

    .line 64
    aget-boolean v5, v5, v6

    .line 66
    if-nez v5, :cond_51

    .line 68
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 70
    sub-float v6, v0, v4

    .line 72
    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 77
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 82
    :cond_51
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 84
    const/4 v5, 0x2

    .line 85
    aget-boolean v2, v2, v5

    .line 87
    if-nez v2, :cond_68

    .line 89
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 91
    sub-float v5, v0, v4

    .line 93
    sub-float v6, v3, v4

    .line 95
    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 100
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 107
    const/4 v2, 0x3

    .line 108
    aget-boolean v0, v0, v2

    .line 110
    if-nez v0, :cond_7e

    .line 112
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 114
    sub-float v2, v3, v4

    .line 116
    add-float/2addr v4, v1

    .line 117
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 122
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    :cond_7e
    return-void
.end method

.method private redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 5
    invoke-static {v1}, Lcom/android/fileexplorer/view/RoundedDrawable;->all([Z)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget v1, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v1, v1, v2

    .line 17
    if-nez v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v1, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 22
    iget v8, v1, Landroid/graphics/RectF;->left:F

    .line 24
    iget v9, v1, Landroid/graphics/RectF;->top:F

    .line 26
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 29
    move-result v1

    .line 30
    add-float/2addr v1, v8

    .line 31
    iget-object v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 36
    move-result v2

    .line 37
    add-float v16, v2, v9

    .line 39
    iget v15, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 41
    iget v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 43
    const/high16 v3, 0x40000000  # 2.0f

    .line 45
    div-float v17, v2, v3

    .line 47
    iget-object v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 49
    const/4 v3, 0x0

    .line 50
    aget-boolean v2, v2, v3

    .line 52
    if-nez v2, :cond_4d

    .line 54
    sub-float v3, v8, v17

    .line 56
    add-float v5, v8, v15

    .line 58
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 60
    move-object/from16 v2, p1

    .line 62
    move v4, v9

    .line 63
    move v6, v9

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    sub-float v4, v9, v17

    .line 69
    add-float v6, v9, v15

    .line 71
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 73
    move v3, v8

    .line 74
    move v5, v8

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_4d
    iget-object v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 80
    const/4 v3, 0x1

    .line 81
    aget-boolean v2, v2, v3

    .line 83
    if-nez v2, :cond_6c

    .line 85
    sub-float v2, v1, v15

    .line 87
    sub-float v3, v2, v17

    .line 89
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 91
    move-object/from16 v2, p1

    .line 93
    move v4, v9

    .line 94
    move v5, v1

    .line 95
    move v6, v9

    .line 96
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    sub-float v4, v9, v17

    .line 101
    add-float v6, v9, v15

    .line 103
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 105
    move v3, v1

    .line 106
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    :cond_6c
    iget-object v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 111
    const/4 v3, 0x2

    .line 112
    aget-boolean v2, v2, v3

    .line 114
    if-nez v2, :cond_94

    .line 116
    sub-float v2, v1, v15

    .line 118
    sub-float v11, v2, v17

    .line 120
    add-float v13, v1, v17

    .line 122
    iget-object v2, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 124
    move-object/from16 v10, p1

    .line 126
    move/from16 v12, v16

    .line 128
    move/from16 v14, v16

    .line 130
    move v9, v15

    .line 131
    move-object v15, v2

    .line 132
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    sub-float v4, v16, v9

    .line 137
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 139
    move-object/from16 v2, p1

    .line 141
    move v3, v1

    .line 142
    move v5, v1

    .line 143
    move/from16 v6, v16

    .line 145
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move v9, v15

    .line 150
    :goto_95
    iget-object v1, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 152
    const/4 v2, 0x3

    .line 153
    aget-boolean v1, v1, v2

    .line 155
    if-nez v1, :cond_b8

    .line 157
    sub-float v11, v8, v17

    .line 159
    add-float v13, v8, v9

    .line 161
    iget-object v15, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 163
    move-object/from16 v10, p1

    .line 165
    move/from16 v12, v16

    .line 167
    move/from16 v14, v16

    .line 169
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    sub-float v4, v16, v9

    .line 174
    iget-object v7, v0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 176
    move-object/from16 v2, p1

    .line 178
    move v3, v8

    .line 179
    move v5, v8

    .line 180
    move/from16 v6, v16

    .line 182
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    :cond_b8
    return-void
.end method

.method private updateShaderMatrix()V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/RoundedDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/high16 v2, 0x3f000000  # 0.5f

    .line 14
    const/high16 v3, 0x40000000  # 2.0f

    .line 16
    if-eq v0, v1, :cond_1d1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq v0, v4, :cond_15a

    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq v0, v4, :cond_d3

    .line 24
    const/4 v2, 0x5

    .line 25
    if-eq v0, v2, :cond_a3

    .line 27
    const/4 v2, 0x6

    .line 28
    if-eq v0, v2, :cond_73

    .line 30
    const/4 v2, 0x7

    .line 31
    if-eq v0, v2, :cond_50

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 44
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 46
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 48
    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 53
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 60
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 62
    div-float v4, v2, v3

    .line 64
    div-float/2addr v2, v3

    .line 65
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 72
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 74
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 76
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    goto/16 :goto_20a

    .line 81
    :cond_50
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 83
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 85
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 90
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 92
    div-float v4, v2, v3

    .line 94
    div-float/2addr v2, v3

    .line 95
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 105
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 107
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 109
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 111
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 114
    goto/16 :goto_20a

    .line 116
    :cond_73
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 118
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 125
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 127
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 129
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 131
    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 136
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 138
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 141
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 143
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 145
    div-float v4, v2, v3

    .line 147
    div-float/2addr v2, v3

    .line 148
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 151
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 153
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 155
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 157
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 159
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 162
    goto/16 :goto_20a

    .line 164
    :cond_a3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 166
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 168
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 171
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 173
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 175
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 177
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 179
    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 182
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 184
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 186
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 191
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 193
    div-float v4, v2, v3

    .line 195
    div-float/2addr v2, v3

    .line 196
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 199
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 201
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 203
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 205
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 207
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 210
    goto/16 :goto_20a

    .line 212
    :cond_d3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 217
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 219
    int-to-float v0, v0

    .line 220
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 222
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 225
    move-result v4

    .line 226
    cmpg-float v0, v0, v4

    .line 228
    if-gtz v0, :cond_f5

    .line 230
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 232
    int-to-float v0, v0

    .line 233
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 235
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 238
    move-result v4

    .line 239
    cmpg-float v0, v0, v4

    .line 241
    if-gtz v0, :cond_f5

    .line 243
    const/high16 v0, 0x3f800000  # 1.0f

    .line 245
    goto :goto_10d

    .line 246
    :cond_f5
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 248
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 251
    move-result v0

    .line 252
    iget v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 254
    int-to-float v4, v4

    .line 255
    div-float/2addr v0, v4

    .line 256
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 258
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 261
    move-result v4

    .line 262
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 264
    int-to-float v5, v5

    .line 265
    div-float/2addr v4, v5

    .line 266
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 269
    move-result v0

    .line 270
    :goto_10d
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 272
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 275
    move-result v4

    .line 276
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 278
    int-to-float v5, v5

    .line 279
    mul-float/2addr v5, v0

    .line 280
    sub-float/2addr v4, v5

    .line 281
    mul-float/2addr v4, v2

    .line 282
    add-float/2addr v4, v2

    .line 283
    float-to-int v4, v4

    .line 284
    int-to-float v4, v4

    .line 285
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 287
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 290
    move-result v5

    .line 291
    iget v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 293
    int-to-float v6, v6

    .line 294
    mul-float/2addr v6, v0

    .line 295
    sub-float/2addr v5, v6

    .line 296
    mul-float/2addr v5, v2

    .line 297
    add-float/2addr v5, v2

    .line 298
    float-to-int v2, v5

    .line 299
    int-to-float v2, v2

    .line 300
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 302
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 305
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 307
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 312
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 314
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 317
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 319
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 321
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 324
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 326
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 328
    div-float v4, v2, v3

    .line 330
    div-float/2addr v2, v3

    .line 331
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 334
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 336
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 338
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 340
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 342
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 345
    goto/16 :goto_20a

    .line 347
    :cond_15a
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 349
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 351
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 354
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 356
    iget v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 358
    div-float v5, v4, v3

    .line 360
    div-float/2addr v4, v3

    .line 361
    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 364
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 369
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 371
    int-to-float v0, v0

    .line 372
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 374
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 377
    move-result v4

    .line 378
    mul-float/2addr v4, v0

    .line 379
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 381
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 384
    move-result v0

    .line 385
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 387
    int-to-float v5, v5

    .line 388
    mul-float/2addr v0, v5

    .line 389
    cmpl-float v0, v4, v0

    .line 391
    const/4 v4, 0x0

    .line 392
    if-lez v0, :cond_1a3

    .line 394
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 396
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 399
    move-result v0

    .line 400
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 402
    int-to-float v5, v5

    .line 403
    div-float/2addr v0, v5

    .line 404
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 406
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 409
    move-result v5

    .line 410
    iget v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 412
    int-to-float v6, v6

    .line 413
    mul-float/2addr v6, v0

    .line 414
    sub-float/2addr v5, v6

    .line 415
    mul-float/2addr v5, v2

    .line 416
    move v8, v5

    .line 417
    move v5, v4

    .line 418
    move v4, v8

    .line 419
    goto :goto_1b9

    .line 420
    :cond_1a3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 422
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 425
    move-result v0

    .line 426
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 428
    int-to-float v5, v5

    .line 429
    div-float/2addr v0, v5

    .line 430
    iget-object v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 432
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 435
    move-result v5

    .line 436
    iget v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 438
    int-to-float v6, v6

    .line 439
    mul-float/2addr v6, v0

    .line 440
    sub-float/2addr v5, v6

    .line 441
    mul-float/2addr v5, v2

    .line 442
    :goto_1b9
    iget-object v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 444
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 447
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 449
    add-float/2addr v4, v2

    .line 450
    float-to-int v4, v4

    .line 451
    int-to-float v4, v4

    .line 452
    iget v6, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 454
    div-float v7, v6, v3

    .line 456
    add-float/2addr v7, v4

    .line 457
    add-float/2addr v5, v2

    .line 458
    float-to-int v2, v5

    .line 459
    int-to-float v2, v2

    .line 460
    div-float/2addr v6, v3

    .line 461
    add-float/2addr v6, v2

    .line 462
    invoke-virtual {v0, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 465
    goto :goto_20a

    .line 466
    :cond_1d1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 468
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 470
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 473
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 475
    iget v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 477
    div-float v5, v4, v3

    .line 479
    div-float/2addr v4, v3

    .line 480
    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 483
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 485
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 488
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 490
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 492
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 495
    move-result v3

    .line 496
    iget v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 498
    int-to-float v4, v4

    .line 499
    invoke-static {v3, v4, v2, v2}, Lf0/e;->a(FFFF)F

    .line 502
    move-result v3

    .line 503
    float-to-int v3, v3

    .line 504
    int-to-float v3, v3

    .line 505
    iget-object v4, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 507
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 510
    move-result v4

    .line 511
    iget v5, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 513
    int-to-float v5, v5

    .line 514
    invoke-static {v4, v5, v2, v2}, Lf0/e;->a(FFFF)F

    .line 517
    move-result v2

    .line 518
    float-to-int v2, v2

    .line 519
    int-to-float v2, v2

    .line 520
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 523
    :goto_20a
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 525
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 527
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 530
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 532
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 11
    iget-object v3, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 13
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 18
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 20
    if-ne v1, v2, :cond_1e

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 24
    if-ne v1, v2, :cond_1e

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 31
    :cond_1e
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 39
    :cond_26
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mOval:Z

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_48

    .line 44
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 46
    cmpl-float v0, v0, v1

    .line 48
    if-lez v0, :cond_40

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 64
    goto :goto_8c

    .line 65
    :cond_40
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    goto :goto_8c

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    .line 75
    invoke-static {v0}, Lcom/android/fileexplorer/view/RoundedDrawable;->any([Z)Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_78

    .line 81
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 83
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 85
    cmpl-float v1, v2, v1

    .line 87
    if-lez v1, :cond_6d

    .line 89
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 91
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 96
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 98
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V

    .line 109
    goto :goto_8c

    .line 110
    :cond_6d
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 112
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    .line 120
    goto :goto_8c

    .line 121
    :cond_78
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 123
    iget-object v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 128
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 130
    cmpl-float v0, v0, v1

    .line 132
    if-lez v0, :cond_8c

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 136
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    :cond_8c
    :goto_8c
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBorderColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getBorderWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 3
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    return v0
.end method

.method public getCornerRadius(I)F
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapHeight:I

    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapWidth:I

    .line 3
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    return-object v0
.end method

.method public getSourceBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 3
    return-object v0
.end method

.method public isOval()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mOval:Z

    .line 3
    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedDrawable;->updateShaderMatrix()V

    .line 12
    return-void
.end method

.method public onStateChange([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 13
    move-result v1

    .line 14
    if-eq v1, v0, :cond_16

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setBorderColor(I)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/android/fileexplorer/view/RoundedDrawable;

    move-result-object p1

    return-object p1
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 5

    if-eqz p1, :cond_3

    goto :goto_8

    :cond_3
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setBorderWidth(F)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 3

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderWidth:F

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setCornerRadius(F)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/fileexplorer/view/RoundedDrawable;->setCornerRadius(FFFF)Lcom/android/fileexplorer/view/RoundedDrawable;

    return-object p0
.end method

.method public setCornerRadius(FFFF)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 9

    .line 10
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_9a

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_58

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_58

    .line 20
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    goto :goto_71

    .line 21
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid radius value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6f
    iput v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 23
    :goto_71
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    cmpl-float p1, p1, v1

    const/4 v2, 0x0

    if-lez p1, :cond_7a

    move p1, v3

    goto :goto_7b

    :cond_7a
    move p1, v2

    :goto_7b
    aput-boolean p1, v0, v2

    cmpl-float p1, p2, v1

    if-lez p1, :cond_83

    move p1, v3

    goto :goto_84

    :cond_83
    move p1, v2

    .line 24
    :goto_84
    aput-boolean p1, v0, v3

    const/4 p1, 0x2

    cmpl-float p2, p3, v1

    if-lez p2, :cond_8d

    move p2, v3

    goto :goto_8e

    :cond_8d
    move p2, v2

    .line 25
    :goto_8e
    aput-boolean p2, v0, p1

    const/4 p1, 0x3

    cmpl-float p2, p4, v1

    if-lez p2, :cond_96

    goto :goto_97

    :cond_96
    move v3, v2

    .line 26
    :goto_97
    aput-boolean v3, v0, p1

    return-object p0

    .line 27
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCornerRadius(IF)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_18

    .line 2
    iget v2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_18

    cmpl-float v2, v2, p2

    if-nez v2, :cond_10

    goto :goto_18

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    if-nez v1, :cond_2a

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/RoundedDrawable;->only(I[Z)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 6
    :cond_24
    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    const/4 v0, 0x0

    aput-boolean v0, p2, p1

    goto :goto_37

    .line 7
    :cond_2a
    iget v1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_32

    .line 8
    iput p2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornerRadius:F

    .line 9
    :cond_32
    iget-object p2, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mCornersRounded:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    :goto_37
    return-object p0
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setOval(Z)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mOval:Z

    .line 3
    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 7
    if-eq v0, p1, :cond_d

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundedDrawable;->updateShaderMatrix()V

    .line 14
    :cond_d
    return-object p0
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    :cond_c
    return-object p0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/android/fileexplorer/view/RoundedDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 3
    if-eq v0, p1, :cond_c

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RoundedDrawable;->mRebuildShader:Z

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    :cond_c
    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/view/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
