.class Lmiuix/core/util/Pools$InstanceHolder;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiuix/core/util/Pools$IInstanceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/Pools$IInstanceHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    .line 6
    new-instance p1, Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {p1, p2, v0, v1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    .line 13
    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 15
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getElementClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->getCapacity()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public declared-synchronized resize(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 4
    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->getCapacity()I

    .line 7
    move-result v0

    .line 8
    add-int/2addr p1, v0

    .line 9
    if-gtz p1, :cond_20

    .line 11
    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    .line 14
    move-result-object p1

    .line 15
    monitor-enter p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_30

    .line 16
    :try_start_f
    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lmiuix/core/util/Pools$InstanceHolder;->getElementClass()Ljava/lang/Class;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1d

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .line 32
    :try_start_1f
    throw v0

    .line 33
    :cond_20
    if-lez p1, :cond_28

    .line 35
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 37
    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->increaseCapacity(I)V

    .line 40
    goto :goto_2e

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    .line 43
    neg-int p1, p1

    .line 44
    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->decreaseCapacity(I)V
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_30

    .line 47
    :goto_2e
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    monitor-exit p0

    .line 51
    throw p1
.end method
