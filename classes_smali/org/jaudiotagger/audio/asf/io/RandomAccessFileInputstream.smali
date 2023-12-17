.class public final Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;
.super Ljava/io/InputStream;
.source "RandomAccessFileInputstream.java"


# instance fields
.field private final source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method


# virtual methods
.method public read()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-ltz v0, :cond_20

    .line 7
    :goto_6
    const-wide/32 v0, 0x7fffffff

    .line 10
    cmp-long v2, p1, v0

    .line 12
    if-lez v2, :cond_17

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    .line 16
    const v3, 0x7fffffff

    .line 19
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 22
    sub-long/2addr p1, v0

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    .line 26
    long-to-int p1, p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 30
    move-result p1

    .line 31
    int-to-long p1, p1

    .line 32
    return-wide p1

    .line 33
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string p2, "invalid negative value"

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method
