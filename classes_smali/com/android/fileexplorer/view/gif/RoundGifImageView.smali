.class public Lcom/android/fileexplorer/view/gif/RoundGifImageView;
.super Lcom/android/fileexplorer/view/gif/GifImageView;
.source "RoundGifImageView.java"


# instance fields
.field private mMargin:I

.field private mRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 10

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v7, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    sub-int/2addr p1, v7

    int-to-float p1, p1

    invoke-direct {v3, v5, v4, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mRadius:I

    int-to-float v4, p1

    int-to-float p1, p1

    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mMargin:I

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/gif/RoundGifImageView;->mRadius:I

    return-void
.end method
