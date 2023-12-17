.class public Lorg/jaudiotagger/audio/flac/FlacInfoReader;
.super Ljava/lang/Object;
.source "FlacInfoReader.java"


# static fields
.field private static final KILOBYTES_TO_BYTES_MULTIPLIER:I = 0x3e8

.field private static final NO_OF_BITS_IN_BYTE:I = 0x8

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.flac"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(FJ)I
    .registers 6

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p2, v0

    .line 4
    const-wide/16 v0, 0x8

    .line 6
    mul-long/2addr p2, v0

    .line 7
    long-to-float p2, p2

    .line 8
    div-float/2addr p2, p1

    .line 9
    float-to-int p1, p2

    .line 10
    return p1
.end method


# virtual methods
.method public countMetaBlocks(Ljava/io/File;)I
    .registers 8

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    const-string v1, "r"

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    .line 10
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    .line 16
    const/4 p1, 0x0

    .line 17
    move v1, p1

    .line 18
    :goto_11
    if-nez p1, :cond_41

    .line 20
    invoke-static {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 23
    move-result-object p1

    .line 24
    sget-object v2, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    .line 26
    const-string v3, "Found block:"

    .line 28
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 53
    move-result v4

    .line 54
    int-to-long v4, v4

    .line 55
    add-long/2addr v2, v4

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    .line 62
    move-result p1

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_11

    .line 66
    :cond_41
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 69
    return v1
.end method

.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 6
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-nez v1, :cond_3e

    .line 13
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 23
    if-ne v2, v3, :cond_2c

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    .line 27
    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 30
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_24

    .line 36
    goto :goto_39

    .line 37
    :cond_24
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 39
    const-string v0, "FLAC StreamInfo not valid"

    .line 41
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 52
    move-result v4

    .line 53
    int-to-long v4, v4

    .line 54
    add-long/2addr v2, v4

    .line 55
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 58
    :goto_39
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    .line 61
    move-result v1

    .line 62
    goto :goto_a

    .line 63
    :cond_3e
    if-eqz v0, :cond_82

    .line 65
    new-instance v1, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 67
    invoke-direct {v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 70
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSongLength()I

    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    .line 77
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    .line 84
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getChannelNumber()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 91
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSamplingRate()I

    .line 94
    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 98
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 105
    const-string v2, ""

    .line 107
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    .line 113
    move-result v0

    .line 114
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 117
    move-result-wide v2

    .line 118
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 121
    move-result-wide v4

    .line 122
    sub-long/2addr v2, v4

    .line 123
    invoke-direct {p0, v0, v2, v3}, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->computeBitrate(FJ)I

    .line 126
    move-result p1

    .line 127
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 130
    return-object v1

    .line 131
    :cond_82
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 133
    const-string v0, "Unable to find Flac StreamInfo"

    .line 135
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1
.end method
