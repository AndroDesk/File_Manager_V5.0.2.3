.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private currentSize:J

.field private final initialMaxSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    const/16 v1, 0x64

    .line 8
    const/high16 v2, 0x3f400000  # 0.75f

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 16
    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:J

    .line 18
    iput-wide p1, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 20
    return-void
.end method

.method private evict()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    .line 6
    return-void
.end method


# virtual methods
.method public clearMemory()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    .line 6
    return-void
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized getCurrentSize()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    .line 5
    move-result v0

    .line 6
    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 9
    cmp-long v2, v0, v2

    .line 11
    if-ltz v2, :cond_12

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_39

    .line 16
    const/4 p1, 0x0

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :cond_12
    if-eqz p2, :cond_19

    .line 21
    :try_start_14
    iget-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 28
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_34

    .line 34
    iget-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 36
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    .line 39
    move-result v3

    .line 40
    int-to-long v3, v3

    .line 41
    sub-long/2addr v1, v3

    .line 42
    iput-wide v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_34

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    :cond_34
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_39

    .line 56
    monitor-exit p0

    .line 57
    return-object v0

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_13

    .line 10
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 12
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    .line 15
    move-result v2

    .line 16
    int-to-long v2, v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 20
    :cond_13
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpg-float v0, p1, v0

    .line 5
    if-ltz v0, :cond_18

    .line 7
    :try_start_6
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:J

    .line 9
    long-to-float v0, v0

    .line 10
    mul-float/2addr v0, p1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    move-result p1

    .line 15
    int-to-long v0, p1

    .line 16
    iput-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:J

    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v0, "Multiplier must be >= 0"

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_16

    .line 33
    :goto_20
    monitor-exit p0

    .line 34
    throw p1
.end method

.method public declared-synchronized trimToSize(J)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 4
    cmp-long v0, v0, p1

    .line 6
    if-lez v0, :cond_30

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    iget-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 30
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    .line 33
    move-result v5

    .line 34
    int-to-long v5, v5

    .line 35
    sub-long/2addr v3, v5

    .line 36
    iput-wide v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:J

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_32

    .line 48
    goto :goto_1

    .line 49
    :cond_30
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method
