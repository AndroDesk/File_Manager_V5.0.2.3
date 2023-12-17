.class public Lcom/android/fileexplorer/view/crop/CropImageActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;
    }
.end annotation


# static fields
.field private static final CROP_PREFIX:Ljava/lang/String; = "crop_image"

.field private static final CROP_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final DEFAULT_HEIGHT:I = 0x1e0

.field private static final DEFAULT_WIDTH:I = 0x1e0

.field public static final EXTRA_CROP_IMAGE_URI:Ljava/lang/String; = "crop_image_uri"

.field public static final EXTRA_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field private static final LOG_TAG:Ljava/lang/String; = "CropImageActivity"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHeight:I

.field private mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

.field private mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

.field private mSampleSize:I

.field private mTargetUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    .line 7
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getBitmapSize()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getBitmap()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/crop/CropImageActivity;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->isRotateImage(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/crop/CropImageActivity;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->startFaceDetection(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Rect;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getCropRect()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->saveDrawableToCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Lcom/android/fileexplorer/view/crop/MultiTouchImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 3
    return-object p0
.end method

.method private getBitmap()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 4
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 7
    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    .line 8
    goto :goto_13

    .line 9
    :catchall_8
    move-exception v1

    .line 10
    goto :goto_3e

    .line 11
    :catch_a
    move-exception v1

    .line 12
    :try_start_b
    const-string v2, "CropImageActivity"

    .line 14
    const-string v3, "CropImageActivity getBitmap() : "

    .line 16
    invoke-static {v2, v3, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_8

    .line 19
    move-object v1, v0

    .line 20
    :goto_13
    :try_start_13
    iget v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mWidth:I

    .line 22
    iget v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    .line 24
    div-int/2addr v2, v3

    .line 25
    const/16 v4, 0x3c0

    .line 27
    if-gt v2, v4, :cond_35

    .line 29
    iget v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHeight:I

    .line 31
    div-int/2addr v2, v3

    .line 32
    if-le v2, v4, :cond_22

    .line 34
    goto :goto_35

    .line 35
    :cond_22
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 37
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    iget v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    .line 42
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 44
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_3a

    .line 50
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    return-void

    .line 54
    :cond_35
    :goto_35
    mul-int/lit8 v3, v3, 0x2

    .line 56
    :try_start_37
    iput v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    .line 58
    goto :goto_13

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    move-object v5, v1

    .line 61
    move-object v1, v0

    .line 62
    move-object v0, v5

    .line 63
    :goto_3e
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    throw v1
.end method

.method private getBitmapSize()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 4
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 7
    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_22
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    .line 8
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 10
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 21
    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mWidth:I

    .line 23
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 25
    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHeight:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_31

    .line 27
    goto :goto_2d

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    goto :goto_26

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    move-object v4, v1

    .line 32
    move-object v1, v0

    .line 33
    move-object v0, v4

    .line 34
    goto :goto_32

    .line 35
    :catch_22
    move-exception v1

    .line 36
    move-object v4, v1

    .line 37
    move-object v1, v0

    .line 38
    move-object v0, v4

    .line 39
    :goto_26
    :try_start_26
    const-string v2, "CropImageActivity"

    .line 41
    const-string v3, "CropImageActivity getBitmapSize() : "

    .line 43
    invoke-static {v2, v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31

    .line 46
    :goto_2d
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    :goto_32
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    throw v0
.end method

.method private getCropRect()Landroid/graphics/Rect;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 3
    iget-object v1, v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 7
    iget-object v2, v2, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 9
    iget v0, v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_30

    .line 18
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 20
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 22
    sub-float/2addr v3, v4

    .line 23
    div-float/2addr v3, v0

    .line 24
    float-to-int v3, v3

    .line 25
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 27
    sub-float/2addr v5, v4

    .line 28
    div-float/2addr v5, v0

    .line 29
    float-to-int v4, v5

    .line 30
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 32
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 34
    sub-float v6, v5, v1

    .line 36
    div-float/2addr v6, v0

    .line 37
    float-to-int v6, v6

    .line 38
    sub-float/2addr v5, v1

    .line 39
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 42
    move-result v1

    .line 43
    add-float/2addr v1, v5

    .line 44
    div-float/2addr v1, v0

    .line 45
    float-to-int v0, v1

    .line 46
    move v5, v4

    .line 47
    :goto_2e
    move v4, v3

    .line 48
    goto :goto_88

    .line 49
    :cond_30
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_46

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    move-result v0

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    move-result v1

    .line 67
    move v5, v0

    .line 68
    move v0, v1

    .line 69
    move v6, v4

    .line 70
    goto :goto_88

    .line 71
    :cond_46
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 74
    move-result v3

    .line 75
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 78
    move-result v5

    .line 79
    cmpl-float v3, v3, v5

    .line 81
    if-lez v3, :cond_5b

    .line 83
    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    move-result v3

    .line 89
    move v5, v3

    .line 90
    move v3, v4

    .line 91
    goto :goto_67

    .line 92
    :cond_5b
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 94
    iget v5, v1, Landroid/graphics/RectF;->left:F

    .line 96
    sub-float/2addr v3, v5

    .line 97
    div-float/2addr v3, v0

    .line 98
    float-to-int v3, v3

    .line 99
    iget v6, v2, Landroid/graphics/RectF;->right:F

    .line 101
    sub-float/2addr v6, v5

    .line 102
    div-float/2addr v6, v0

    .line 103
    float-to-int v5, v6

    .line 104
    :goto_67
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 107
    move-result v6

    .line 108
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 111
    move-result v7

    .line 112
    cmpl-float v6, v6, v7

    .line 114
    if-lez v6, :cond_7a

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 121
    move-result v0

    .line 122
    goto :goto_86

    .line 123
    :cond_7a
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 125
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 127
    sub-float/2addr v4, v1

    .line 128
    div-float/2addr v4, v0

    .line 129
    float-to-int v4, v4

    .line 130
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 132
    sub-float/2addr v2, v1

    .line 133
    div-float/2addr v2, v0

    .line 134
    float-to-int v0, v2

    .line 135
    :goto_86
    move v6, v4

    .line 136
    goto :goto_2e

    .line 137
    :goto_88
    new-instance v1, Landroid/graphics/Rect;

    .line 139
    invoke-direct {v1, v4, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    return-object v1
.end method

.method private getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "file"

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    new-instance v0, Ljava/io/FileInputStream;

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 28
    move-result-object v0
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 29
    :goto_1c
    return-object v0

    .line 30
    :catch_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method private initBitmap()V
    .registers 11

    .line 1
    new-instance v7, Landroid/graphics/Matrix;

    .line 3
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    const/high16 v0, 0x42b40000  # 90.0f

    .line 8
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    move-result v9

    .line 23
    :try_start_16
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    move v3, v8

    .line 29
    move v4, v9

    .line 30
    move-object v5, v7

    .line 31
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_24} :catch_25

    .line 37
    goto :goto_3f

    .line 38
    :catch_25
    iget v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    .line 40
    int-to-float v1, v0

    .line 41
    const/high16 v2, 0x3f800000  # 1.0f

    .line 43
    div-float v1, v2, v1

    .line 45
    int-to-float v0, v0

    .line 46
    div-float/2addr v2, v0

    .line 47
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v6, 0x1

    .line 55
    move v3, v8

    .line 56
    move v4, v9

    .line 57
    move-object v5, v7

    .line 58
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    :goto_3f
    return-void
.end method

.method private isRotateImage(Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    .line 3
    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p1, "Orientation"

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 12
    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    .line 13
    const/4 v0, 0x6

    .line 14
    if-ne p1, v0, :cond_18

    .line 16
    return v1

    .line 17
    :catch_10
    move-exception p1

    .line 18
    const-string v0, "CropImageActivity"

    .line 20
    const-string v1, "CropImageActivity isRotateImage() : "

    .line 22
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method private onCropPhoto()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;ZLcom/android/fileexplorer/view/crop/CropImageActivity$1;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Landroid/content/Context;

    .line 13
    aput-object p0, v1, v2

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    return-void
.end method

.method private saveDrawableToCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_17

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 27
    new-instance p2, Ljava/io/FileOutputStream;

    .line 29
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_35
    .catchall {:try_start_1 .. :try_end_1f} :catchall_33

    .line 32
    :try_start_1f
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 34
    const/16 v1, 0x64

    .line 36
    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_30
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 42
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    goto :goto_40

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    move-object v0, p2

    .line 48
    goto :goto_41

    .line 49
    :catch_30
    move-exception p1

    .line 50
    move-object v0, p2

    .line 51
    goto :goto_36

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    goto :goto_41

    .line 54
    :catch_35
    move-exception p1

    .line 55
    :goto_36
    :try_start_36
    const-string p2, "CropImageActivity"

    .line 57
    const-string v1, "save file error"

    .line 59
    invoke-static {p2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    :goto_40
    return-void

    .line 66
    :goto_41
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    throw p1
.end method

.method private startFaceDetection(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    if-eqz p1, :cond_b

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->initBitmap()V

    .line 12
    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f0d0025

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    const v0, 0x7f0a01e5

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 21
    const v0, 0x7f0a0112

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 34
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setHighlightView(Lcom/android/fileexplorer/view/crop/HighlightCropView;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    move-result-object v0

    .line 41
    if-eqz p1, :cond_37

    .line 43
    const-string v0, "crop_image_uri"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 55
    goto :goto_41

    .line 56
    :cond_37
    const-string p1, "image_uri"

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/net/Uri;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 66
    :goto_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    if-nez p1, :cond_5c

    .line 76
    new-instance p1, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;ZLcom/android/fileexplorer/view/crop/CropImageActivity$1;)V

    .line 85
    new-array v0, v2, [Landroid/content/Context;

    .line 87
    const/4 v1, 0x0

    .line 88
    aput-object p0, v0, v1

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    :cond_5c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_67

    .line 99
    const/16 v0, 0xc

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 104
    :cond_67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e000a

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->release()V

    .line 11
    :cond_a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0058

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->onCropPhoto()V

    .line 18
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "crop_image_uri"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_10
    return-void
.end method
