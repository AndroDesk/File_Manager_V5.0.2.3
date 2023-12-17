.class public Landroidx/collection/f;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I

.field private static final CACHE_SIZE:I

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field public static mBaseCache:[Ljava/lang/Object;

.field public static mBaseCacheSize:I

.field public static mTwiceBaseCache:[Ljava/lang/Object;

.field public static mTwiceBaseCacheSize:I


# instance fields
.field public mArray:[Ljava/lang/Object;

.field public mHashes:[I

.field public mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/collection/f;->BASE_SIZE:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/collection/f;->CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/b;->a:[I

    iput-object v0, p0, Landroidx/collection/f;->mHashes:[I

    sget-object v0, La/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/f;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object p1, La/b;->a:[I

    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    sget-object p1, La/b;->c:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/f;->allocArrays(I)V

    :goto_11
    const/4 p1, 0x0

    iput p1, p0, Landroidx/collection/f;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroidx/collection/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/collection/f;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/collection/f;->putAll(Landroidx/collection/f;)V

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const-class v0, Landroidx/collection/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_2c

    monitor-enter v0

    :try_start_a
    sget-object v4, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_27

    iput-object v4, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    sub-int/2addr p1, v3

    sput p1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    monitor-exit v0

    return-void

    :cond_27
    monitor-exit v0

    goto :goto_52

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    const/4 v4, 0x4

    if-ne p1, v4, :cond_52

    monitor-enter v0

    :try_start_30
    sget-object v4, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_4d

    iput-object v4, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Landroidx/collection/f;->mBaseCacheSize:I

    sub-int/2addr p1, v3

    sput p1, Landroidx/collection/f;->mBaseCacheSize:I

    monitor-exit v0

    return-void

    :cond_4d
    monitor-exit v0

    goto :goto_52

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    throw p1

    :cond_52
    :goto_52
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/f;->mHashes:[I

    shl-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static binarySearchHashes([III)I
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, La/b;->h([III)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11

    const-class v0, Landroidx/collection/f;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2e

    monitor-enter v0

    :try_start_e
    sget v1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    sget-object v1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1b
    if-lt p0, v3, :cond_22

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    :cond_22
    sput-object p1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    sget p0, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    :cond_29
    monitor-exit v0

    goto :goto_53

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_53

    monitor-enter v0

    :try_start_33
    sget v1, Landroidx/collection/f;->mBaseCacheSize:I

    if-ge v1, v5, :cond_4e

    sget-object v1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_40
    if-lt p0, v3, :cond_47

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_40

    :cond_47
    sput-object p1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    sget p0, Landroidx/collection/f;->mBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroidx/collection/f;->mBaseCacheSize:I

    :cond_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget v0, p0, Landroidx/collection/f;->mSize:I

    if-lez v0, :cond_16

    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    sget-object v3, La/b;->a:[I

    iput-object v3, p0, Landroidx/collection/f;->mHashes:[I

    sget-object v3, La/b;->c:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Landroidx/collection/f;->mSize:I

    invoke-static {v1, v2, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_16
    iget v0, p0, Landroidx/collection/f;->mSize:I

    if-gtz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public ensureCapacity(I)V
    .registers 7

    iget v0, p0, Landroidx/collection/f;->mSize:I

    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    array-length v2, v1

    if-ge v2, p1, :cond_20

    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/collection/f;->allocArrays(I)V

    iget p1, p0, Landroidx/collection/f;->mSize:I

    if-lez p1, :cond_1d

    iget-object p1, p0, Landroidx/collection/f;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    invoke-static {v1, v2, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_20
    iget p1, p0, Landroidx/collection/f;->mSize:I

    if-ne p1, v0, :cond_25

    return-void

    :cond_25
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    instance-of v2, p1, Landroidx/collection/f;

    if-eqz v2, :cond_3d

    check-cast p1, Landroidx/collection/f;

    invoke-virtual {p0}, Landroidx/collection/f;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    move-result v3

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    move v2, v1

    :goto_17
    iget v3, p0, Landroidx/collection/f;->mSize:I

    if-ge v2, v3, :cond_3c

    invoke-virtual {p0, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_32

    if-nez v5, :cond_31

    invoke-virtual {p1, v3}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_31
    return v1

    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3c
    return v0

    :cond_3d
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_75

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/collection/f;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_4e

    return v1

    :cond_4e
    move v2, v1

    :goto_4f
    iget v3, p0, Landroidx/collection/f;->mSize:I

    if-ge v2, v3, :cond_74

    invoke-virtual {p0, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6a

    if-nez v5, :cond_69

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    :cond_69
    return v1

    :cond_6a
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_6e} :catch_75
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_6e} :catch_75

    if-nez v3, :cond_71

    return v1

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_74
    return v0

    :catch_75
    :cond_75
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_e

    iget-object p2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p2, p2, p1

    :cond_e
    return-object p2
.end method

.method public hashCode()I
    .registers 10

    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/f;->mSize:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_a
    if-ge v5, v2, :cond_1f

    aget-object v7, v1, v3

    aget v8, v0, v5

    if-nez v7, :cond_14

    move v7, v4

    goto :goto_18

    :cond_14
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_18
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_1f
    return v6
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Landroidx/collection/f;->mSize:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroidx/collection/f;->binarySearchHashes([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    iget-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_50

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_50
    not-int p1, v2

    return p1
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/collection/f;->indexOfNull()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/f;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    return p1
.end method

.method public indexOfNull()I
    .registers 6

    iget v0, p0, Landroidx/collection/f;->mSize:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/collection/f;->binarySearchHashes([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    iget-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_45
    not-int v0, v2

    return v0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Landroidx/collection/f;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_15

    move p1, v2

    :goto_a
    if-ge p1, v0, :cond_26

    aget-object v3, v1, p1

    if-nez v3, :cond_12

    shr-int/2addr p1, v2

    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroidx/collection/f;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/f;->mSize:I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroidx/collection/f;->indexOfNull()I

    move-result v2

    move v3, v1

    goto :goto_16

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/collection/f;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_16
    if-ltz v2, :cond_23

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_23
    not-int v2, v2

    iget-object v4, p0, Landroidx/collection/f;->mHashes:[I

    array-length v5, v4

    if-lt v0, v5, :cond_57

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-lt v0, v6, :cond_32

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_35

    :cond_32
    if-lt v0, v5, :cond_35

    move v5, v6

    :cond_35
    :goto_35
    iget-object v6, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v5}, Landroidx/collection/f;->allocArrays(I)V

    iget v5, p0, Landroidx/collection/f;->mSize:I

    if-ne v0, v5, :cond_51

    iget-object v5, p0, Landroidx/collection/f;->mHashes:[I

    array-length v7, v5

    if-lez v7, :cond_4d

    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4d
    invoke-static {v4, v6, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_57

    :cond_51
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_57
    :goto_57
    if-ge v2, v0, :cond_70

    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Landroidx/collection/f;->mSize:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_70
    iget v1, p0, Landroidx/collection/f;->mSize:I

    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8b

    aput v3, v0, v2

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/f;->mSize:I

    const/4 p1, 0x0

    return-object p1

    :cond_8b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public putAll(Landroidx/collection/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/f<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p1, Landroidx/collection/f;->mSize:I

    iget v1, p0, Landroidx/collection/f;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/f;->ensureCapacity(I)V

    iget v1, p0, Landroidx/collection/f;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_22

    if-lez v0, :cond_32

    iget-object v1, p1, Landroidx/collection/f;->mHashes:[I

    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroidx/collection/f;->mSize:I

    goto :goto_32

    :cond_22
    :goto_22
    if-ge v2, v0, :cond_32

    invoke-virtual {p1, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    invoke-virtual {p0, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_14

    if-eqz p2, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    :cond_14
    invoke-virtual {p0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Landroidx/collection/f;->mSize:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_11

    invoke-virtual {p0}, Landroidx/collection/f;->clear()V

    goto :goto_75

    :cond_11
    add-int/lit8 v5, v3, -0x1

    iget-object v6, p0, Landroidx/collection/f;->mHashes:[I

    array-length v7, v6

    const/16 v8, 0x8

    if-le v7, v8, :cond_54

    array-length v7, v6

    div-int/lit8 v7, v7, 0x3

    if-ge v3, v7, :cond_54

    if-le v3, v8, :cond_25

    shr-int/lit8 v7, v3, 0x1

    add-int v8, v3, v7

    :cond_25
    invoke-direct {p0, v8}, Landroidx/collection/f;->allocArrays(I)V

    iget v7, p0, Landroidx/collection/f;->mSize:I

    if-ne v3, v7, :cond_4e

    if-lez p1, :cond_39

    iget-object v7, p0, Landroidx/collection/f;->mHashes:[I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    invoke-static {v0, v8, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    if-ge p1, v5, :cond_6f

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroidx/collection/f;->mHashes:[I

    sub-int v9, v5, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v7, 0x1

    iget-object v6, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v9, 0x1

    invoke-static {v0, p1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6f

    :cond_4e
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_54
    if-ge p1, v5, :cond_65

    add-int/lit8 v0, p1, 0x1

    sub-int v7, v5, p1

    invoke-static {v6, v0, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/2addr v0, v4

    shl-int/lit8 v6, v7, 0x1

    invoke-static {p1, v0, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/2addr v0, v4

    aput-object v1, p1, v0

    :cond_6f
    :goto_6f
    iget p1, p0, Landroidx/collection/f;->mSize:I

    if-ne v3, p1, :cond_76

    iput v5, p0, Landroidx/collection/f;->mSize:I

    :goto_75
    return-object v2

    :cond_76
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Landroidx/collection/f;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    invoke-virtual {p0, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_14

    if-eqz p2, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    :cond_14
    invoke-virtual {p0, p1, p3}, Landroidx/collection/f;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroidx/collection/f;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/collection/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/f;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Landroidx/collection/f;->mSize:I

    if-ge v1, v2, :cond_47

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_47
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method