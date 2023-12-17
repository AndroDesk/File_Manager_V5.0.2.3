.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field public static final BACKOFF_RATIO:I = 0x4

.field private static final DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field public static final INITIAL_BACKOFF_MS:J = 0x28L

.field public static final MAX_BACKOFF_MS:J

.field public static final MAX_DURATION_MS:J = 0x20L

.field public static final TAG:Ljava/lang/String; = "PreFillRunner"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private currentDelay:J

.field private final handler:Landroid/os/Handler;

.field private isCancelled:Z

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field private final toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    const-wide/16 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
    .registers 10

    .line 1
    sget-object v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v5, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
    .registers 8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    const-wide/16 v0, 0x28

    .line 6
    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 11
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getFreeMemoryCacheBytes()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 9
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method private getNextDelay()J
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 3
    const-wide/16 v2, 0x4

    .line 5
    mul-long/2addr v2, v0

    .line 6
    sget-wide v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    .line 8
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 14
    return-wide v0
.end method

.method private isGcDetected(J)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr v0, p1

    .line 8
    const-wide/16 p1, 0x20

    .line 10
    cmp-long p1, v0, p1

    .line 12
    if-ltz p1, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    return p1
.end method


# virtual methods
.method public allocate()Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    .line 6
    move-result-wide v0

    .line 7
    :cond_6
    :goto_6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 9
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_ac

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isGcDetected(J)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_ac

    .line 21
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 23
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    .line 29
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_3a

    .line 35
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    .line 37
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 42
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    .line 49
    move-result v5

    .line 50
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    move-result-object v3

    .line 58
    goto :goto_4a

    .line 59
    :cond_3a
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    .line 66
    move-result v4

    .line 67
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 70
    move-result-object v5

    .line 71
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 74
    move-result-object v3

    .line 75
    :goto_4a
    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 78
    move-result v4

    .line 79
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getFreeMemoryCacheBytes()J

    .line 82
    move-result-wide v5

    .line 83
    int-to-long v7, v4

    .line 84
    cmp-long v5, v5, v7

    .line 86
    if-ltz v5, :cond_68

    .line 88
    new-instance v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    .line 90
    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>()V

    .line 93
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 95
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 97
    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v6, v5, v3}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 104
    goto :goto_6d

    .line 105
    :cond_68
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 107
    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 110
    :goto_6d
    const/4 v3, 0x3

    .line 111
    const-string v5, "PreFillRunner"

    .line 113
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 119
    const-string v3, "allocated ["

    .line 121
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    .line 128
    move-result v6

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v6, "x"

    .line 134
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    .line 140
    move-result v6

    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, "] "

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, " size: "

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto/16 :goto_6

    .line 173
    :cond_ac
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    .line 175
    if-nez v0, :cond_ba

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 179
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_ba

    .line 185
    const/4 v0, 0x1

    .line 186
    goto :goto_bb

    .line 187
    :cond_ba
    const/4 v0, 0x0

    .line 188
    :goto_bb
    return v0
.end method

.method public cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    .line 4
    return-void
.end method

.method public run()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getNextDelay()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    :cond_f
    return-void
.end method
