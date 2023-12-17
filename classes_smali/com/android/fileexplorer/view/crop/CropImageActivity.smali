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

.field private static final DEFAULT_HEIGHT:I

.field private static final DEFAULT_WIDTH:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c76

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->DEFAULT_HEIGHT:I

    const v0, 0x92c76

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->DEFAULT_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getBitmapSize()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getBitmap()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/crop/CropImageActivity;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->isRotateImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/crop/CropImageActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->startFaceDetection(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->saveDrawableToCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Lcom/android/fileexplorer/view/crop/MultiTouchImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    return-object p0
.end method

.method private getBitmap()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception v1

    goto :goto_3e

    :catch_a
    move-exception v1

    :try_start_b
    const-string v2, "CropImageActivity"

    const-string v3, "CropImageActivity getBitmap() : "

    invoke-static {v2, v3, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_8

    move-object v1, v0

    :goto_13
    :try_start_13
    iget v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mWidth:I

    iget v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    div-int/2addr v2, v3

    const/16 v4, 0x3c0

    if-gt v2, v4, :cond_35

    iget v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHeight:I

    div-int/2addr v2, v3

    if-le v2, v4, :cond_22

    goto :goto_35

    :cond_22
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_3a

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_35
    :goto_35
    mul-int/lit8 v3, v3, 0x2

    :try_start_37
    iput v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    goto :goto_13

    :catchall_3a
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3e
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private getBitmapSize()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_22
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mWidth:I

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHeight:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_31

    goto :goto_2d

    :catch_1b
    move-exception v0

    goto :goto_26

    :catchall_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_32

    :catch_22
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_26
    :try_start_26
    const-string v2, "CropImageActivity"

    const-string v3, "CropImageActivity getBitmapSize() : "

    invoke-static {v2, v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31

    :goto_2d
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_31
    move-exception v0

    :goto_32
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getCropRect()Landroid/graphics/Rect;
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    iget-object v1, v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mDrawRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v2, v2, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->mScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_30

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    float-to-int v4, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v5, v1

    div-float/2addr v6, v0

    float-to-int v6, v6

    sub-float/2addr v5, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, v5

    div-float/2addr v1, v0

    float-to-int v0, v1

    move v5, v4

    :goto_2e
    move v4, v3

    goto :goto_88

    :cond_30
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v5, v0

    move v0, v1

    move v6, v4

    goto :goto_88

    :cond_46
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5b

    iget-object v3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v5, v3

    move v3, v4

    goto :goto_67

    :cond_5b
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v0

    float-to-int v5, v6

    :goto_67
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7a

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_86

    :cond_7a
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    :goto_86
    move v6, v4

    goto :goto_2e

    :goto_88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 4

    :try_start_0
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v0

    :catch_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private initBitmap()V
    .registers 11

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    :try_start_16
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move v3, v8

    move v4, v9

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_24} :catch_25

    goto :goto_3f

    :catch_25
    iget v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mSampleSize:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    div-float v1, v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move v3, v8

    move v4, v9

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    :goto_3f
    return-void
.end method

.method private isRotateImage(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    const/4 v0, 0x6

    if-ne p1, v0, :cond_18

    return v1

    :catch_10
    move-exception p1

    const-string v0, "CropImageActivity"

    const-string v1, "CropImageActivity isRotateImage() : "

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private onCropPhoto()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;ZLcom/android/fileexplorer/view/crop/CropImageActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveDrawableToCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_35
    .catchall {:try_start_1 .. :try_end_1f} :catchall_33

    :try_start_1f
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_30
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_40

    :catchall_2d
    move-exception p1

    move-object v0, p2

    goto :goto_41

    :catch_30
    move-exception p1

    move-object v0, p2

    goto :goto_36

    :catchall_33
    move-exception p1

    goto :goto_41

    :catch_35
    move-exception p1

    :goto_36
    :try_start_36
    const-string p2, "CropImageActivity"

    const-string v1, "save file error"

    invoke-static {p2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_40
    return-void

    :goto_41
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private startFaceDetection(Z)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->initBitmap()V

    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f042db3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f032c73

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    const v0, 0x7f032c84  # 1.7436E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mHighlightView:Lcom/android/fileexplorer/view/crop/HighlightCropView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setHighlightView(Lcom/android/fileexplorer/view/crop/HighlightCropView;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_43

    const-string v0, "crop_image_uri"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    goto :goto_4d

    :cond_43
    const-string p1, "image_uri"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    :goto_4d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_68

    new-instance p1, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;ZLcom/android/fileexplorer/view/crop/CropImageActivity$1;)V

    new-array v0, v2, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_68
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_73

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mImageView:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->release()V

    :cond_a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0058

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_12

    :cond_e
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->onCropPhoto()V

    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity;->mTargetUri:Landroid/net/Uri;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crop_image_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
