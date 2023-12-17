.class public Lorg/jaudiotagger/audio/mp3/ByteArrayMP3AudioHeader;
.super Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
.source "ByteArrayMP3AudioHeader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([B)V
    .registers 8

    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_a
    invoke-static {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    :try_start_11
    invoke-static {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    move-result-object v4

    iput-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_17
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_11 .. :try_end_17} :catch_2c

    :try_start_17
    invoke-static {v0, v4}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z

    move-result v3
    :try_end_1b
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_17 .. :try_end_1b} :catch_2b

    if-eqz v3, :cond_24

    :try_start_1d
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/XingFrame;->parseXingFrame()Lorg/jaudiotagger/audio/mp3/XingFrame;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;
    :try_end_23
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_1d .. :try_end_23} :catch_39

    goto :goto_39

    :cond_24
    :try_start_24
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/ByteArrayMP3AudioHeader;->isNextFrameValid(Ljava/nio/ByteBuffer;)Z

    move-result v3
    :try_end_28
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_24 .. :try_end_28} :catch_2b

    if-eqz v3, :cond_2c

    goto :goto_39

    :catch_2b
    move v3, v5

    :catch_2c
    :cond_2c
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    if-eqz v3, :cond_a

    :catch_39
    :goto_39
    array-length p1, p1

    int-to-long v3, p1

    invoke-virtual {p0, v3, v4}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    return-void
.end method

.method private isNextFrameValid(Ljava/nio/ByteBuffer;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    :try_start_19
    invoke-static {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame confirms is an audio header "

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_19 .. :try_end_23} :catch_25

    const/4 v2, 0x1

    goto :goto_2c

    :catch_25
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame has identified this is not an audio header"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v2
.end method
