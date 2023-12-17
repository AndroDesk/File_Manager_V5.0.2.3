.class public Lcom/android/fileexplorer/view/gif/RoundGifImageView;
.super Lcom/android/fileexplorer/view/gif/GifImageView;
.source "RoundGifImageView.java"


# instance fields
.field private mMargin:I

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    new-instance v1, Landroid/graphics/BitmapShader;

    .line 12
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 14
    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    move-result v2

    .line 28
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Landroid/graphics/Canvas;

    .line 36
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    new-instance v3, Landroid/graphics/RectF;

    .line 41
    iget v4, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    .line 43
    int-to-float v5, v4

    .line 44
    int-to-float v4, v4

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    move-result v6

    .line 49
    iget v7, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    .line 51
    sub-int/2addr v6, v7

    .line 52
    int-to-float v6, v6

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 56
    move-result p1

    .line 57
    iget v7, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    .line 59
    sub-int/2addr p1, v7

    .line 60
    int-to-float p1, p1

    .line 61
    invoke-direct {v3, v5, v4, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    iget p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mRadius:I

    .line 66
    int-to-float v4, p1

    .line 67
    int-to-float p1, p1

    .line 68
    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method

.method public setMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    .line 3
    return-void
.end method

.method public setRadius(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mRadius:I

    .line 3
    return-void
.end method
