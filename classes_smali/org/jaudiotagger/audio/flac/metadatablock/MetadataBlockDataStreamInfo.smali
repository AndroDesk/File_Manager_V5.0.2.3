.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;
.super Ljava/lang/Object;
.source "MetadataBlockDataStreamInfo.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# static fields
.field public static final STREAM_INFO_DATA_LENGTH:I = 0x22

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private bitsPerSample:I

.field private channelNumber:I

.field private isValid:Z

.field private maxBlockSize:I

.field private maxFrameSize:I

.field private minBlockSize:I

.field private minFrameSize:I

.field private rawdata:Ljava/nio/ByteBuffer;

.field private samplingRate:I

.field private samplingRatePerChannel:I

.field private songLength:F

.field private totalNumberOfSamples:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.flac.MetadataBlockDataStreamInfo"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 20
    move-result-object p2

    .line 21
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 30
    move-result v1

    .line 31
    if-lt p2, v1, :cond_f3

    .line 33
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    .line 46
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    .line 54
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 59
    move-result p1

    .line 60
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 65
    move-result p2

    .line 66
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 71
    move-result v1

    .line 72
    invoke-direct {p0, p1, p2, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    .line 78
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 83
    move-result p1

    .line 84
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 89
    move-result p2

    .line 90
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 95
    move-result v1

    .line 96
    invoke-direct {p0, p1, p2, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    .line 99
    move-result p1

    .line 100
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    .line 102
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 107
    move-result p1

    .line 108
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 113
    move-result p2

    .line 114
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 119
    move-result v1

    .line 120
    invoke-direct {p0, p1, p2, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readSamplingRate(BBB)I

    .line 123
    move-result p1

    .line 124
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 126
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 128
    const/16 p2, 0xc

    .line 130
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 133
    move-result p1

    .line 134
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 137
    move-result p1

    .line 138
    const/16 v1, 0xe

    .line 140
    and-int/2addr p1, v1

    .line 141
    ushr-int/2addr p1, v0

    .line 142
    add-int/2addr p1, v0

    .line 143
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    .line 145
    iget v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 147
    div-int/2addr v2, p1

    .line 148
    iput v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    .line 150
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 155
    move-result p1

    .line 156
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 159
    move-result p1

    .line 160
    and-int/2addr p1, v0

    .line 161
    shl-int/lit8 p1, p1, 0x4

    .line 163
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 165
    const/16 v2, 0xd

    .line 167
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 170
    move-result p2

    .line 171
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 174
    move-result p2

    .line 175
    and-int/lit16 p2, p2, 0xf0

    .line 177
    ushr-int/lit8 p2, p2, 0x4

    .line 179
    add-int/2addr p1, p2

    .line 180
    add-int/2addr p1, v0

    .line 181
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    .line 183
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 188
    move-result v4

    .line 189
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 194
    move-result v5

    .line 195
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 197
    const/16 p2, 0xf

    .line 199
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 202
    move-result v6

    .line 203
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 205
    const/16 p2, 0x10

    .line 207
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 210
    move-result v7

    .line 211
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 213
    const/16 p2, 0x11

    .line 215
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 218
    move-result v8

    .line 219
    move-object v3, p0

    .line 220
    invoke-direct/range {v3 .. v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readTotalNumberOfSamples(BBBBB)I

    .line 223
    move-result p1

    .line 224
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->totalNumberOfSamples:I

    .line 226
    int-to-double p1, p1

    .line 227
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 229
    int-to-double v0, v0

    .line 230
    div-double/2addr p1, v0

    .line 231
    double-to-float p1, p1

    .line 232
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    .line 234
    sget-object p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    .line 236
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->toString()Ljava/lang/String;

    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 243
    return-void

    .line 244
    :cond_f3
    new-instance v0, Ljava/io/IOException;

    .line 246
    const-string v1, "Unable to read required number of databytes read:"

    .line 248
    const-string v2, ":required:"

    .line 250
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 257
    move-result p1

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 268
    throw v0
.end method

.method private readSamplingRate(BBB)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 4
    move-result p1

    .line 5
    shl-int/lit8 p1, p1, 0xc

    .line 7
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 10
    move-result p2

    .line 11
    shl-int/lit8 p2, p2, 0x4

    .line 13
    add-int/2addr p1, p2

    .line 14
    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 17
    move-result p2

    .line 18
    and-int/lit16 p2, p2, 0xf0

    .line 20
    ushr-int/lit8 p2, p2, 0x4

    .line 22
    add-int/2addr p1, p2

    .line 23
    return p1
.end method

.method private readThreeByteInteger(BBB)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 4
    move-result p1

    .line 5
    shl-int/lit8 p1, p1, 0x10

    .line 7
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 10
    move-result p2

    .line 11
    shl-int/lit8 p2, p2, 0x8

    .line 13
    add-int/2addr p1, p2

    .line 14
    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 17
    move-result p2

    .line 18
    add-int/2addr p1, p2

    .line 19
    return p1
.end method

.method private readTotalNumberOfSamples(BBBBB)I
    .registers 6

    .line 1
    invoke-direct {p0, p5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 4
    move-result p5

    .line 5
    invoke-direct {p0, p4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 8
    move-result p4

    .line 9
    shl-int/lit8 p4, p4, 0x8

    .line 11
    add-int/2addr p5, p4

    .line 12
    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 15
    move-result p3

    .line 16
    shl-int/lit8 p3, p3, 0x10

    .line 18
    add-int/2addr p5, p3

    .line 19
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 22
    move-result p2

    .line 23
    shl-int/lit8 p2, p2, 0x18

    .line 25
    add-int/2addr p5, p2

    .line 26
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    .line 29
    move-result p1

    .line 30
    and-int/lit8 p1, p1, 0xf

    .line 32
    shl-int/lit8 p1, p1, 0x20

    .line 34
    add-int/2addr p5, p1

    .line 35
    return p5
.end method

.method private u(I)I
    .registers 2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChannelNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    .line 3
    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "FLAC "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    .line 9
    const-string v2, " bits"

    .line 11
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public getPreciseLength()F
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    .line 3
    return v0
.end method

.method public getSamplingRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 3
    return v0
.end method

.method public getSamplingRatePerChannel()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    .line 3
    return v0
.end method

.method public getSongLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "MinBlockSize:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "MaxBlockSize:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "MinFrameSize:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "MaxFrameSize:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "SampleRateTotal:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "SampleRatePerChannel:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ":Channel number:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ":Bits per sample: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ":TotalNumberOfSamples: "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->totalNumberOfSamples:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ":Length: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
