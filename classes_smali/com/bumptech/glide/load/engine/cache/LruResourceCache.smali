.class public Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
.super Lcom/bumptech/glide/util/LruCache;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache<",
        "Lcom/bumptech/glide/load/Key;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 4
    return-void
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/load/engine/Resource;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_8
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->getSize(Lcom/bumptech/glide/load/engine/Resource;)I

    move-result p1

    return p1
.end method

.method public onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 3
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/Key;

    check-cast p2, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 7
    return-object p1
.end method

.method public bridge synthetic remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 7
    return-object p1
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 3
    return-void
.end method

.method public trimMemory(I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x28

    .line 3
    if-lt p1, v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/util/LruCache;->clearMemory()V

    .line 8
    goto :goto_1a

    .line 9
    :cond_8
    const/16 v0, 0x14

    .line 11
    if-ge p1, v0, :cond_10

    .line 13
    const/16 v0, 0xf

    .line 15
    if-ne p1, v0, :cond_1a

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/bumptech/glide/util/LruCache;->getMaxSize()J

    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x2

    .line 23
    div-long/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method
