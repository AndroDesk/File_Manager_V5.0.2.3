.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final VALUE_COUNT:I = 0x1

.field private static wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final maxSize:J

.field private final safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

.field private final writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 13
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:J

    .line 15
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 17
    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 22
    return-void
.end method

.method public static create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;J)V

    .line 6
    return-object v0
.end method

.method public static declared-synchronized get(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 3
    :cond_e
    sget-object p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 4
    if-nez v0, :cond_10

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 8
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:J

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method private declared-synchronized resetDiskCache()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    .line 9
    :cond_8
    :goto_8
    :try_start_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->resetDiskCache()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_26

    .line 12
    goto :goto_20

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_22

    .line 15
    :catch_e
    move-exception v0

    .line 16
    :try_start_f
    const-string v1, "DiskLruCacheWrapper"

    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_8

    .line 25
    const-string v1, "DiskLruCacheWrapper"

    .line 27
    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_c

    .line 32
    goto :goto_8

    .line 33
    :goto_20
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_22
    :try_start_22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->resetDiskCache()V

    .line 38
    throw v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    :try_start_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    .line 14
    goto :goto_1d

    .line 15
    :catch_e
    move-exception p1

    .line 16
    const/4 v0, 0x5

    .line 17
    const-string v1, "DiskLruCacheWrapper"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    const-string v0, "Unable to delete from disk cache"

    .line 27
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p1, 0x0

    .line 7
    :try_start_2c
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3b} :catch_3c

    goto :goto_49

    :catch_3c
    move-exception v0

    const/4 v2, 0x5

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "Unable to get from disk cache"

    .line 10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    return-object p1
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .registers 7

    .line 1
    const-string v0, "DiskLruCacheWrapper"

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 5
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 11
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->acquire(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x2

    .line 15
    :try_start_e
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_30

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "Put: Obtained: "

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v3, " for for Key: "

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_87

    .line 49
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    .line 56
    move-result-object v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_74
    .catchall {:try_start_30 .. :try_end_38} :catchall_87

    .line 57
    if-eqz v2, :cond_40

    .line 59
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 61
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :cond_40
    :try_start_40
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 68
    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_74
    .catchall {:try_start_40 .. :try_end_44} :catchall_87

    .line 69
    if-eqz p1, :cond_5d

    .line 71
    const/4 v2, 0x0

    .line 72
    :try_start_47
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    .line 75
    move-result-object v2

    .line 76
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_54

    .line 82
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_58

    .line 85
    :cond_54
    :try_start_54
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 88
    goto :goto_81

    .line 89
    :catchall_58
    move-exception p2

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 93
    throw p2

    .line 94
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v2, "Had two simultaneous puts for: "

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_74} :catch_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_87

    .line 117
    :catch_74
    move-exception p1

    .line 118
    const/4 p2, 0x5

    .line 119
    :try_start_76
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_81

    .line 125
    const-string p2, "Unable to put to disk cache"

    .line 127
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_87

    .line 130
    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 132
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 135
    return-void

    .line 136
    :catchall_87
    move-exception p1

    .line 137
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 139
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 142
    throw p1
.end method
