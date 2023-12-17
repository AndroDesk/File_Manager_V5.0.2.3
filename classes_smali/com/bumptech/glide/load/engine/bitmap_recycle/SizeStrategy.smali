.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_MULTIPLE:I = 0x8


# instance fields
.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 11
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;

    .line 20
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 25
    return-void
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_15

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v2

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_23
    return-void
.end method

.method public static getBitmapString(I)Ljava/lang/String;
    .registers 3

    const-string v0, "["

    const-string v1, "]"

    .line 1
    invoke-static {v0, p0, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 1

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 7
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 23
    if-eqz v2, :cond_35

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v3

    .line 29
    if-eq v3, v0, :cond_35

    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v3

    .line 35
    mul-int/lit8 v0, v0, 0x8

    .line 37
    if-gt v3, v0, :cond_35

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 41
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 53
    move-result-object v1

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/graphics/Bitmap;

    .line 62
    if-eqz v0, :cond_45

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 70
    :cond_45
    return-object v0
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

    .line 2
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 7
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 13
    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 18
    iget v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 30
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 32
    iget v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez p1, :cond_29

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    add-int/2addr v2, p1

    .line 47
    :goto_2e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

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
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 22
    :cond_15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SizeStrategy:\n  "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "\n  SortedSizes"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
