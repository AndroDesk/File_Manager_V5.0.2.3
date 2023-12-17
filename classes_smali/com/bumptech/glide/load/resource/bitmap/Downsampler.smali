.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICO_MIME_TYPE:Ljava/lang/String; = "image/x-ico"

.field private static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/PreferredColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBMP_MIME_TYPE:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 5
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 11
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->SRGB:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 13
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 15
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    .line 21
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    .line 23
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 29
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 37
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 45
    const-string v1, "image/vnd.wap.wbmp"

    .line 47
    const-string v2, "image/x-ico"

    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 66
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    .line 68
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    .line 71
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 73
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 75
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 77
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 79
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    .line 12
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/util/DisplayMetrics;

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 20
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 28
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 36
    return-void
.end method

.method private static adjustTargetDensityForError(D)I
    .registers 6

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    .line 4
    move-result v0

    .line 5
    int-to-double v1, v0

    .line 6
    mul-double/2addr v1, p0

    .line 7
    invoke-static {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    .line 10
    move-result v1

    .line 11
    int-to-float v2, v1

    .line 12
    int-to-float v0, v0

    .line 13
    div-float/2addr v2, v0

    .line 14
    float-to-double v2, v2

    .line 15
    div-double/2addr p0, v2

    .line 16
    int-to-double v0, v1

    .line 17
    mul-double/2addr p0, v0

    .line 18
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method private calculateConfig(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 3
    move v1, p6

    .line 4
    move v2, p7

    .line 5
    move-object v3, p5

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;ZZ)Z

    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    sget-object p3, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 17
    if-eq p2, p3, :cond_4b

    .line 19
    const/4 p3, 0x0

    .line 20
    :try_start_13
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 27
    move-result p3
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_3a

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    const/4 p4, 0x3

    .line 31
    const-string p6, "Downsampler"

    .line 33
    invoke-static {p6, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    move-result p4

    .line 37
    if-eqz p4, :cond_3a

    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string p7, "Cannot determine whether the image has alpha or not from header, format "

    .line 46
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    invoke-static {p6, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_3a
    :goto_3a
    if-eqz p3, :cond_3f

    .line 61
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 66
    :goto_41
    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 70
    if-ne p1, p2, :cond_4a

    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 75
    :cond_4a
    return-void

    .line 76
    :cond_4b
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 80
    return-void
.end method

.method private static calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    const-string v7, "]"

    const-string v8, "Downsampler"

    const-string v9, "x"

    if-lez v2, :cond_1a5

    if-gtz v3, :cond_1a

    goto/16 :goto_1a5

    .line 1
    :cond_1a
    invoke-static/range {p5 .. p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    move-result v10

    if-eqz v10, :cond_23

    move v11, v2

    move v10, v3

    goto :goto_25

    :cond_23
    move v10, v2

    move v11, v3

    .line 2
    :goto_25
    invoke-virtual {v1, v10, v11, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-lez v13, :cond_165

    .line 3
    invoke-virtual {v1, v10, v11, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v7

    if-eqz v7, :cond_15d

    int-to-float v13, v10

    mul-float v14, v12, v13

    float-to-double v14, v14

    .line 4
    invoke-static {v14, v15}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v14

    int-to-float v15, v11

    mul-float v2, v12, v15

    float-to-double v2, v2

    .line 5
    invoke-static {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v2

    .line 6
    div-int v3, v10, v14

    .line 7
    div-int v2, v11, v2

    .line 8
    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v14, :cond_51

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_55

    .line 10
    :cond_51
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    :goto_55
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v7, v14, :cond_6a

    int-to-float v7, v2

    const/high16 v14, 0x3f800000  # 1.0f

    div-float/2addr v14, v12

    cmpg-float v7, v7, v14

    if-gez v7, :cond_6a

    shl-int/lit8 v2, v2, 0x1

    .line 12
    :cond_6a
    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 13
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v14, 0x0

    if-ne v0, v7, :cond_8d

    const/16 v0, 0x8

    .line 14
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v13, v0

    float-to-double v10, v13

    .line 15
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-float/2addr v15, v0

    float-to-double v10, v15

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    .line 17
    div-int/lit8 v10, v2, 0x8

    if-lez v10, :cond_d7

    .line 18
    div-int/2addr v7, v10

    .line 19
    div-int/2addr v0, v10

    goto :goto_d7

    .line 20
    :cond_8d
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v7, :cond_c8

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v7, :cond_96

    goto :goto_c8

    .line 21
    :cond_96
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v7, :cond_bc

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v7, :cond_9f

    goto :goto_bc

    .line 22
    :cond_9f
    rem-int v0, v10, v2

    if-nez v0, :cond_ad

    rem-int v0, v11, v2

    if-eqz v0, :cond_a8

    goto :goto_ad

    .line 23
    :cond_a8
    div-int v7, v10, v2

    .line 24
    div-int v0, v11, v2

    goto :goto_d7

    :cond_ad
    :goto_ad
    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    .line 25
    invoke-static {v0, v6, v7, v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v0

    .line 26
    aget v7, v0, v14

    .line 27
    aget v0, v0, v3

    goto :goto_d7

    :cond_bc
    :goto_bc
    int-to-float v0, v2

    div-float/2addr v13, v0

    .line 28
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-float/2addr v15, v0

    .line 29
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_d7

    :cond_c8
    :goto_c8
    int-to-float v0, v2

    div-float/2addr v13, v0

    float-to-double v10, v13

    .line 30
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-float/2addr v15, v0

    float-to-double v10, v15

    .line 31
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    .line 32
    :cond_d7
    :goto_d7
    invoke-virtual {v1, v7, v0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v1

    float-to-double v10, v1

    .line 33
    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->adjustTargetDensityForError(D)I

    move-result v1

    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 34
    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v1

    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 35
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 36
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_f5

    .line 37
    :cond_f1
    iput v14, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v14, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_f5
    const/4 v1, 0x2

    .line 38
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15c

    const-string v1, "Calculate scaling, source: ["

    const-string v3, "], degreesToRotate: "

    move/from16 v13, p6

    move/from16 v14, p7

    .line 39
    invoke-static {v1, v13, v9, v14, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p5

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", target: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], power of two scaled: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], exact scale factor: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", power of 2 sample size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adjusted scale factor: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", target density: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", density: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15c
    return-void

    .line 41
    :cond_15d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_165
    move v13, v2

    move v14, v3

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot scale with factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], target: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a5
    :goto_1a5
    const/4 v1, 0x3

    .line 43
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine dimensions for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with target ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    return-void
.end method

.method private decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageReader;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p4

    .line 4
    iget-object v1, v12, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 5
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 6
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 7
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 8
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 9
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 10
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 11
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 12
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    move v7, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 13
    :try_start_5f
    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    iget-object v1, v12, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v0
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_72

    .line 15
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 16
    iget-object v1, v12, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v13}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    return-object v0

    :catchall_72
    move-exception v0

    .line 17
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 18
    iget-object v1, v12, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v13}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    throw v0
.end method

.method private decodeFromWrappedStreams(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .registers 38

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v6, p2

    .line 7
    move-object/from16 v5, p10

    .line 9
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    .line 12
    move-result-wide v20

    .line 13
    iget-object v0, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 15
    invoke-static {v7, v6, v5, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    .line 18
    move-result-object v0

    .line 19
    const/16 v22, 0x0

    .line 21
    aget v4, v0, v22

    .line 23
    const/4 v1, 0x1

    .line 24
    aget v3, v0, v1

    .line 26
    iget-object v2, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    .line 29
    if-eq v4, v0, :cond_24

    .line 31
    if-ne v3, v0, :cond_21

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    move/from16 v23, p6

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    :goto_24
    move/from16 v23, v22

    .line 39
    :goto_26
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageOrientation()I

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    .line 46
    move-result v14

    .line 47
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    .line 50
    move-result v24

    .line 51
    const/high16 v0, -0x80000000

    .line 53
    move/from16 v15, p7

    .line 55
    if-ne v15, v0, :cond_46

    .line 57
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    .line 60
    move-result v9

    .line 61
    move/from16 v13, p8

    .line 63
    if-eqz v9, :cond_43

    .line 65
    move/from16 v25, v3

    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    move/from16 v25, v4

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    move/from16 v13, p8

    .line 73
    move/from16 v25, v15

    .line 75
    :goto_4a
    if-ne v13, v0, :cond_58

    .line 77
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isRotationRequired(I)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_55

    .line 83
    move/from16 v26, v4

    .line 85
    goto :goto_5a

    .line 86
    :cond_55
    move/from16 v26, v3

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    move/from16 v26, v13

    .line 91
    :goto_5a
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 94
    move-result-object v0

    .line 95
    iget-object v12, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 97
    move-object v9, v0

    .line 98
    move-object/from16 v10, p1

    .line 100
    move-object/from16 v11, p10

    .line 102
    move-object/from16 v13, p3

    .line 104
    move v15, v4

    .line 105
    move/from16 v16, v3

    .line 107
    move/from16 v17, v25

    .line 109
    move/from16 v18, v26

    .line 111
    move-object/from16 v19, p2

    .line 113
    invoke-static/range {v9 .. v19}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    .line 116
    move-object/from16 v0, p0

    .line 118
    move v15, v1

    .line 119
    move-object/from16 v1, p1

    .line 121
    move-object v11, v2

    .line 122
    move-object/from16 v2, p4

    .line 124
    move v10, v3

    .line 125
    move/from16 v3, v23

    .line 127
    move v12, v4

    .line 128
    move/from16 v4, v24

    .line 130
    move-object v13, v5

    .line 131
    move-object/from16 v5, p2

    .line 133
    move-object v14, v6

    .line 134
    move/from16 v6, v25

    .line 136
    move/from16 p3, v15

    .line 138
    move-object v15, v7

    .line 139
    move/from16 v7, v26

    .line 141
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateConfig(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    iget v1, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    .line 151
    move-result v1

    .line 152
    const-string v2, "Downsampler"

    .line 154
    if-eqz v1, :cond_123

    .line 156
    if-ltz v12, :cond_a6

    .line 158
    if-ltz v10, :cond_a6

    .line 160
    if-eqz p9, :cond_a6

    .line 162
    move/from16 v4, v25

    .line 164
    move/from16 v5, v26

    .line 166
    goto :goto_11a

    .line 167
    :cond_a6
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_b4

    .line 173
    iget v1, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 175
    int-to-float v1, v1

    .line 176
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 178
    int-to-float v3, v3

    .line 179
    div-float/2addr v1, v3

    .line 180
    goto :goto_b6

    .line 181
    :cond_b4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 183
    :goto_b6
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    int-to-float v4, v12

    .line 186
    int-to-float v5, v3

    .line 187
    div-float/2addr v4, v5

    .line 188
    float-to-double v6, v4

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 192
    move-result-wide v6

    .line 193
    double-to-int v4, v6

    .line 194
    int-to-float v6, v10

    .line 195
    div-float/2addr v6, v5

    .line 196
    float-to-double v5, v6

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 200
    move-result-wide v5

    .line 201
    double-to-int v5, v5

    .line 202
    int-to-float v4, v4

    .line 203
    mul-float/2addr v4, v1

    .line 204
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 207
    move-result v4

    .line 208
    int-to-float v5, v5

    .line 209
    mul-float/2addr v5, v1

    .line 210
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 213
    move-result v5

    .line 214
    const/4 v6, 0x2

    .line 215
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_11a

    .line 221
    const-string v6, "Calculated target ["

    .line 223
    const-string v7, "x"

    .line 225
    const-string v9, "] for source ["

    .line 227
    invoke-static {v6, v4, v7, v5, v9}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v7, "], sampleSize: "

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v3, ", targetDensity: "

    .line 250
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 255
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v3, ", density: "

    .line 260
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 265
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v3, ", density multiplier: "

    .line 270
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_11a
    :goto_11a
    if-lez v4, :cond_123

    .line 285
    if-lez v5, :cond_123

    .line 287
    iget-object v1, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 289
    invoke-static {v14, v1, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 292
    :cond_123
    const/16 v1, 0x1c

    .line 294
    if-lt v0, v1, :cond_147

    .line 296
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 298
    move-object/from16 v1, p5

    .line 300
    if-ne v1, v0, :cond_139

    .line 302
    iget-object v0, v14, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 304
    if-eqz v0, :cond_139

    .line 306
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_139

    .line 312
    const/16 v22, 0x1

    .line 314
    :cond_139
    if-eqz v22, :cond_13e

    .line 316
    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 318
    goto :goto_140

    .line 319
    :cond_13e
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 321
    :goto_140
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 324
    move-result-object v0

    .line 325
    iput-object v0, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 327
    goto :goto_153

    .line 328
    :cond_147
    const/16 v1, 0x1a

    .line 330
    if-lt v0, v1, :cond_153

    .line 332
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 334
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 337
    move-result-object v0

    .line 338
    iput-object v0, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 340
    :cond_153
    :goto_153
    iget-object v0, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 342
    invoke-static {v15, v14, v13, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 345
    move-result-object v0

    .line 346
    iget-object v1, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 348
    invoke-interface {v13, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 351
    const/4 v1, 0x2

    .line 352
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_175

    .line 358
    move v9, v12

    .line 359
    move-object/from16 v12, p2

    .line 361
    move-object v13, v0

    .line 362
    move/from16 v14, p7

    .line 364
    move/from16 v1, p3

    .line 366
    move/from16 v15, p8

    .line 368
    move-wide/from16 v16, v20

    .line 370
    invoke-static/range {v9 .. v17}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    .line 373
    goto :goto_177

    .line 374
    :cond_175
    move/from16 v1, p3

    .line 376
    :goto_177
    const/4 v2, 0x0

    .line 377
    if-eqz v0, :cond_192

    .line 379
    iget-object v2, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 381
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 383
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 386
    iget-object v2, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 388
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_192

    .line 398
    iget-object v1, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 400
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 403
    :cond_192
    return-object v2
.end method

.method private static decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    const-string v0, "Downsampler"

    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    if-nez v1, :cond_c

    .line 7
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    .line 10
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->stopGrowingBuffers()V

    .line 13
    :cond_c
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    :try_start_19
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1d} :catch_27
    .catchall {:try_start_19 .. :try_end_1d} :catchall_25

    .line 30
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    return-object p0

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    goto :goto_50

    .line 40
    :catch_27
    move-exception v4

    .line 41
    :try_start_28
    invoke-static {v4, v1, v2, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_38

    .line 52
    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 54
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_38
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_25

    .line 59
    if-eqz v0, :cond_4f

    .line 61
    :try_start_3c
    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 70
    move-result-object p0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_4e
    .catchall {:try_start_3c .. :try_end_46} :catchall_25

    .line 71
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 78
    return-object p0

    .line 79
    :catch_4e
    :try_start_4e
    throw v1

    .line 80
    :cond_4f
    throw v1
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_25

    .line 81
    :goto_50
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    throw p0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, " ("

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ")"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "["

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "x"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "] "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 3

    .line 1
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 7
    :try_start_6
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 13
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_19

    .line 14
    if-nez v2, :cond_17

    .line 16
    :try_start_f
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 18
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 24
    :cond_17
    monitor-exit v0

    .line 25
    return-object v2

    .line 26
    :catchall_19
    move-exception v2

    .line 27
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    :try_start_1b
    throw v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1
.end method

.method private static getDensityMultiplier(D)I
    .registers 5

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 3
    cmpg-double v2, p0, v0

    .line 5
    if-gtz v2, :cond_7

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    div-double p0, v0, p0

    .line 10
    :goto_9
    const-wide v0, 0x41dfffffffc00000L  # 2.147483647E9

    .line 15
    mul-double/2addr p0, v0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 19
    move-result-wide p0

    .line 20
    long-to-int p0, p0

    .line 21
    return p0
.end method

.method private static getDimensions(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 7
    const/4 p0, 0x0

    .line 8
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    const/4 p2, 0x2

    .line 11
    new-array p2, p2, [I

    .line 13
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    aput p3, p2, p0

    .line 17
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 19
    aput p0, p2, v0

    .line 21
    return-object p2
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static isRotationRequired(I)Z
    .registers 2

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 2

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 3
    if-lez v0, :cond_c

    .line 5
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 7
    if-lez p0, :cond_c

    .line 9
    if-eq v0, p0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .registers 10

    .line 1
    const-string v0, "Decoded "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p4, " from ["

    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, "x"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, "] "

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " with inBitmap "

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string p1, " for ["

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, "], sample size: "

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string p0, ", density: "

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string p0, ", target density: "

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string p0, ", thread: "

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string p0, ", duration: "

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {p7, p8}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 118
    move-result-wide p0

    .line 119
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    const-string p1, "Downsampler"

    .line 128
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .registers 9

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    const-string v1, "Exception decoding bitmap, outWidth: "

    .line 5
    const-string v2, ", outHeight: "

    .line 7
    const-string v3, ", outMimeType: "

    .line 9
    invoke-static {v1, p1, v2, p2, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p2, ", inBitmap: "

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 4
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_6
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    .line 14
    throw p0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 v4, 0x1a

    .line 24
    if-lt v3, v4, :cond_1f

    .line 26
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 28
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 30
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    :cond_1f
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 40
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 42
    return-void
.end method

.method private static round(D)I
    .registers 4

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_10

    .line 7
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 11
    if-ne v0, v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    if-nez v0, :cond_15

    .line 20
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 22
    :cond_15
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method

.method private shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public decode(Landroid/os/ParcelFileDescriptor;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, p1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;-><init>(Ljava/io/InputStream;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/os/ParcelFileDescriptor;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public handles(Ljava/io/InputStream;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
