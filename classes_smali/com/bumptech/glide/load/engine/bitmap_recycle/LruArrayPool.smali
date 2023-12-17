.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x400000

.field public static final MAX_OVER_SIZE_MULTIPLE:I = 0x8

.field private static final SINGLE_ARRAY_MAX_SIZE_DIVISOR:I = 0x2


# instance fields
.field private final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
            "*>;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

.field private final maxSize:I

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 6
    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    .line 12
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    return-void
.end method

.method private decrementArrayOfSize(ILjava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 15
    if-eqz v0, :cond_30

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_1f

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_2f

    .line 32
    :cond_1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, v2

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_2f
    return-void

    .line 49
    :cond_30
    new-instance p2, Ljava/lang/NullPointerException;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "Tried to decrement empty size, size: "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string p1, ", this: "

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p2
.end method

.method private evict()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V

    .line 6
    return-void
.end method

.method private evictToSize(I)V
    .registers 7

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 3
    if-le v0, p1, :cond_4e

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromObject(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 17
    move-result-object v1

    .line 18
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 20
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    .line 23
    move-result v3

    .line 24
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    .line 27
    move-result v4

    .line 28
    mul-int/2addr v3, v4

    .line 29
    sub-int/2addr v2, v3

    .line 30
    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 32
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->decrementArrayOfSize(ILjava/lang/Class;)V

    .line 43
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    const-string v3, "evicted: "

    .line 60
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    .line 67
    move-result v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_0

    .line 79
    :cond_4e
    return-void
.end method

.method private getAdapterFromObject(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 9
    if-nez v0, :cond_42

    .line 11
    const-class v0, [I

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_18

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;

    .line 21
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;-><init>()V

    .line 24
    goto :goto_25

    .line 25
    :cond_18
    const-class v0, [B

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2b

    .line 33
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;

    .line 35
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;-><init>()V

    .line 38
    :goto_25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    .line 40
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_42

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string v1, "No array pool found for: "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    :cond_42
    :goto_42
    return-object v0
.end method

.method private getArrayForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private getForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getArrayForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1f

    .line 11
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 13
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    .line 16
    move-result v3

    .line 17
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    .line 20
    move-result v4

    .line 21
    mul-int/2addr v3, v4

    .line 22
    sub-int/2addr v2, v3

    .line 23
    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 25
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    .line 28
    move-result v2

    .line 29
    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->decrementArrayOfSize(ILjava/lang/Class;)V

    .line 32
    :cond_1f
    if-nez v1, :cond_4d

    .line 34
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_47

    .line 45
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    const-string v1, "Allocated "

    .line 51
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v1

    .line 55
    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " bytes"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_47
    iget p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    .line 74
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->newArray(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    :cond_4d
    return-object v1
.end method

.method private getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    return-object v0
.end method

.method private isNoMoreThanHalfFull()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 7
    div-int/2addr v1, v0

    .line 8
    const/4 v0, 0x2

    .line 9
    if-lt v1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private isSmallEnoughForReuse(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 5
    if-gt p1, v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method private mayFillRequest(ILjava/lang/Integer;)Z
    .registers 4

    .line 1
    if-eqz p2, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->isNoMoreThanHalfFull()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p2

    .line 13
    mul-int/lit8 p1, p1, 0x8

    .line 15
    if-gt p2, p1, :cond_12

    .line 17
    :cond_10
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method


# virtual methods
.method public declared-synchronized clearMemory()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public declared-synchronized get(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->mayFillRequest(ILjava/lang/Integer;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_20

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_26

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    .line 38
    move-result-object p1

    .line 39
    :goto_26
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 43
    monitor-exit p0

    .line 44
    return-object p1

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public getCurrentSize()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_55

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Class;

    .line 24
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 26
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/NavigableMap;

    .line 32
    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v3

    .line 40
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_b

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/Integer;

    .line 52
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v6

    .line 60
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 62
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/util/NavigableMap;

    .line 68
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v4

    .line 78
    mul-int/2addr v4, v6

    .line 79
    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    .line 82
    move-result v5

    .line 83
    mul-int/2addr v4, v5

    .line 84
    add-int/2addr v1, v4

    .line 85
    goto :goto_27

    .line 86
    :cond_55
    return v1
.end method

.method public declared-synchronized getExact(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    move-result-object v1

    .line 4
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v2

    .line 5
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    move-result v1

    mul-int/2addr v1, v2

    .line 6
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->isSmallEnoughForReuse(I)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_55

    if-nez v3, :cond_1a

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-virtual {v3, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3, v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 11
    iget v0, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 12
    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_3f

    goto :goto_44

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    :goto_44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evict()V
    :try_end_53
    .catchall {:try_start_1a .. :try_end_53} :catchall_55

    .line 15
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized trimMemory(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x28

    .line 4
    if-lt p1, v0, :cond_b

    .line 6
    :try_start_5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->clearMemory()V

    .line 9
    goto :goto_1a

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    goto :goto_1c

    .line 12
    :cond_b
    const/16 v0, 0x14

    .line 14
    if-ge p1, v0, :cond_13

    .line 16
    const/16 v0, 0xf

    .line 18
    if-ne p1, v0, :cond_1a

    .line 20
    :cond_13
    iget p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 22
    div-int/lit8 p1, p1, 0x2

    .line 24
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_9

    .line 27
    :cond_1a
    :goto_1a
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1c
    monitor-exit p0

    .line 30
    throw p1
.end method
