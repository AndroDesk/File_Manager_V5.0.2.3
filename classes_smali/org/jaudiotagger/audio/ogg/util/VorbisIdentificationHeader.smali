.class public Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;
.super Ljava/lang/Object;
.source "VorbisIdentificationHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;


# static fields
.field public static final FIELD_AUDIO_CHANNELS_LENGTH:I = 0x1

.field public static final FIELD_AUDIO_CHANNELS_POS:I = 0xb

.field public static final FIELD_AUDIO_SAMPLE_RATE_LENGTH:I = 0x4

.field public static final FIELD_AUDIO_SAMPLE_RATE_POS:I = 0xc

.field public static final FIELD_BITRATE_MAX_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_MAX_POS:I = 0x10

.field public static final FIELD_BITRATE_MIN_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_MIN_POS:I = 0x18

.field public static final FIELD_BITRATE_NOMAIML_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_NOMAIML_POS:I = 0x14

.field public static final FIELD_BLOCKSIZE_LENGTH:I = 0x1

.field public static final FIELD_BLOCKSIZE_POS:I = 0x1c

.field public static final FIELD_FRAMING_FLAG_LENGTH:I = 0x1

.field public static final FIELD_FRAMING_FLAG_POS:I = 0x1d

.field public static final FIELD_VORBIS_VERSION_LENGTH:I = 0x4

.field public static final FIELD_VORBIS_VERSION_POS:I = 0x7

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private audioChannels:I

.field private audioSampleRate:I

.field private bitrateMaximal:I

.field private bitrateMinimal:I

.field private bitrateNominal:I

.field private isValid:Z

.field private vorbisVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->decodeHeader([B)V

    return-void
.end method

.method private u(I)I
    .registers 2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public decodeHeader([B)V
    .registers 13

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packetType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x6

    const-string v3, "ISO-8859-1"

    invoke-static {p1, v1, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_172

    const-string v0, "vorbis"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v2, 0x8

    aget-byte v3, p1, v2

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/2addr v0, v3

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    const/16 v5, 0x18

    shl-int/2addr v3, v5

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "vorbisVersion"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "audioChannels"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/16 v0, 0xc

    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v3

    const/16 v6, 0xd

    aget-byte v7, p1, v6

    invoke-direct {p0, v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v7

    shl-int/2addr v7, v2

    add-int/2addr v3, v7

    const/16 v7, 0xe

    aget-byte v8, p1, v7

    invoke-direct {p0, v8}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v8

    shl-int/2addr v8, v4

    add-int/2addr v3, v8

    const/16 v8, 0xf

    aget-byte v8, p1, v8

    invoke-direct {p0, v8}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v8

    shl-int/2addr v8, v5

    add-int/2addr v3, v8

    iput v3, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    const-string v8, "audioSampleRate"

    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v0, p1, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, p1, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    aget-byte v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v3, 0x11

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v3

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    const/16 v3, 0x12

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v3

    shl-int/2addr v3, v4

    add-int/2addr v0, v3

    const/16 v3, 0x13

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v3

    shl-int/2addr v3, v5

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    const/16 v0, 0x14

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v3, 0x15

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v3

    shl-int/lit8 v2, v3, 0x8

    add-int/2addr v0, v2

    const/16 v2, 0x16

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v2

    shl-int/2addr v2, v4

    add-int/2addr v0, v2

    const/16 v2, 0x17

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v2

    shl-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    aget-byte v0, p1, v5

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v2, 0x19

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    const/16 v2, 0x1a

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v2

    shl-int/2addr v2, v4

    add-int/2addr v0, v2

    const/16 v2, 0x1b

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v2

    shl-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    const/16 v0, 0x1d

    aget-byte p1, p1, v0

    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framingFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    if-eqz p1, :cond_172

    iput-boolean v1, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    :cond_172
    return-void
.end method

.method public getChannelNumber()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lorg/jaudiotagger/audio/ogg/VorbisVersion;->values()[Lorg/jaudiotagger/audio/ogg/VorbisVersion;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/VorbisVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBitrate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    return v0
.end method

.method public getMinBitrate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    return v0
.end method

.method public getNominalBitrate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    return v0
.end method

.method public getSamplingRate()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    return v0
.end method
