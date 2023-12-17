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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "fmt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->channels:I

    const/16 v0, 0xf

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    const/high16 v2, 0x1000000

    mul-int/2addr v0, v2

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v3

    const/high16 v4, 0x10000

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    const/16 v0, 0xd

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v3

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->sampleRate:I

    const/16 v0, 0x13

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    mul-int/2addr v0, v2

    const/16 v2, 0x12

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    mul-int/2addr v2, v4

    add-int/2addr v2, v0

    const/16 v0, 0x11

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v2

    const/16 v2, 0x10

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bytesPerSecond:I

    const/16 v0, 0x16

    aget-byte p1, p1, v0

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->u(I)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bitrate:I

    iput-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

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

    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bitrate:I

    return v0
.end method

.method public getBytesPerSecond()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->bytesPerSecond:I

    return v0
.end method

.method public getChannelNumber()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->channels:I

    return v0
.end method

.method public getSamplingRate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->sampleRate:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RIFF-WAVE Header:\n"

    const-string v1, "Is valid?: "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
