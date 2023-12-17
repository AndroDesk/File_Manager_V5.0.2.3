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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    iput p2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    new-array p1, p2, [Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

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

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    :cond_5
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v1, v0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v2, v1, v0

    if-eqz v3, :cond_5

    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    monitor-exit p0

    return-object v3

    :cond_1a
    monitor-exit p0

    return-object v2

    :catchall_1c
    move-exception v0

    monitor-exit p0

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

    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    iget v2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_27

    const/4 v2, 0x0

    move v4, v2

    :goto_c
    if-ge v4, v0, :cond_25

    aget-object v5, v1, v4

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, v1, v4
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_33

    monitor-exit p0

    return v3

    :cond_25
    monitor-exit p0

    return v2

    :cond_27
    :try_start_27
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v3

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resize(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    add-int/2addr p1, v0

    if-gtz p1, :cond_1c

    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f

    :try_start_b
    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->getElementClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0

    :cond_1c
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    iget v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    array-length v2, v0

    if-le p1, v2, :cond_2d

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method