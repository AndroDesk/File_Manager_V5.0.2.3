.class final Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;
.super Ljava/lang/Object;
.source "DrawableToBitmapConverter.java"


# static fields
.field private static final NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private static final TAG:Ljava/lang/String; = "DrawableToBitmap"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter$1;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter$1;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static convert(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Landroid/graphics/drawable/Drawable;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_1b

    .line 17
    :cond_10
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    .line 19
    if-nez v0, :cond_1a

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->drawToBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    if-eqz v1, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 33
    :goto_20
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private static drawToBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    const-string v0, "Unable to draw "

    .line 3
    const/4 v1, 0x5

    .line 4
    const/high16 v2, -0x80000000

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "DrawableToBitmap"

    .line 9
    if-ne p2, v2, :cond_2e

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result v5

    .line 15
    if-gtz v5, :cond_2e

    .line 17
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_2d

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width"

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2d
    return-object v3

    .line 47
    :cond_2e
    if-ne p3, v2, :cond_54

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 52
    move-result v2

    .line 53
    if-gtz v2, :cond_54

    .line 55
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_53

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height"

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_53
    return-object v3

    .line 85
    :cond_54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 88
    move-result v0

    .line 89
    if-lez v0, :cond_5e

    .line 91
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 94
    move-result p2

    .line 95
    :cond_5e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    move-result v0

    .line 99
    if-lez v0, :cond_68

    .line 101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 104
    move-result p3

    .line 105
    :cond_68
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 114
    invoke-interface {p0, p2, p3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 117
    move-result-object p0

    .line 118
    :try_start_75
    new-instance v1, Landroid/graphics/Canvas;

    .line 120
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_88

    .line 133
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 136
    return-object p0

    .line 137
    :catchall_88
    move-exception p0

    .line 138
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    throw p0
.end method
