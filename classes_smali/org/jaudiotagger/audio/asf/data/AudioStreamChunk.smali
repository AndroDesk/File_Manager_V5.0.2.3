.class public final Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;
.super Lorg/jaudiotagger/audio/asf/data/StreamChunk;
.source "AudioStreamChunk.java"


# static fields
.field public static final CODEC_DESCRIPTIONS:[[Ljava/lang/String;

.field public static final WMA:J = 0x161L

.field public static final WMA_CBR:J = 0x7a21L

.field public static final WMA_LOSSLESS:J = 0x163L

.field public static final WMA_PRO:J = 0x162L

.field public static final WMA_VBR:J = 0x7a22L


# instance fields
.field private averageBytesPerSec:J

.field private bitsPerSample:I

.field private blockAlignment:J

.field private channelCount:J

.field private codecData:[B

.field private compressionFormat:J

.field private errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private samplingRate:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [[Ljava/lang/String;

    .line 4
    const-string v1, "161"

    .line 6
    const-string v2, " (Windows Media Audio (ver 7,8,9))"

    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "162"

    .line 17
    const-string v2, " (Windows Media Audio 9 series (Professional))"

    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, "163"

    .line 28
    const-string v2, "(Windows Media Audio 9 series (Lossless))"

    .line 30
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x2

    .line 35
    aput-object v1, v0, v2

    .line 37
    const-string v1, "7A21"

    .line 39
    const-string v2, " (GSM-AMR (CBR))"

    .line 41
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    aput-object v1, v0, v2

    .line 48
    const-string v1, "7A22"

    .line 50
    const-string v2, " (GSM-AMR (VBR))"

    .line 52
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x4

    .line 57
    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    .line 11
    return-void
.end method


# virtual methods
.method public getAverageBytesPerSec()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    .line 3
    return-wide v0
.end method

.method public getBitsPerSample()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    .line 3
    return v0
.end method

.method public getBlockAlignment()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    .line 3
    return-wide v0
.end method

.method public getChannelCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->channelCount:J

    .line 3
    return-wide v0
.end method

.method public getCodecData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    .line 3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 9
    return-object v0
.end method

.method public getCodecDescription()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_12
    if-ge v4, v2, :cond_29

    .line 21
    aget-object v5, v1, v4

    .line 23
    aget-object v6, v5, v3

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_26

    .line 35
    const/4 v1, 0x1

    .line 36
    aget-object v1, v5, v1

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_12

    .line 42
    :cond_29
    const-string v1, " (Unknown)"

    .line 44
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 47
    move-result v2

    .line 48
    rem-int/lit8 v2, v2, 0x2

    .line 50
    if-nez v2, :cond_39

    .line 52
    const-string v2, "0x"

    .line 54
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    const-string v2, "0x0"

    .line 60
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public getCompressionFormat()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    .line 3
    return-wide v0
.end method

.method public getErrorConcealment()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    return-object v0
.end method

.method public getKbps()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getAverageBytesPerSec()J

    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x8

    .line 8
    div-int/lit16 v0, v0, 0x3e8

    .line 10
    return v0
.end method

.method public getSamplingRate()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->samplingRate:J

    .line 3
    return-wide v0
.end method

.method public isErrorConcealed()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getErrorConcealment()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 7
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "  |-> Audio info:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "  |  : Bitrate : "

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getKbps()I

    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "  |  : Channels : "

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " at "

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, " Hz"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, "  |  : Bits per Sample: "

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getBitsPerSample()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p1, "  |  : Formatcode: "

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    return-object p1
.end method

.method public setAverageBytesPerSec(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    .line 3
    return-void
.end method

.method public setBitsPerSample(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    .line 3
    return-void
.end method

.method public setBlockAlignment(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    .line 3
    return-void
.end method

.method public setChannelCount(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->channelCount:J

    .line 3
    return-void
.end method

.method public setCodecData([B)V
    .registers 2

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [B

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    throw p1
.end method

.method public setCompressionFormat(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    .line 3
    return-void
.end method

.method public setErrorConcealment(Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    return-void
.end method

.method public setSamplingRate(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->samplingRate:J

    .line 3
    return-void
.end method
