.class public Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;
.super Ljava/lang/Object;
.source "WavFormatHeader.java"


# instance fields
.field private bitrate:I

.field private bytesPerSecond:I

.field private channels:I

.field private isValid:Z

.field private sampleRate:I


# direct methods
.method public constructor <init>([B)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    .line 13
    const-string v0, "fmt"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_83

    .line 21
    const/16 v0, 0x8

    .line 23
    aget-byte v0, p1, v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_83

    .line 28
    const/16 v0, 0xa

    .line 30
    aget-byte v0, p1, v0

    .line 32
    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->channels:I

    .line 34
    const/16 v0, 0xf

    .line 36
    aget-byte v0, p1, v0

    .line 38
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 41
    move-result v0

    .line 42
    const/high16 v2, 0x1000000

    .line 44
    mul-int/2addr v0, v2

    .line 45
    const/16 v3, 0xe

    .line 47
    aget-byte v3, p1, v3

    .line 49
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 52
    move-result v3

    .line 53
    const/high16 v4, 0x10000

    .line 55
    mul-int/2addr v3, v4

    .line 56
    add-int/2addr v3, v0

    .line 57
    const/16 v0, 0xd

    .line 59
    aget-byte v0, p1, v0

    .line 61
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 64
    move-result v0

    .line 65
    mul-int/lit16 v0, v0, 0x100

    .line 67
    add-int/2addr v0, v3

    .line 68
    const/16 v3, 0xc

    .line 70
    aget-byte v3, p1, v3

    .line 72
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 75
    move-result v3

    .line 76
    add-int/2addr v0, v3

    .line 77
    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->sampleRate:I

    .line 79
    const/16 v0, 0x13

    .line 81
    aget-byte v0, p1, v0

    .line 83
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 86
    move-result v0

    .line 87
    mul-int/2addr v0, v2

    .line 88
    const/16 v2, 0x12

    .line 90
    aget-byte v2, p1, v2

    .line 92
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 95
    move-result v2

    .line 96
    mul-int/2addr v2, v4

    .line 97
    add-int/2addr v2, v0

    .line 98
    const/16 v0, 0x11

    .line 100
    aget-byte v0, p1, v0

    .line 102
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 105
    move-result v0

    .line 106
    mul-int/lit16 v0, v0, 0x100

    .line 108
    add-int/2addr v0, v2

    .line 109
    const/16 v2, 0x10

    .line 111
    aget-byte v2, p1, v2

    .line 113
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 116
    move-result v2

    .line 117
    add-int/2addr v0, v2

    .line 118
    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bytesPerSecond:I

    .line 120
    const/16 v0, 0x16

    .line 122
    aget-byte p1, p1, v0

    .line 124
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bitrate:I

    .line 130
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    .line 132
    :cond_83
    return-void
.end method

.method private u(I)I
    .registers 2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bitrate:I

    .line 3
    return v0
.end method

.method public getBytesPerSecond()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bytesPerSecond:I

    .line 3
    return v0
.end method

.method public getChannelNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->channels:I

    .line 3
    return v0
.end method

.method public getSamplingRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->sampleRate:I

    .line 3
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "RIFF-WAVE Header:\n"

    .line 3
    const-string v1, "Is valid?: "

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
