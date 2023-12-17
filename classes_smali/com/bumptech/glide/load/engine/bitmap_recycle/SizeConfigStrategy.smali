.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final MAX_SIZE_MULTIPLE:I = 0x8

.field private static final RGBA_F16_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    aput-object v1, v0, v3

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v4, 0x1a

    .line 17
    if-lt v1, v4, :cond_1f

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [Landroid/graphics/Bitmap$Config;

    .line 26
    array-length v1, v0

    .line 27
    sub-int/2addr v1, v3

    .line 28
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 30
    aput-object v4, v0, v1

    .line 32
    :cond_1f
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 34
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGBA_F16_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 36
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 38
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 40
    aput-object v1, v0, v2

    .line 42
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 44
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 46
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 48
    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 52
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 56
    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 11
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 25
    return-void
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 15
    if-eqz v1, :cond_28

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p2

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne p2, v2, :cond_1b

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    goto :goto_27

    .line 28
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p2

    .line 32
    sub-int/2addr p2, v2

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p2

    .line 37
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_27
    return-void

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v2, "Tried to decrement empty size, size: "

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, ", removed: "

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string p1, ", this: "

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0
.end method

.method private findBestKey(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v2, :cond_4c

    .line 15
    aget-object v4, v1, v3

    .line 17
    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    .line 20
    move-result-object v5

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v6

    .line 25
    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/Integer;

    .line 31
    if-eqz v5, :cond_49

    .line 33
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v6

    .line 37
    mul-int/lit8 v7, p1, 0x8

    .line 39
    if-gt v6, v7, :cond_49

    .line 41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v1

    .line 45
    if-ne v1, p1, :cond_39

    .line 47
    if-nez v4, :cond_33

    .line 49
    if-eqz p2, :cond_4c

    .line 51
    goto :goto_39

    .line 52
    :cond_33
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_4c

    .line 58
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 60
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 63
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 72
    move-result-object v0

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_c

    .line 77
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public static getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "["

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "]("

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, ")"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_11

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGBA_F16_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 17
    return-object p0

    .line 18
    :cond_11
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    .line 20
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v1

    .line 24
    aget v0, v0, v1

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_34

    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v0, v2, :cond_31

    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq v0, v2, :cond_2e

    .line 35
    const/4 v2, 0x4

    .line 36
    if-eq v0, v2, :cond_2b

    .line 38
    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p0, v0, v1

    .line 43
    return-object v0

    .line 44
    :cond_2b
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 46
    return-object p0

    .line 47
    :cond_2e
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 49
    return-object p0

    .line 50
    :cond_31
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 52
    return-object p0

    .line 53
    :cond_34
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 55
    return-object p0
.end method

.method private getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/NavigableMap;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Ljava/util/TreeMap;

    .line 13
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    return-object v0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->findBestKey(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 11
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/Bitmap;

    .line 17
    if-eqz v1, :cond_1e

    .line 19
    iget v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 28
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 31
    :cond_1e
    return-object v1
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 3
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 4
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 17
    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    .line 27
    move-result-object p1

    .line 28
    iget v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 40
    iget v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-nez v1, :cond_31

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v1

    .line 54
    add-int/2addr v2, v1

    .line 55
    :goto_36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Bitmap;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 22
    :cond_15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "SizeConfigStrategy{groupedMap="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", sortedSizes=("

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3f

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v3, 0x5b

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "], "

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_1a

    .line 64
    :cond_3f
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 66
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_56

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 75
    move-result v1

    .line 76
    add-int/lit8 v1, v1, -0x2

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 81
    move-result v2

    .line 82
    const-string v3, ""

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_56
    const-string v1, ")}"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
