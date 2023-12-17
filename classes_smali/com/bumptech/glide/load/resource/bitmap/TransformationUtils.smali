.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;,
        Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;
    }
.end annotation


# static fields
.field private static final BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_CROP_PAINT_FLAGS:I = 0x7

.field private static final CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

.field private static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field private static final MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 19
    const-string v2, "XT1085"

    .line 21
    const-string v3, "XT1092"

    .line 23
    const-string v4, "XT1093"

    .line 25
    const-string v5, "XT1094"

    .line 27
    const-string v6, "XT1095"

    .line 29
    const-string v7, "XT1096"

    .line 31
    const-string v8, "XT1097"

    .line 33
    const-string v9, "XT1098"

    .line 35
    const-string v10, "XT1031"

    .line 37
    const-string v11, "XT1028"

    .line 39
    const-string v12, "XT937C"

    .line 41
    const-string v13, "XT1032"

    .line 43
    const-string v14, "XT1008"

    .line 45
    const-string v15, "XT1033"

    .line 47
    const-string v16, "XT1035"

    .line 49
    const-string v17, "XT1034"

    .line 51
    const-string v18, "XT939G"

    .line 53
    const-string v19, "XT1039"

    .line 55
    const-string v20, "XT1040"

    .line 57
    const-string v21, "XT1042"

    .line 59
    const-string v22, "XT1045"

    .line 61
    const-string v23, "XT1063"

    .line 63
    const-string v24, "XT1064"

    .line 65
    const-string v25, "XT1068"

    .line 67
    const-string v26, "XT1069"

    .line 69
    const-string v27, "XT1072"

    .line 71
    const-string v28, "XT1077"

    .line 73
    const-string v29, "XT1078"

    .line 75
    const-string v30, "XT1079"

    .line 77
    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    .line 90
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_67

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 103
    goto :goto_6c

    .line 104
    :cond_67
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;

    .line 106
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;-><init>()V

    .line 109
    :goto_6c
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    .line 113
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 116
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 118
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 120
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 122
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_5
    new-instance v1, Landroid/graphics/Canvas;

    .line 8
    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v1, p0, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 16
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    throw p0
.end method

