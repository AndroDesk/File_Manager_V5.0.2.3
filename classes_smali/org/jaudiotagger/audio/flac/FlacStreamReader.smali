.class public Lorg/jaudiotagger/audio/flac/FlacStreamReader;
.super Ljava/lang/Object;
.source "FlacStreamReader.java"


# static fields
.field public static final FLAC_STREAM_IDENTIFIER:Ljava/lang/String; = "fLaC"

.field public static final FLAC_STREAM_IDENTIFIER_LENGTH:I = 0x4


# instance fields
.field private raf:Ljava/io/RandomAccessFile;

.field private startOfFlacInFile:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 6
    return-void
.end method

.method private isFlacHeader()Z
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 6
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 9
    new-instance v1, Ljava/lang/String;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 14
    const-string v0, "fLaC"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private isId3v22Tag()Z
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 14
    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_33

    .line 34
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->readSize(Ljava/nio/ByteBuffer;)I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 40
    int-to-long v2, v0

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_33

    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method private isId3v23Tag()Z
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 14
    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_33

    .line 34
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readSize(Ljava/nio/ByteBuffer;)I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 40
    int-to-long v2, v0

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_33

    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method private isId3v24Tag()Z
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 14
    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_33

    .line 34
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readSize(Ljava/nio/ByteBuffer;)I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 40
    int-to-long v2, v0

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_33

    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    return v0
.end method


# virtual methods
.method public findStream()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-eqz v0, :cond_5c

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1b

    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isId3v24Tag()Z

    .line 31
    move-result v0

    .line 32
    const-wide/16 v1, 0x4

    .line 34
    if-eqz v0, :cond_2e

    .line 36
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 38
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 41
    move-result-wide v3

    .line 42
    sub-long/2addr v3, v1

    .line 43
    long-to-int v0, v3

    .line 44
    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 46
    return-void

    .line 47
    :cond_2e
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isId3v23Tag()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3f

    .line 53
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 55
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 58
    move-result-wide v3

    .line 59
    sub-long/2addr v3, v1

    .line 60
    long-to-int v0, v3

    .line 61
    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isId3v22Tag()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_50

    .line 70
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 75
    move-result-wide v3

    .line 76
    sub-long/2addr v3, v1

    .line 77
    long-to-int v0, v3

    .line 78
    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 80
    return-void

    .line 81
    :cond_50
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 83
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_NO_FLAC_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 85
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 93
    :cond_5c
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 95
    const-string v1, "Error: File empty"

    .line 97
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0
.end method

.method public getStartOfFlacInFile()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 3
    return v0
.end method
