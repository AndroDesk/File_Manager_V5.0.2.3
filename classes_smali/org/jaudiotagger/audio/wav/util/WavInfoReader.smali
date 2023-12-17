.class public Lorg/jaudiotagger/audio/wav/util/WavInfoReader;
.super Ljava/lang/Object;
.source "WavInfoReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 7

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0xc

    .line 12
    cmp-long v1, v1, v3

    .line 14
    if-ltz v1, :cond_94

    .line 16
    const/16 v1, 0xc

    .line 18
    new-array v1, v1, [B

    .line 20
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 23
    new-instance v2, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;

    .line 25
    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;-><init>([B)V

    .line 28
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_8c

    .line 34
    const/16 v1, 0x18

    .line 36
    new-array v1, v1, [B

    .line 38
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 41
    new-instance v2, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;

    .line 43
    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;-><init>([B)V

    .line 46
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_84

    .line 52
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 55
    move-result-wide v3

    .line 56
    long-to-float p1, v3

    .line 57
    const/high16 v1, 0x42100000  # 36.0f

    .line 59
    sub-float/2addr p1, v1

    .line 60
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBytesPerSecond()I

    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    div-float/2addr p1, v1

    .line 66
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    .line 69
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getChannelNumber()I

    .line 72
    move-result p1

    .line 73
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 76
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getSamplingRate()I

    .line 79
    move-result p1

    .line 80
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v1, "WAV-RIFF "

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBitrate()I

    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, " bits"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 112
    const-string p1, ""

    .line 114
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBytesPerSecond()I

    .line 120
    move-result p1

    .line 121
    mul-int/lit8 p1, p1, 0x8

    .line 123
    div-int/lit16 p1, p1, 0x3e8

    .line 125
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 128
    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 132
    return-object v0

    .line 133
    :cond_84
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 135
    const-string v0, "Wav Format Header not valid"

    .line 137
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1

    .line 141
    :cond_8c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 143
    const-string v0, "Wav RIFF Header not valid"

    .line 145
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p1

    .line 149
    :cond_94
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 151
    const-string v0, "This is not a WAV File (<12 bytes)"

    .line 153
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p1
.end method
