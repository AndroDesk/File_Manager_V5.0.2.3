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
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b;->a:[I

    iput-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 3
    sget-object v0, La/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/collection/f;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 6
    sget-object p1, La/b;->a:[I

    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    .line 7
    sget-object p1, La/b;->c:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    goto :goto_11

    .line 8
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/f;->allocArrays(I)V

    :goto_11
    const/4 p1, 0x0

    .line 9
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

    .line 10
    invoke-direct {p0}, Landroidx/collection/f;-><init>()V

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {p0, p1}, Landroidx/collection/f;->putAll(Landroidx/collection/f;)V

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    .line 1
    const-class v0, Landroidx/collection/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/16 v4, 0x8

    .line 8
    if-ne p1, v4, :cond_2c

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v4, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 13
    if-eqz v4, :cond_27

    .line 15
    iput-object v4, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 17
    aget-object p1, v4, v2

    .line 19
    check-cast p1, [Ljava/lang/Object;

    .line 21
    sput-object p1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 23
    aget-object p1, v4, v3

    .line 25
    check-cast p1, [I

    .line 27
    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    .line 29
    aput-object v1, v4, v3

    .line 31
    aput-object v1, v4, v2

    .line 33
    sget p1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    .line 35
    sub-int/2addr p1, v3

    .line 36
    sput p1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    goto :goto_52

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    .line 44
    throw p1

    .line 45
    :cond_2c
    const/4 v4, 0x4

    .line 46
    if-ne p1, v4, :cond_52

    .line 48
    monitor-enter v0

    .line 49
    :try_start_30
    sget-object v4, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    .line 51
    if-eqz v4, :cond_4d

    .line 53
    iput-object v4, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 55
    aget-object p1, v4, v2

    .line 57
    check-cast p1, [Ljava/lang/Object;

    .line 59
    sput-object p1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    .line 61
    aget-object p1, v4, v3

    .line 63
    check-cast p1, [I

    .line 65
    iput-object p1, p0, Landroidx/collection/f;->mHashes:[I

    .line 67
    aput-object v1, v4, v3

    .line 69
    aput-object v1, v4, v2

    .line 71
    sget p1, Landroidx/collection/f;->mBaseCacheSize:I

    .line 73
    sub-int/2addr p1, v3

    .line 74
    sput p1, Landroidx/collection/f;->mBaseCacheSize:I

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :cond_4d
    monitor-exit v0

    .line 79
    goto :goto_52

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    .line 82
    throw p1

    .line 83
    :cond_52
    :goto_52
    new-array v0, p1, [I

    .line 85
    iput-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 87
    shl-int/2addr p1, v3

    .line 88
    new-array p1, p1, [Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private static binarySearchHashes([III)I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, La/b;->h([III)I

    .line 4
    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p0

    .line 6
    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 8
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 11
    throw p0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11

    .line 1
    const-class v0, Landroidx/collection/f;

    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0xa

    .line 9
    const/4 v6, 0x1

    .line 10
    const/16 v7, 0x8

    .line 12
    if-ne v1, v7, :cond_2e

    .line 14
    monitor-enter v0

    .line 15
    :try_start_e
    sget v1, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    .line 17
    if-ge v1, v5, :cond_29

    .line 19
    sget-object v1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 21
    aput-object v1, p1, v4

    .line 23
    aput-object p0, p1, v6

    .line 25
    shl-int/lit8 p0, p2, 0x1

    .line 27
    sub-int/2addr p0, v6

    .line 28
    :goto_1b
    if-lt p0, v3, :cond_22

    .line 30
    aput-object v2, p1, p0

    .line 32
    add-int/lit8 p0, p0, -0x1

    .line 34
    goto :goto_1b

    .line 35
    :cond_22
    sput-object p1, Landroidx/collection/f;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 37
    sget p0, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    .line 39
    add-int/2addr p0, v6

    .line 40
    sput p0, Landroidx/collection/f;->mTwiceBaseCacheSize:I

    .line 42
    :cond_29
    monitor-exit v0

    .line 43
    goto :goto_53

    .line 44
    :catchall_2b
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    .line 46
    throw p0

    .line 47
    :cond_2e
    array-length v1, p0

    .line 48
    const/4 v7, 0x4

    .line 49
    if-ne v1, v7, :cond_53

    .line 51
    monitor-enter v0

    .line 52
    :try_start_33
    sget v1, Landroidx/collection/f;->mBaseCacheSize:I

    .line 54
    if-ge v1, v5, :cond_4e

    .line 56
    sget-object v1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    .line 58
    aput-object v1, p1, v4

    .line 60
    aput-object p0, p1, v6

    .line 62
    shl-int/lit8 p0, p2, 0x1

    .line 64
    sub-int/2addr p0, v6

    .line 65
    :goto_40
    if-lt p0, v3, :cond_47

    .line 67
    aput-object v2, p1, p0

    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 71
    goto :goto_40

    .line 72
    :cond_47
    sput-object p1, Landroidx/collection/f;->mBaseCache:[Ljava/lang/Object;

    .line 74
    sget p0, Landroidx/collection/f;->mBaseCacheSize:I

    .line 76
    add-int/2addr p0, v6

    .line 77
    sput p0, Landroidx/collection/f;->mBaseCacheSize:I

    .line 79
    :cond_4e
    monitor-exit v0

    .line 80
    goto :goto_53

    .line 81
    :catchall_50
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    .line 83
    throw p0

    .line 84
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    if-lez v0, :cond_16

    .line 5
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    .line 7
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 9
    sget-object v3, La/b;->a:[I

    .line 11
    iput-object v3, p0, Landroidx/collection/f;->mHashes:[I

    .line 13
    sget-object v3, La/b;->c:[Ljava/lang/Object;

    .line 15
    iput-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p0, Landroidx/collection/f;->mSize:I

    .line 20
    invoke-static {v1, v2, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    .line 23
    :cond_16
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 25
    if-gtz v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 30
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 33
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfValue(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public ensureCapacity(I)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    .line 5
    array-length v2, v1

    .line 6
    if-ge v2, p1, :cond_20

    .line 8
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p1}, Landroidx/collection/f;->allocArrays(I)V

    .line 13
    iget p1, p0, Landroidx/collection/f;->mSize:I

    .line 15
    if-lez p1, :cond_1d

    .line 17
    iget-object p1, p0, Landroidx/collection/f;->mHashes:[I

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 25
    shl-int/lit8 v4, v0, 0x1

    .line 27
    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_1d
    invoke-static {v1, v2, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    .line 33
    :cond_20
    iget p1, p0, Landroidx/collection/f;->mSize:I

    .line 35
    if-ne p1, v0, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 40
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 43
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    :try_start_5
    instance-of v2, p1, Landroidx/collection/f;

    .line 8
    if-eqz v2, :cond_3d

    .line 10
    check-cast p1, Landroidx/collection/f;

    .line 12
    invoke-virtual {p0}, Landroidx/collection/f;->size()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    .line 19
    move-result v3

    .line 20
    if-eq v2, v3, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    move v2, v1

    .line 24
    :goto_17
    iget v3, p0, Landroidx/collection/f;->mSize:I

    .line 26
    if-ge v2, v3, :cond_3c

    .line 28
    invoke-virtual {p0, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    if-nez v4, :cond_32

    .line 42
    if-nez v5, :cond_31

    .line 44
    invoke-virtual {p1, v3}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_39

    .line 50
    :cond_31
    return v1

    .line 51
    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_39

    .line 57
    return v1

    .line 58
    :cond_39
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_17

    .line 61
    :cond_3c
    return v0

    .line 62
    :cond_3d
    instance-of v2, p1, Ljava/util/Map;

    .line 64
    if-eqz v2, :cond_75

    .line 66
    check-cast p1, Ljava/util/Map;

    .line 68
    invoke-virtual {p0}, Landroidx/collection/f;->size()I

    .line 71
    move-result v2

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 75
    move-result v3

    .line 76
    if-eq v2, v3, :cond_4e

    .line 78
    return v1

    .line 79
    :cond_4e
    move v2, v1

    .line 80
    :goto_4f
    iget v3, p0, Landroidx/collection/f;->mSize:I

    .line 82
    if-ge v2, v3, :cond_74

    .line 84
    invoke-virtual {p0, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p0, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    if-nez v4, :cond_6a

    .line 98
    if-nez v5, :cond_69

    .line 100
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_71

    .line 106
    :cond_69
    return v1

    .line 107
    :cond_6a
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v3
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_6e} :catch_75
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_6e} :catch_75

    .line 111
    if-nez v3, :cond_71

    .line 113
    return v1

    .line 114
    :cond_71
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_4f

    .line 117
    :cond_74
    return v0

    .line 118
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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/collection/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
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

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_e

    .line 7
    iget-object p2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 9
    shl-int/lit8 p1, p1, 0x1

    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 13
    aget-object p2, p2, p1

    .line 15
    :cond_e
    return-object p2
.end method

.method public hashCode()I
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 3
    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 5
    iget v2, p0, Landroidx/collection/f;->mSize:I

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    :goto_a
    if-ge v5, v2, :cond_1f

    .line 13
    aget-object v7, v1, v3

    .line 15
    aget v8, v0, v5

    .line 17
    if-nez v7, :cond_14

    .line 19
    move v7, v4

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result v7

    .line 25
    :goto_18
    xor-int/2addr v7, v8

    .line 26
    add-int/2addr v6, v7

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 29
    add-int/lit8 v3, v3, 0x2

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    return v6
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .registers 8

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_6
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    .line 9
    invoke-static {v1, v0, p2}, Landroidx/collection/f;->binarySearchHashes([III)I

    .line 12
    move-result v1

    .line 13
    if-gez v1, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 18
    shl-int/lit8 v3, v1, 0x1

    .line 20
    aget-object v2, v2, v3

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1c

    .line 28
    return v1

    .line 29
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    .line 31
    :goto_1e
    if-ge v2, v0, :cond_36

    .line 33
    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    .line 35
    aget v3, v3, v2

    .line 37
    if-ne v3, p2, :cond_36

    .line 39
    iget-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 41
    shl-int/lit8 v4, v2, 0x1

    .line 43
    aget-object v3, v3, v4

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_33

    .line 51
    return v2

    .line 52
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_1e

    .line 55
    :cond_36
    add-int/lit8 v1, v1, -0x1

    .line 57
    :goto_38
    if-ltz v1, :cond_50

    .line 59
    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 61
    aget v0, v0, v1

    .line 63
    if-ne v0, p2, :cond_50

    .line 65
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 67
    shl-int/lit8 v3, v1, 0x1

    .line 69
    aget-object v0, v0, v3

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4d

    .line 77
    return v1

    .line 78
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    .line 80
    goto :goto_38

    .line 81
    :cond_50
    not-int p1, v2

    .line 82
    return p1
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0}, Landroidx/collection/f;->indexOfNull()I

    .line 6
    move-result p1

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/collection/f;->indexOf(Ljava/lang/Object;I)I

    .line 15
    move-result p1

    .line 16
    :goto_f
    return p1
.end method

.method public indexOfNull()I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_6
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v0, v2}, Landroidx/collection/f;->binarySearchHashes([III)I

    .line 13
    move-result v1

    .line 14
    if-gez v1, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 19
    shl-int/lit8 v3, v1, 0x1

    .line 21
    aget-object v2, v2, v3

    .line 23
    if-nez v2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    add-int/lit8 v2, v1, 0x1

    .line 28
    :goto_1b
    if-ge v2, v0, :cond_2f

    .line 30
    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    .line 32
    aget v3, v3, v2

    .line 34
    if-nez v3, :cond_2f

    .line 36
    iget-object v3, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 38
    shl-int/lit8 v4, v2, 0x1

    .line 40
    aget-object v3, v3, v4

    .line 42
    if-nez v3, :cond_2c

    .line 44
    return v2

    .line 45
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_1b

    .line 48
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    .line 50
    :goto_31
    if-ltz v1, :cond_45

    .line 52
    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 54
    aget v0, v0, v1

    .line 56
    if-nez v0, :cond_45

    .line 58
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 60
    shl-int/lit8 v3, v1, 0x1

    .line 62
    aget-object v0, v0, v3

    .line 64
    if-nez v0, :cond_42

    .line 66
    return v1

    .line 67
    :cond_42
    add-int/lit8 v1, v1, -0x1

    .line 69
    goto :goto_31

    .line 70
    :cond_45
    not-int v0, v2

    .line 71
    return v0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 7

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 5
    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_15

    .line 10
    move p1, v2

    .line 11
    :goto_a
    if-ge p1, v0, :cond_26

    .line 13
    aget-object v3, v1, p1

    .line 15
    if-nez v3, :cond_12

    .line 17
    shr-int/2addr p1, v2

    .line 18
    return p1

    .line 19
    :cond_12
    add-int/lit8 p1, p1, 0x2

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    move v3, v2

    .line 23
    :goto_16
    if-ge v3, v0, :cond_26

    .line 25
    aget-object v4, v1, v3

    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_23

    .line 33
    shr-int/lit8 p1, v3, 0x1

    .line 35
    return p1

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x2

    .line 38
    goto :goto_16

    .line 39
    :cond_26
    const/4 p1, -0x1

    .line 40
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    if-gtz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
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

    .line 1
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 5
    aget-object p1, v0, p1

    .line 7
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_b

    .line 6
    invoke-virtual {p0}, Landroidx/collection/f;->indexOfNull()I

    .line 9
    move-result v2

    .line 10
    move v3, v1

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0, p1, v2}, Landroidx/collection/f;->indexOf(Ljava/lang/Object;I)I

    .line 19
    move-result v3

    .line 20
    move v8, v3

    .line 21
    move v3, v2

    .line 22
    move v2, v8

    .line 23
    :goto_16
    if-ltz v2, :cond_23

    .line 25
    shl-int/lit8 p1, v2, 0x1

    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 29
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 31
    aget-object v1, v0, p1

    .line 33
    aput-object p2, v0, p1

    .line 35
    return-object v1

    .line 36
    :cond_23
    not-int v2, v2

    .line 37
    iget-object v4, p0, Landroidx/collection/f;->mHashes:[I

    .line 39
    array-length v5, v4

    .line 40
    if-lt v0, v5, :cond_57

    .line 42
    const/4 v5, 0x4

    .line 43
    const/16 v6, 0x8

    .line 45
    if-lt v0, v6, :cond_32

    .line 47
    shr-int/lit8 v5, v0, 0x1

    .line 49
    add-int/2addr v5, v0

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    if-lt v0, v5, :cond_35

    .line 53
    move v5, v6

    .line 54
    :cond_35
    :goto_35
    iget-object v6, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 56
    invoke-direct {p0, v5}, Landroidx/collection/f;->allocArrays(I)V

    .line 59
    iget v5, p0, Landroidx/collection/f;->mSize:I

    .line 61
    if-ne v0, v5, :cond_51

    .line 63
    iget-object v5, p0, Landroidx/collection/f;->mHashes:[I

    .line 65
    array-length v7, v5

    .line 66
    if-lez v7, :cond_4d

    .line 68
    array-length v7, v4

    .line 69
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v5, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 74
    array-length v7, v6

    .line 75
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    :cond_4d
    invoke-static {v4, v6, v0}, Landroidx/collection/f;->freeArrays([I[Ljava/lang/Object;I)V

    .line 81
    goto :goto_57

    .line 82
    :cond_51
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 84
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 87
    throw p1

    .line 88
    :cond_57
    :goto_57
    if-ge v2, v0, :cond_70

    .line 90
    iget-object v1, p0, Landroidx/collection/f;->mHashes:[I

    .line 92
    add-int/lit8 v4, v2, 0x1

    .line 94
    sub-int v5, v0, v2

    .line 96
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 101
    shl-int/lit8 v5, v2, 0x1

    .line 103
    shl-int/lit8 v4, v4, 0x1

    .line 105
    iget v6, p0, Landroidx/collection/f;->mSize:I

    .line 107
    sub-int/2addr v6, v2

    .line 108
    shl-int/lit8 v6, v6, 0x1

    .line 110
    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_70
    iget v1, p0, Landroidx/collection/f;->mSize:I

    .line 115
    if-ne v0, v1, :cond_8b

    .line 117
    iget-object v0, p0, Landroidx/collection/f;->mHashes:[I

    .line 119
    array-length v4, v0

    .line 120
    if-ge v2, v4, :cond_8b

    .line 122
    aput v3, v0, v2

    .line 124
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 126
    shl-int/lit8 v2, v2, 0x1

    .line 128
    aput-object p1, v0, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 132
    aput-object p2, v0, v2

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 136
    iput v1, p0, Landroidx/collection/f;->mSize:I

    .line 138
    const/4 p1, 0x0

    .line 139
    return-object p1

    .line 140
    :cond_8b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 142
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 145
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

    .line 1
    iget v0, p1, Landroidx/collection/f;->mSize:I

    .line 3
    iget v1, p0, Landroidx/collection/f;->mSize:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Landroidx/collection/f;->ensureCapacity(I)V

    .line 9
    iget v1, p0, Landroidx/collection/f;->mSize:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_22

    .line 14
    if-lez v0, :cond_32

    .line 16
    iget-object v1, p1, Landroidx/collection/f;->mHashes:[I

    .line 18
    iget-object v3, p0, Landroidx/collection/f;->mHashes:[I

    .line 20
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object p1, p1, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 27
    shl-int/lit8 v3, v0, 0x1

    .line 29
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput v0, p0, Landroidx/collection/f;->mSize:I

    .line 34
    goto :goto_32

    .line 35
    :cond_22
    :goto_22
    if-ge v2, v0, :cond_32

    .line 37
    invoke-virtual {p1, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0, v1, v3}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_22

    .line 51
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

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
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

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_14

    if-eqz p2, :cond_19

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 6
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

    .line 1
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 3
    shl-int/lit8 v1, p1, 0x1

    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 7
    aget-object v2, v0, v2

    .line 9
    iget v3, p0, Landroidx/collection/f;->mSize:I

    .line 11
    const/4 v4, 0x1

    .line 12
    if-gt v3, v4, :cond_11

    .line 14
    invoke-virtual {p0}, Landroidx/collection/f;->clear()V

    .line 17
    goto :goto_75

    .line 18
    :cond_11
    add-int/lit8 v5, v3, -0x1

    .line 20
    iget-object v6, p0, Landroidx/collection/f;->mHashes:[I

    .line 22
    array-length v7, v6

    .line 23
    const/16 v8, 0x8

    .line 25
    if-le v7, v8, :cond_54

    .line 27
    array-length v7, v6

    .line 28
    div-int/lit8 v7, v7, 0x3

    .line 30
    if-ge v3, v7, :cond_54

    .line 32
    if-le v3, v8, :cond_25

    .line 34
    shr-int/lit8 v7, v3, 0x1

    .line 36
    add-int v8, v3, v7

    .line 38
    :cond_25
    invoke-direct {p0, v8}, Landroidx/collection/f;->allocArrays(I)V

    .line 41
    iget v7, p0, Landroidx/collection/f;->mSize:I

    .line 43
    if-ne v3, v7, :cond_4e

    .line 45
    if-lez p1, :cond_39

    .line 47
    iget-object v7, p0, Landroidx/collection/f;->mHashes:[I

    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-static {v6, v8, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v7, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 55
    invoke-static {v0, v8, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :cond_39
    if-ge p1, v5, :cond_6f

    .line 60
    add-int/lit8 v7, p1, 0x1

    .line 62
    iget-object v8, p0, Landroidx/collection/f;->mHashes:[I

    .line 64
    sub-int v9, v5, p1

    .line 66
    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    shl-int/lit8 p1, v7, 0x1

    .line 71
    iget-object v6, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 73
    shl-int/lit8 v4, v9, 0x1

    .line 75
    invoke-static {v0, p1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    goto :goto_6f

    .line 79
    :cond_4e
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 81
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 84
    throw p1

    .line 85
    :cond_54
    if-ge p1, v5, :cond_65

    .line 87
    add-int/lit8 v0, p1, 0x1

    .line 89
    sub-int v7, v5, p1

    .line 91
    invoke-static {v6, v0, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 96
    shl-int/2addr v0, v4

    .line 97
    shl-int/lit8 v6, v7, 0x1

    .line 99
    invoke-static {p1, v0, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_65
    iget-object p1, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 104
    shl-int/lit8 v0, v5, 0x1

    .line 106
    const/4 v1, 0x0

    .line 107
    aput-object v1, p1, v0

    .line 109
    add-int/2addr v0, v4

    .line 110
    aput-object v1, p1, v0

    .line 112
    :cond_6f
    :goto_6f
    iget p1, p0, Landroidx/collection/f;->mSize:I

    .line 114
    if-ne v3, p1, :cond_76

    .line 116
    iput v5, p0, Landroidx/collection/f;->mSize:I

    .line 118
    :goto_75
    return-object v2

    .line 119
    :cond_76
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 121
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 124
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 2
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

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_14

    if-eqz p2, :cond_19

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 6
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

    .line 1
    shl-int/lit8 p1, p1, 0x1

    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 7
    aget-object v1, v0, p1

    .line 9
    aput-object p2, v0, p1

    .line 11
    return-object v1
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/collection/f;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "{}"

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Landroidx/collection/f;->mSize:I

    .line 14
    mul-int/lit8 v1, v1, 0x1c

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    const/16 v1, 0x7b

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    iget v2, p0, Landroidx/collection/f;->mSize:I

    .line 27
    if-ge v1, v2, :cond_47

    .line 29
    if-lez v1, :cond_23

    .line 31
    const-string v2, ", "

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "(this Map)"

    .line 42
    if-eq v2, p0, :cond_2f

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_32
    const/16 v2, 0x3d

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    if-eq v2, p0, :cond_41

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_44
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_18

    .line 72
    :cond_47
    const/16 v1, 0x7d

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-object p1, v0, p1

    .line 9
    return-object p1
.end method
