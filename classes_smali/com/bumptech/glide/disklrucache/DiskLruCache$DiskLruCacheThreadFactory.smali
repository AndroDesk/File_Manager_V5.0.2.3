.class final Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiskLruCacheThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    .line 4
    const-string v1, "glide-disk-lru-cache-thread"

    .line 6
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method
