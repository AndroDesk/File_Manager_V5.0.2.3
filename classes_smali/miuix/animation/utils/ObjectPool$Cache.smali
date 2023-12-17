.class Lmiuix/animation/utils/ObjectPool$Cache;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# instance fields
.field public final mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final pool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final shrinkTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Lmiuix/animation/utils/ObjectPool$Cache$1;

    invoke-direct {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache$1;-><init>(Lmiuix/animation/utils/ObjectPool$Cache;)V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/utils/ObjectPool$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    if-eqz p1, :cond_1c

    .line 25
    invoke-static {p1, p2}, Lmiuix/animation/utils/ObjectPool;->access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public releaseObject(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lmiuix/animation/utils/ObjectPool;->getMainHandler()Landroid/os/Handler;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_35

    .line 31
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 41
    move-result v0

    .line 42
    const/16 v1, 0xa

    .line 44
    if-le v0, v1, :cond_50

    .line 46
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 48
    const-wide/16 v1, 0x1388

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    goto :goto_50

    .line 54
    :cond_35
    const-string p1, "ObjectPool.releaseObject handler is null! looper: "

    .line 56
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    const-string v0, "miuix_anim"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_50
    :goto_50
    return-void
.end method

.method public shrink()V
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 9
    if-le v0, v1, :cond_21

    .line 11
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_21

    .line 20
    :cond_13
    iget-object v1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_0

    .line 34
    :cond_21
    :goto_21
    return-void
.end method
