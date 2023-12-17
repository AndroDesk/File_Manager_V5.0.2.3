.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 3
    sget-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 6
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    return-void

    .line 7
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 3
    return-object p0
.end method

.method private fillBuf()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_12

    .line 14
    iput v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 16
    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    .line 21
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 24
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 6
    if-eqz v1, :cond_f

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    :cond_f
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    .line 20
    throw v1
.end method

.method public hasUnterminatedLine()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 6
    if-eqz v1, :cond_7f

    .line 8
    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 10
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 12
    if-lt v1, v2, :cond_10

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 17
    :cond_10
    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 19
    :goto_12
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 21
    const/16 v3, 0xa

    .line 23
    if-eq v1, v2, :cond_41

    .line 25
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 27
    aget-byte v4, v2, v1

    .line 29
    if-ne v4, v3, :cond_3e

    .line 31
    iget v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 33
    if-eq v1, v3, :cond_2b

    .line 35
    add-int/lit8 v4, v1, -0x1

    .line 37
    aget-byte v5, v2, v4

    .line 39
    const/16 v6, 0xd

    .line 41
    if-ne v5, v6, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v4, v1

    .line 45
    :goto_2c
    new-instance v5, Ljava/lang/String;

    .line 47
    sub-int/2addr v4, v3

    .line 48
    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 50
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 59
    iput v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 61
    monitor-exit v0

    .line 62
    return-object v5

    .line 63
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_12

    .line 66
    :cond_41
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    .line 68
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 70
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 72
    sub-int/2addr v2, v4

    .line 73
    add-int/lit8 v2, v2, 0x50

    .line 75
    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    .line 78
    :cond_4d
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 80
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 82
    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 84
    sub-int/2addr v5, v4

    .line 85
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    const/4 v2, -0x1

    .line 89
    iput v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 91
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 94
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 96
    :goto_5f
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 98
    if-eq v2, v4, :cond_4d

    .line 100
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 102
    aget-byte v5, v4, v2

    .line 104
    if-ne v5, v3, :cond_7c

    .line 106
    iget v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 108
    if-eq v2, v3, :cond_72

    .line 110
    sub-int v5, v2, v3

    .line 112
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 115
    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 117
    iput v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 119
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    monitor-exit v0

    .line 124
    return-object v1

    .line 125
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_5f

    .line 128
    :cond_7f
    new-instance v1, Ljava/io/IOException;

    .line 130
    const-string v2, "LineReader is closed"

    .line 132
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v1

    .line 136
    :catchall_87
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    .line 138
    throw v1
.end method
