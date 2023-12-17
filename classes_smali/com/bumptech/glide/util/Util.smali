.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HASH_ACCUMULATOR:I = 0x11

.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_256_CHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "0123456789abcdef"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    .line 9
    const/16 v0, 0x40

    .line 11
    new-array v0, v0, [C

    .line 13
    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static assertBackgroundThread()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v1, "You must call this method on a background thread"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public static assertMainThread()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v1, "You must call this method on the main thread"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public static bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-nez p0, :cond_8

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    :goto_7
    return p0

    .line 9
    :cond_8
    instance-of v0, p0, Lcom/bumptech/glide/load/model/Model;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    check-cast p0, Lcom/bumptech/glide/load/model/Model;

    .line 15
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/model/Model;->isEquivalentTo(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_8

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    :goto_c
    return p0
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_1d

    .line 5
    aget-byte v1, p0, v0

    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 9
    mul-int/lit8 v2, v0, 0x2

    .line 11
    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    .line 13
    ushr-int/lit8 v4, v1, 0x4

    .line 15
    aget-char v4, v3, v4

    .line 17
    aput-char v4, p1, v2

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    and-int/lit8 v1, v1, 0xf

    .line 23
    aget-char v1, v3, v1

    .line 25
    aput-char v1, p1, v2

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 35
    return-object p0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 6
    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .registers 3

    mul-int/2addr p0, p1

    .line 8
    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 3
    :catch_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    .line 4
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot obtain size for recycled Bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5
    :cond_4
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 13
    const/4 v0, 0x4

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p0, v2, :cond_1e

    .line 18
    if-eq p0, v1, :cond_1c

    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq p0, v2, :cond_1c

    .line 23
    if-eq p0, v0, :cond_19

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    const/16 v0, 0x8

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    move v0, v1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v2

    .line 32
    :goto_1f
    return v0
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-object v0
.end method

.method public static hashCode(F)I
    .registers 2

    const/16 v0, 0x11

    .line 2
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    move-result p0

    return p0
.end method

.method public static hashCode(FI)I
    .registers 2

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(I)I
    .registers 2

    const/16 v0, 0x11

    .line 1
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(II)I
    .registers 2

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p0

    return p1
.end method

.method public static hashCode(Ljava/lang/Object;I)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 4
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(Z)I
    .registers 2

    const/16 v0, 0x11

    .line 6
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result p0

    return p0
.end method

.method public static hashCode(ZI)I
    .registers 2

    .line 5
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static isOnBackgroundThread()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public static isOnMainThread()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private static isValidDimension(I)Z
    .registers 2

    if-gtz p0, :cond_9

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static isValidDimensions(II)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_e

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    .line 12
    throw p0
.end method
