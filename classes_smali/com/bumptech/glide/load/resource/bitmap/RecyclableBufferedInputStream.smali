.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4

    const/high16 v0, 0x10000

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 5
    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 8

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_57

    .line 7
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 9
    sub-int/2addr v3, v0

    .line 10
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 12
    if-lt v3, v4, :cond_e

    .line 14
    goto :goto_57

    .line 15
    :cond_e
    if-nez v0, :cond_36

    .line 17
    array-length v1, p2

    .line 18
    if-le v4, v1, :cond_36

    .line 20
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 22
    array-length v3, p2

    .line 23
    if-ne v1, v3, :cond_36

    .line 25
    array-length v0, p2

    .line 26
    mul-int/lit8 v0, v0, 0x2

    .line 28
    if-le v0, v4, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v4, v0

    .line 32
    :goto_1f
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 34
    const-class v1, [B

    .line 36
    invoke-interface {v0, v4, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, [B

    .line 42
    array-length v1, p2

    .line 43
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 48
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 50
    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 53
    move-object p2, v0

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    if-lez v0, :cond_3d

    .line 57
    array-length v1, p2

    .line 58
    sub-int/2addr v1, v0

    .line 59
    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    :cond_3d
    :goto_3d
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 64
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 66
    sub-int/2addr v0, v1

    .line 67
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 69
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 71
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 73
    array-length v1, p2

    .line 74
    sub-int/2addr v1, v0

    .line 75
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 78
    move-result p1

    .line 79
    iget p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 81
    if-gtz p1, :cond_53

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    add-int/2addr p2, p1

    .line 85
    :goto_54
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 87
    return p1

    .line 88
    :cond_57
    :goto_57
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 91
    move-result p1

    .line 92
    if-lez p1, :cond_63

    .line 94
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 96
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 98
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 100
    :cond_63
    return p1
.end method

.method private static streamClosed()Ljava/io/IOException;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    const-string v1, "BufferedInputStream is closed"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 6
    if-eqz v1, :cond_15

    .line 8
    if-eqz v0, :cond_15

    .line 10
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 12
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 18
    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    .line 19
    add-int/2addr v1, v0

    .line 20
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    .line 25
    move-result-object v0

    .line 26
    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 8
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 10
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 15
    :cond_e
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 17
    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 24
    :cond_17
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 4
    array-length v0, v0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 10
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 12
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 3
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_18

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3e

    if-ne v1, v4, :cond_18

    .line 4
    monitor-exit p0

    return v4

    .line 5
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v1, :cond_26

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_21

    goto :goto_26

    .line 7
    :cond_21
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 8
    :cond_26
    :goto_26
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_37

    add-int/lit8 v1, v2, 0x1

    .line 9
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v0, v0, v2
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_3e

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 10
    :cond_37
    monitor-exit p0

    return v4

    .line 11
    :cond_39
    :try_start_39
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 10

    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_90

    if-eqz v0, :cond_8b

    if-nez p3, :cond_a

    const/4 p1, 0x0

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_86

    .line 15
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_32

    sub-int v4, v3, v2

    if-lt v4, p3, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    sub-int/2addr v3, v2

    .line 16
    :goto_1b
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-eq v3, p3, :cond_30

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_90

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    add-int/2addr p2, v3

    sub-int v2, p3, v3

    goto :goto_33

    .line 19
    :cond_30
    :goto_30
    monitor-exit p0

    return v3

    :cond_32
    move v2, p3

    .line 20
    :goto_33
    :try_start_33
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_48

    array-length v3, v0

    if-lt v2, v3, :cond_48

    .line 21
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_90

    if-ne v3, v4, :cond_76

    if-ne v2, p3, :cond_44

    goto :goto_46

    :cond_44
    sub-int v4, p3, v2

    .line 22
    :goto_46
    monitor-exit p0

    return v4

    .line 23
    :cond_48
    :try_start_48
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_90

    if-ne v3, v4, :cond_55

    if-ne v2, p3, :cond_51

    goto :goto_53

    :cond_51
    sub-int v4, p3, v2

    .line 24
    :goto_53
    monitor-exit p0

    return v4

    .line 25
    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_63

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_5e

    goto :goto_63

    .line 27
    :cond_5e
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 28
    :cond_63
    :goto_63
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v5, v3, v4

    if-lt v5, v2, :cond_6d

    move v3, v2

    goto :goto_6e

    :cond_6d
    sub-int/2addr v3, v4

    .line 29
    :goto_6e
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_76
    .catchall {:try_start_55 .. :try_end_76} :catchall_90

    :cond_76
    sub-int/2addr v2, v3

    if-nez v2, :cond_7b

    .line 31
    monitor-exit p0

    return p3

    .line 32
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_90

    if-nez v4, :cond_84

    sub-int/2addr p3, v2

    .line 33
    monitor-exit p0

    return p3

    :cond_84
    add-int/2addr p2, v3

    goto :goto_33

    .line 34
    :cond_86
    :try_start_86
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 35
    :cond_8b
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 4
    if-eqz v0, :cond_f

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 10
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    :cond_f
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 4
    if-eqz v0, :cond_31

    .line 6
    const/4 v0, -0x1

    .line 7
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 9
    if-eq v0, v1, :cond_e

    .line 11
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_39

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "Mark has been invalidated, pos: "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, " markLimit: "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    :cond_31
    new-instance v0, Ljava/io/IOException;

    .line 52
    const-string v1, "Stream is closed"

    .line 54
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_39

    .line 58
    :catchall_39
    move-exception v0

    .line 59
    monitor-exit p0

    .line 60
    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x1

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-gez v0, :cond_b

    .line 8
    const-wide/16 p1, 0x0

    .line 10
    monitor-exit p0

    .line 11
    return-wide p1

    .line 12
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 14
    if-eqz v0, :cond_68

    .line 16
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 18
    if-eqz v1, :cond_63

    .line 20
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 22
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 24
    sub-int v4, v2, v3

    .line 26
    int-to-long v4, v4

    .line 27
    cmp-long v4, v4, p1

    .line 29
    if-ltz v4, :cond_25

    .line 31
    int-to-long v0, v3

    .line 32
    add-long/2addr v0, p1

    .line 33
    long-to-int v0, v0

    .line 34
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_6d

    .line 36
    monitor-exit p0

    .line 37
    return-wide p1

    .line 38
    :cond_25
    int-to-long v4, v2

    .line 39
    int-to-long v6, v3

    .line 40
    sub-long/2addr v4, v6

    .line 41
    :try_start_28
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 43
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 45
    const/4 v3, -0x1

    .line 46
    if-eq v2, v3, :cond_5b

    .line 48
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 50
    int-to-long v6, v2

    .line 51
    cmp-long v2, p1, v6

    .line 53
    if-gtz v2, :cond_5b

    .line 55
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    .line 58
    move-result v0
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_6d

    .line 59
    if-ne v0, v3, :cond_3e

    .line 61
    monitor-exit p0

    .line 62
    return-wide v4

    .line 63
    :cond_3e
    :try_start_3e
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 65
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 67
    sub-int v2, v0, v1

    .line 69
    int-to-long v2, v2

    .line 70
    sub-long v6, p1, v4

    .line 72
    cmp-long v2, v2, v6

    .line 74
    if-ltz v2, :cond_53

    .line 76
    int-to-long v0, v1

    .line 77
    add-long/2addr v0, p1

    .line 78
    sub-long/2addr v0, v4

    .line 79
    long-to-int v0, v0

    .line 80
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_6d

    .line 82
    monitor-exit p0

    .line 83
    return-wide p1

    .line 84
    :cond_53
    int-to-long p1, v0

    .line 85
    add-long/2addr v4, p1

    .line 86
    int-to-long p1, v1

    .line 87
    sub-long/2addr v4, p1

    .line 88
    :try_start_57
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_6d

    .line 90
    monitor-exit p0

    .line 91
    return-wide v4

    .line 92
    :cond_5b
    sub-long/2addr p1, v4

    .line 93
    :try_start_5c
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 96
    move-result-wide p1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_6d

    .line 97
    add-long/2addr v4, p1

    .line 98
    monitor-exit p0

    .line 99
    return-wide v4

    .line 100
    :cond_63
    :try_start_63
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    .line 103
    move-result-object p1

    .line 104
    throw p1

    .line 105
    :cond_68
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    .line 108
    move-result-object p1

    .line 109
    throw p1
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    move-exception p1

    .line 111
    monitor-exit p0

    .line 112
    throw p1
.end method
