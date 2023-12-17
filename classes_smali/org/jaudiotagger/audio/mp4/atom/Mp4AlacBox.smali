.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4AlacBox.java"


# static fields
.field public static final OTHER_FLAG_LENGTH:I = 0x4


# instance fields
.field private bitRate:I

.field private channels:I

.field private historyMult:I

.field private initialHistory:I

.field private kModifier:I

.field private maxCodedFrameSize:I

.field private maxSamplePerFrame:I

.field private sampleRate:I

.field private sampleSize:I

.field private unknown1:I

.field private unknown2:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    return-void
.end method


# virtual methods
.method public getBitRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->bitRate:I

    .line 3
    return v0
.end method

.method public getChannels()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->channels:I

    .line 3
    return v0
.end method

.method public getHistoryMult()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->historyMult:I

    .line 3
    return v0
.end method

.method public getInitialHistory()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->initialHistory:I

    .line 3
    return v0
.end method

.method public getKModifier()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->kModifier:I

    .line 3
    return v0
.end method

.method public getMaxCodedFrameSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxCodedFrameSize:I

    .line 3
    return v0
.end method

.method public getMaxSamplePerFrame()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxSamplePerFrame:I

    .line 3
    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleRate:I

    .line 3
    return v0
.end method

.method public getSampleSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleSize:I

    .line 3
    return v0
.end method

.method public getUnknown1()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown1:I

    .line 3
    return v0
.end method

.method public getUnknown2()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown2:I

    .line 3
    return v0
.end method

.method public processData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 14
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxSamplePerFrame:I

    .line 20
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown1:I

    .line 28
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 30
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleSize:I

    .line 36
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 38
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->historyMult:I

    .line 44
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 46
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->initialHistory:I

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 54
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->kModifier:I

    .line 60
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 62
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->channels:I

    .line 68
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 70
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt16(Ljava/nio/ByteBuffer;)I

    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown2:I

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 78
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxCodedFrameSize:I

    .line 84
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 86
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->bitRate:I

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 94
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleRate:I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "maxSamplePerFrame:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxSamplePerFrame:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "unknown1:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown1:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "sampleSize:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleSize:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "historyMult:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->historyMult:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "initialHistory:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->initialHistory:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "kModifier:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->kModifier:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "channels:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->channels:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "unknown2 :"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->unknown2:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "maxCodedFrameSize:"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->maxCodedFrameSize:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "bitRate:"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->bitRate:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "sampleRate:"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->sampleRate:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method