.method public static centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-ne v0, p2, :cond_d

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-ne v0, p3, :cond_d

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance v0, Landroid/graphics/Matrix;

    .line 16
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    move-result v1

    .line 23
    mul-int/2addr v1, p3

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    move-result v2

    .line 28
    mul-int/2addr v2, p2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/high16 v4, 0x3f000000  # 0.5f

    .line 32
    if-le v1, v2, :cond_35

    .line 34
    int-to-float v1, p3

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    div-float/2addr v1, v2

    .line 41
    int-to-float v2, p2

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    move-result v5

    .line 46
    int-to-float v5, v5

    .line 47
    mul-float/2addr v5, v1

    .line 48
    sub-float/2addr v2, v5

    .line 49
    mul-float/2addr v2, v4

    .line 50
    move v6, v3

    .line 51
    move v3, v2

    .line 52
    move v2, v6

    .line 53
    goto :goto_45

    .line 54
    :cond_35
    int-to-float v1, p2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    div-float/2addr v1, v2

    .line 61
    int-to-float v2, p3

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 65
    move-result v5

    .line 66
    int-to-float v5, v5

    .line 67
    mul-float/2addr v5, v1

    .line 68
    sub-float/2addr v2, v5

    .line 69
    mul-float/2addr v2, v4

    .line 70
    :goto_45
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 73
    add-float/2addr v3, v4

    .line 74
    float-to-int v1, v3

    .line 75
    int-to-float v1, v1

    .line 76
    add-float/2addr v2, v4

    .line 77
    float-to-int v2, v2

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p0, p2, p3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 93
    invoke-static {p1, p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 96
    return-object p0
.end method

.method public static centerInside(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "TransformationUtils"

    .line 8
    if-gt v0, p2, :cond_1b

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result v0

    .line 14
    if-gt v0, p3, :cond_1b

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1a

    .line 22
    const-string p0, "requested target size larger or equal to input, returning input"

    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1a
    return-object p1

    .line 28
    :cond_1b
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    const-string v0, "requested target size too big for input, fit centering instead"

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_26
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static circleCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 4
    move-result p2

    .line 5
    int-to-float p3, p2

    .line 6
    const/high16 v0, 0x40000000  # 2.0f

    .line 8
    div-float v1, p3, v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    move-result v3

    .line 18
    int-to-float v2, v2

    .line 19
    div-float v4, p3, v2

    .line 21
    int-to-float v3, v3

    .line 22
    div-float v5, p3, v3

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result v4

    .line 28
    mul-float/2addr v2, v4

    .line 29
    mul-float/2addr v4, v3

    .line 30
    sub-float v3, p3, v2

    .line 32
    div-float/2addr v3, v0

    .line 33
    sub-float/2addr p3, v4

    .line 34
    div-float/2addr p3, v0

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    .line 37
    add-float/2addr v2, v3

    .line 38
    add-float/2addr v4, p3

    .line 39
    invoke-direct {v0, v3, p3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 45
    move-result-object p3

    .line 46
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 49
    move-result-object v2

    .line 50
    invoke-interface {p0, p2, p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 53
    move-result-object p2

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 58
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 60
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 63
    :try_start_3e
    new-instance v3, Landroid/graphics/Canvas;

    .line 65
    invoke-direct {v3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    const/4 v1, 0x0

    .line 74
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {v3, p3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_5e

    .line 82
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5d

    .line 91
    invoke-interface {p0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_5d
    return-object p2

    .line 95
    :catchall_5e
    move-exception p0

    .line 96
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 98
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    throw p0
.end method

.method private static clear(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    return-void
.end method

.method public static fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "TransformationUtils"

    .line 8
    if-ne v0, p2, :cond_1b

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result v0

    .line 14
    if-ne v0, p3, :cond_1b

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1a

    .line 22
    const-string p0, "requested target size matches input, returning input"

    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1a
    return-object p1

    .line 28
    :cond_1b
    int-to-float v0, p2

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    div-float/2addr v0, v3

    .line 35
    int-to-float v3, p3

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    div-float/2addr v3, v4

    .line 42
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    mul-float/2addr v3, v0

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result v3

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    mul-float/2addr v4, v0

    .line 62
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 65
    move-result v4

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    move-result v5

    .line 70
    if-ne v5, v3, :cond_59

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 75
    move-result v3

    .line 76
    if-ne v3, v4, :cond_59

    .line 78
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_58

    .line 84
    const-string p0, "adjusted target size matches input, returning input"

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_58
    return-object p1

    .line 90
    :cond_59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 93
    move-result v3

    .line 94
    int-to-float v3, v3

    .line 95
    mul-float/2addr v3, v0

    .line 96
    float-to-int v3, v3

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 100
    move-result v4

    .line 101
    int-to-float v4, v4

    .line 102
    mul-float/2addr v4, v0

    .line 103
    float-to-int v4, v4

    .line 104
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 107
    move-result-object v5

    .line 108
    invoke-interface {p0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 115
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_ec

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v3, "request: "

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string p2, "x"

    .line 136
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p3

    .line 146
    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v1, "toFit:   "

    .line 156
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 162
    move-result v1

    .line 163
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 172
    move-result v1

    .line 173
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p3

    .line 180
    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v1, "toReuse: "

    .line 190
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 196
    move-result v1

    .line 197
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 206
    move-result p2

    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p2

    .line 214
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string p3, "minPct:   "

    .line 224
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p2

    .line 234
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_ec
    new-instance p2, Landroid/graphics/Matrix;

    .line 239
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 245
    invoke-static {p1, p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 248
    return-object p0
.end method

.method private static getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-object p1

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    move-result v2

    .line 24
    invoke-interface {p0, v1, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 27
    move-result-object p0

    .line 28
    new-instance v0, Landroid/graphics/Canvas;

    .line 30
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    return-object p0
.end method

.method private static getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_15

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_15

    .line 19
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 21
    return-object p0

    .line 22
    :cond_15
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 24
    return-object p0
.end method

.method public static getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 3
    return-object v0
.end method

.method public static getExifOrientationDegrees(I)I
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    goto :goto_d

    :pswitch_5  #0x7, 0x8
    const/16 p0, 0x10e

    goto :goto_d

    :pswitch_8  #0x5, 0x6
    const/16 p0, 0x5a

    goto :goto_d

    :pswitch_b  #0x3, 0x4
    const/16 p0, 0xb4

    :goto_d
    return p0

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_b  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
        :pswitch_8  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method

.method private static getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    :goto_d
    return-object p0
.end method

.method public static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .registers 7

    .line 1
    const/high16 v0, -0x3d4c0000  # -90.0f

    .line 3
    const/high16 v1, 0x42b40000  # 90.0f

    .line 5
    const/high16 v2, 0x43340000  # 180.0f

    .line 7
    const/high16 v3, 0x3f800000  # 1.0f

    .line 9
    const/high16 v4, -0x40800000  # -1.0f

    .line 11
    packed-switch p0, :pswitch_data_34

    .line 14
    goto :goto_32

    .line 15
    :pswitch_e  #0x8
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 18
    goto :goto_32

    .line 19
    :pswitch_12  #0x7
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 22
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 25
    goto :goto_32

    .line 26
    :pswitch_19  #0x6
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 29
    goto :goto_32

    .line 30
    :pswitch_1d  #0x5
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 33
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 36
    goto :goto_32

    .line 37
    :pswitch_24  #0x4
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 40
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 43
    goto :goto_32

    .line 44
    :pswitch_2b  #0x3
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 47
    goto :goto_32

    .line 48
    :pswitch_2f  #0x2
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 51
    :goto_32
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2f  #00000002
        :pswitch_2b  #00000003
        :pswitch_24  #00000004
        :pswitch_1d  #00000005
        :pswitch_19  #00000006
        :pswitch_12  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method

.method public static isExifOrientationRequired(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    if-eqz p1, :cond_2b

    .line 3
    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    .line 5
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    move-result v4

    .line 22
    const/4 v6, 0x1

    .line 23
    move-object v0, p0

    .line 24
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 27
    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_2b

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    const/4 v0, 0x6

    .line 31
    const-string v1, "TransformationUtils"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    const-string v0, "Exception when trying to orient image"

    .line 41
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_2b
    :goto_2b
    return-object p0
.end method

.method public static rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    invoke-static {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 16
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 46
    move-result v2

    .line 47
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v2

    .line 51
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 54
    move-result-object v3

    .line 55
    invoke-interface {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    move-result-object p0

    .line 59
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 61
    neg-float v1, v1

    .line 62
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 64
    neg-float p2, p2

    .line 65
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 71
    move-result p2

    .line 72
    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 75
    invoke-static {p1, p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 78
    return-object p0
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 7

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;-><init>(FFFF)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    if-lez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "roundingRadius must be greater than 0."

    .line 2
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$1;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$1;-><init>(I)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;)Landroid/graphics/Bitmap;
    .registers 11

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 6
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-interface {p0, v2, v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 9
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 10
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 11
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    :try_start_3f
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 16
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    invoke-interface {p2, v5, v4, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;->drawRoundedCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 18
    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_5d

    .line 19
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 21
    invoke-interface {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    :cond_5c
    return-object v0

    :catchall_5d
    move-exception p0

    .line 22
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 8
    return-void
.end method
