.class public Lmiuix/core/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"

# interfaces
.implements Lmiuix/core/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/concurrent/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile mAdditional:I

.field private final mAllowExtendCapacity:Z

.field private final mAutoReleaseCapacity:Z

.field private mCapacity:I

.field private volatile mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(IZZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 6
    iput-boolean p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 8
    iput-boolean p3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 10
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p2, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    .line 31
    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 33
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 35
    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 37
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 39
    :goto_26
    if-ge p3, p1, :cond_33

    .line 41
    new-instance v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 43
    invoke-direct {v1, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    .line 46
    iput-object v1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 48
    add-int/lit8 p3, p3, 0x1

    .line 50
    move-object p2, v1

    .line 51
    goto :goto_26

    .line 52
    :cond_33
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 54
    iput-object p1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 56
    return-void
.end method


# virtual methods
.method public clear()I
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2a

    .line 9
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_2a

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 22
    move v1, v2

    .line 23
    :goto_16
    iget-object v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 25
    if-eq v0, v3, :cond_22

    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    iget-object v0, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 34
    goto :goto_16

    .line 35
    :cond_22
    iput-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 37
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    return v1

    .line 43
    :cond_2a
    :goto_2a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 46
    goto :goto_0
.end method

.method public decreaseCapacity(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 3
    if-eqz v0, :cond_2b

    .line 5
    if-gtz p1, :cond_7

    .line 7
    goto :goto_2b

    .line 8
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_27

    .line 16
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1a

    .line 26
    goto :goto_27

    .line 27
    :cond_1a
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 29
    sub-int/2addr v0, p1

    .line 30
    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 32
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 34
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 39
    return-void

    .line 40
    :cond_27
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 43
    goto :goto_7

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_30

    .line 9
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_30

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 22
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v4, v3

    .line 26
    :goto_19
    if-nez v4, :cond_26

    .line 28
    if-eq v0, v1, :cond_26

    .line 30
    iget-object v4, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 32
    iput-object v3, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 36
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 38
    goto :goto_19

    .line 39
    :cond_26
    if-eqz v4, :cond_2a

    .line 41
    iput-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 48
    return-object v4

    .line 49
    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 52
    goto :goto_0
.end method

.method public getCapacity()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 3
    iget v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 5
    if-lez v0, :cond_7

    .line 7
    add-int/2addr v1, v0

    .line 8
    :cond_7
    return v1
.end method

.method public increaseCapacity(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 3
    if-nez v0, :cond_2c

    .line 5
    if-gtz p1, :cond_7

    .line 7
    goto :goto_2c

    .line 8
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_28

    .line 16
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1a

    .line 26
    goto :goto_28

    .line 27
    :cond_1a
    neg-int v0, p1

    .line 28
    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 30
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 32
    add-int/2addr v0, p1

    .line 33
    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 35
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 40
    return-void

    .line 41
    :cond_28
    :goto_28
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 44
    goto :goto_7

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 3
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_59

    .line 13
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_16

    .line 22
    goto :goto_59

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 25
    iget-object v2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 27
    iget v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 29
    iget-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v4, v1, :cond_37

    .line 34
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 36
    iget-object p1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 38
    if-eq p1, v1, :cond_32

    .line 40
    iget-boolean v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 42
    if-eqz v1, :cond_32

    .line 44
    if-lez v3, :cond_32

    .line 46
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 48
    sub-int/2addr v3, v5

    .line 49
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 51
    :cond_32
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 53
    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 55
    goto :goto_53

    .line 56
    :cond_37
    iget-boolean v4, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 58
    if-nez v4, :cond_40

    .line 60
    if-gez v3, :cond_3e

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    move v5, v0

    .line 64
    goto :goto_53

    .line 65
    :cond_40
    :goto_40
    new-instance v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-direct {v4, v6}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    .line 71
    iput-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 73
    iput-object v1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 75
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 77
    add-int/2addr v3, v5

    .line 78
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 80
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 82
    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 84
    :goto_53
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    return v5

    .line 90
    :cond_59
    :goto_59
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 93
    goto :goto_4
.end method

.method public remove(Lmiuix/core/util/concurrent/Queue$Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/concurrent/Queue$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 8
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3a

    .line 9
    :cond_16
    :try_start_16
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    move v2, v0

    :goto_19
    iget-object v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v3, :cond_2d

    .line 10
    iget-object v3, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiuix/core/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    .line 11
    iput-object v3, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 12
    :cond_2a
    iget-object v1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_33

    goto :goto_19

    .line 13
    :cond_2d
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :catchall_33
    move-exception p1

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    throw p1

    .line 15
    :cond_3a
    :goto_3a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_33

    .line 2
    :cond_16
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    :goto_18
    iget-object v2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v2, :cond_2c

    .line 3
    iget-object v2, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p1, 0x0

    .line 4
    iput-object p1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_2d

    .line 5
    :cond_29
    iget-object v1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_18

    :cond_2c
    move p1, v0

    .line 6
    :goto_2d
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1

    .line 7
    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
.end method
