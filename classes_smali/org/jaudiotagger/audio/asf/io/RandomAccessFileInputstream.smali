.class public final Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;
.super Ljava/io/InputStream;
.source "RandomAccessFileInputstream.java"


# instance fields
.field private final source:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public read()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    :goto_6
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    sub-long/2addr p1, v0

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid negative value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
