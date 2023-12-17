.class public Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
    }
.end annotation


# instance fields
.field private final digestPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    .line 6
    const-wide/16 v1, 0x3e8

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 13
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$1;

    .line 15
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$1;-><init>(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V

    .line 18
    const/16 v1, 0xa

    .line 20
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Ll0/d;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Ll0/d;

    .line 26
    return-void
.end method

.method private calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    .line 13
    :try_start_c
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    .line 15
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 18
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    .line 20
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;

    .line 27
    move-result-object p1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_21

    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Ll0/d;

    .line 30
    invoke-interface {v1, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 33
    return-object p1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Ll0/d;

    .line 37
    invoke-interface {v1, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 40
    throw p1
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 6
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    .line 13
    if-nez v1, :cond_12

    .line 15
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    :cond_12
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 21
    monitor-enter v2

    .line 22
    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v2

    .line 28
    return-object v1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw p1
.end method
