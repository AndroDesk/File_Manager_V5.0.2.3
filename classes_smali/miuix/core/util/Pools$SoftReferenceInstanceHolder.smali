.class Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
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
    name = "SoftReferenceInstanceHolder"
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

.field private volatile mElements:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mIndex:I

.field private volatile mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
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
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 6
    iput p2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 8
    new-array p1, p2, [Ljava/lang/ref/SoftReference;

    .line 10
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 4
    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 6
    :cond_5
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    aget-object v3, v1, v0

    .line 13
    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    aput-object v2, v1, v0

    .line 21
    if-eqz v3, :cond_5

    .line 23
    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 25
    monitor-exit p0

    .line 26
    return-object v3

    .line 27
    :cond_1a
    monitor-exit p0

    .line 28
    return-object v2

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
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
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 3
    return v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 4
    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 6
    iget v2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 8
    const/4 v3, 0x1

    .line 9
    if-lt v0, v2, :cond_27

    .line 11
    const/4 v2, 0x0

    .line 12
    move v4, v2

    .line 13
    :goto_c
    if-ge v4, v0, :cond_25

    .line 15
    aget-object v5, v1, v4

    .line 17
    if-eqz v5, :cond_1c

    .line 19
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_19

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 34
    aput-object v0, v1, v4
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_33

    .line 36
    monitor-exit p0

    .line 37
    return v3

    .line 38
    :cond_25
    monitor-exit p0

    .line 39
    return v2

    .line 40
    :cond_27
    :try_start_27
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 42
    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 45
    aput-object v2, v1, v0

    .line 47
    add-int/2addr v0, v3

    .line 48
    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_33

    .line 50
    monitor-exit p0

    .line 51
    return v3

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public declared-synchronized resize(I)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 4
    add-int/2addr p1, v0

    .line 5
    if-gtz p1, :cond_1c

    .line 7
    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    .line 10
    move-result-object p1

    .line 11
    monitor-enter p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f

    .line 12
    :try_start_b
    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->getElementClass()Ljava/lang/Class;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    :try_start_1b
    throw v0

    .line 29
    :cond_1c
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 31
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 33
    iget v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 35
    array-length v2, v0

    .line 36
    if-le p1, v2, :cond_2d

    .line 38
    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2f

    .line 46
    :cond_2d
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method
