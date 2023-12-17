.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
    }
.end annotation


# instance fields
.field private final cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

.field private final diskCacheSize:J


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:J

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;->getCacheDirectory()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-object v1

    .line 11
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1d

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1c

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1d

    .line 29
    :cond_1c
    return-object v1

    .line 30
    :cond_1d
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:J

    .line 32
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
