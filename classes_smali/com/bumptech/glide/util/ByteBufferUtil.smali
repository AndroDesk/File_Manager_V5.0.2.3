.class public final Lcom/bumptech/glide/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;,
        Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    }
.end annotation


# static fields
.field private static final BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final BUFFER_SIZE:I = 0x4000


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 5
    move-result-wide v5

    .line 6
    const-wide/32 v1, 0x7fffffff

    .line 9
    cmp-long v1, v5, v1

    .line 11
    if-gtz v1, :cond_3b

    .line 13
    const-wide/16 v1, 0x0

    .line 15
    cmp-long v1, v5, v1

    .line 17
    if-eqz v1, :cond_33

    .line 19
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 21
    const-string v1, "r"

    .line 23
    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_43

    .line 26
    :try_start_19
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 32
    const-wide/16 v3, 0x0

    .line 34
    move-object v1, v0

    .line 35
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 42
    move-result-object p0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_31

    .line 43
    :try_start_2a
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2d

    .line 46
    :catch_2d
    :try_start_2d
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_30

    .line 49
    :catch_30
    return-object p0

    .line 50
    :catchall_31
    move-exception p0

    .line 51
    goto :goto_45

    .line 52
    :cond_33
    :try_start_33
    new-instance p0, Ljava/io/IOException;

    .line 54
    const-string v1, "File unsuitable for memory mapping"

    .line 56
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    :cond_3b
    new-instance p0, Ljava/io/IOException;

    .line 62
    const-string v1, "File too large to map into memory"

    .line 64
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    move-object v7, v0

    .line 70
    :goto_45
    if-eqz v0, :cond_4a

    .line 72
    :try_start_47
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4a

    .line 75
    :catch_4a
    :cond_4a
    if-eqz v7, :cond_4f

    .line 77
    :try_start_4c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 80
    :catch_4f
    :cond_4f
    throw p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    const/16 v1, 0x4000

    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8
    sget-object v2, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [B

    .line 17
    if-nez v2, :cond_14

    .line 19
    new-array v2, v1, [B

    .line 21
    :cond_14
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-ltz v1, :cond_1f

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 31
    goto :goto_14

    .line 32
    :cond_1f
    sget-object p0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 40
    move-result-object p0

    .line 41
    array-length v0, p0

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 56
    return-object p0
.end method

.method private static getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1e

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 26
    move-result p0

    .line 27
    invoke-direct {v0, v1, v2, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;-><init>([BII)V

    .line 30
    return-object v0

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    .line 9
    if-nez v1, :cond_16

    .line 11
    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    .line 15
    array-length v0, v0

    .line 16
    if-ne v1, v0, :cond_16

    .line 18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    move-result-object p0

    .line 22
    goto :goto_28

    .line 23
    :cond_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 30
    move-result v0

    .line 31
    new-array v0, v0, [B

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 40
    move-object p0, v0

    .line 41
    :goto_28
    return-object p0
.end method

.method public static toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 8
    const-string v3, "rw"

    .line 10
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_25

    .line 13
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 20
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 23
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 26
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_23

    .line 29
    :try_start_1c
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    .line 32
    :catch_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_22

    .line 35
    :catch_22
    return-void

    .line 36
    :catchall_23
    move-exception p0

    .line 37
    goto :goto_27

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    move-object v2, v1

    .line 40
    :goto_27
    if-eqz v1, :cond_2c

    .line 42
    :try_start_29
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    :cond_2c
    if-eqz v2, :cond_31

    .line 47
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    .line 50
    :catch_31
    :cond_31
    throw p0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .registers 2

    .line 9
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object p0, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v0, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3c

    .line 3
    :cond_11
    sget-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_20

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 4
    :cond_20
    :goto_20
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lez v1, :cond_37

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_20

    .line 8
    :cond_37
    sget-object p0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_3c
    return-void
.end method
