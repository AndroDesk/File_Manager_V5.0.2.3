.class public Lcom/android/fileexplorer/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static bitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/BitmapUtils;->bitmapCache:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 12
    const/16 v2, 0x64

    .line 14
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 24
    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v2, v3, :cond_1d

    .line 27
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 32
    :goto_1f
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Landroid/graphics/Canvas;

    .line 38
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-object v2
.end method

.method public static getBitmap(IIII)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/BitmapUtils;->getKey(IIII)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/BitmapUtils;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_3c

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/graphics/Canvas;

    .line 19
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    new-instance v3, Landroid/graphics/Paint;

    .line 24
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 27
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 36
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance p3, Landroid/graphics/RectF;

    .line 41
    int-to-float p0, p0

    .line 42
    int-to-float p1, p1

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {p3, v4, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    int-to-float p0, p2

    .line 48
    invoke-virtual {v2, p3, p0, p0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 51
    sget-object p0, Lcom/android/fileexplorer/util/BitmapUtils;->bitmapCache:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 55
    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    return-object v1
.end method

.method private static getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/BitmapUtils;->bitmapCache:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 9
    sget-object v0, Lcom/android/fileexplorer/util/BitmapUtils;->bitmapCache:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 17
    if-eqz p0, :cond_21

    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/graphics/Bitmap;

    .line 25
    if-eqz p0, :cond_21

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 33
    return-object p0

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method private static getKey(IIII)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Bitmap"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static isGifSuffix(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "gif"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method
