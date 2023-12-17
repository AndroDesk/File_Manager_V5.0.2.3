.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_2e

    .line 12
    iget-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result p2

    .line 24
    const/16 v0, 0x2f

    .line 26
    if-eq p2, v0, :cond_2e

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 47
    :cond_2e
    instance-of p2, p1, Landroid/view/View;

    .line 49
    if-nez p2, :cond_42

    .line 51
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 53
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/util/HashMap;

    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 66
    return-void

    .line 67
    :cond_42
    check-cast p1, Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 75
    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 77
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 80
    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    sget-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 12
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    monitor-exit v0

    .line 16
    return-object p2

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-object v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_13

    .line 19
    return-object v2

    .line 20
    :cond_13
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 22
    if-eqz v2, :cond_21

    .line 24
    invoke-interface {v2, v0}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_20

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 33
    :cond_20
    return-object v0

    .line 34
    :cond_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 40
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    const/4 v4, 0x1

    .line 44
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 46
    const/16 v5, 0xa0

    .line 48
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 50
    const-string v5, "data:"

    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_62

    .line 58
    const-string v5, "base64,"

    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    move-result v5

    .line 64
    if-lez v5, :cond_62

    .line 66
    const/16 v0, 0x2c

    .line 68
    :try_start_43
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 71
    move-result v0

    .line 72
    add-int/2addr v0, v4

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 81
    move-result-object v0
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_51} :catch_5b

    .line 82
    array-length v1, v0

    .line 83
    invoke-static {v0, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    const-string v0, "data URL did not have correct base64 format."

    .line 95
    invoke-static {v0, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-object v1

    .line 99
    :cond_62
    :try_start_62
    iget-object v4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_9a

    .line 107
    iget-object v4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 112
    move-result-object v4

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    iget-object v6, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 133
    move-result-object v2
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_85} :catch_a2

    .line 134
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    .line 145
    move-result v0

    .line 146
    invoke-static {v1, v2, v0}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 149
    move-result-object v0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :cond_9a
    :try_start_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    .line 159
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p1
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a2

    .line 163
    :catch_a2
    move-exception p1

    .line 164
    const-string v0, "Unable to open asset."

    .line 166
    invoke-static {v0, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    return-object v1
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_6

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    :cond_e
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 3
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    if-nez p2, :cond_13

    .line 3
    iget-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 11
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    return-object p2

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 28
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 35
    return-object v0
.end method
