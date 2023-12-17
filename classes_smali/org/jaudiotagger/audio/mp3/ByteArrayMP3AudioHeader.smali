.class public Lorg/jaudiotagger/audio/mp3/ByteArrayMP3AudioHeader;
.super Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
.source "ByteArrayMP3AudioHeader.java"


# direct methods
.method public constructor <init>([B)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 7
    move-result-object v0

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :cond_a
    invoke-static {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v4, :cond_2c

    .line 18
    :try_start_11
    invoke-static {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 21
    move-result-object v4

    .line 22
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_17
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_11 .. :try_end_17} :catch_2c

    .line 24
    :try_start_17
    invoke-static {v0, v4}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z

    .line 27
    move-result v3
    :try_end_1b
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_17 .. :try_end_1b} :catch_2b

    .line 28
    if-eqz v3, :cond_24

    .line 30
    :try_start_1d
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/XingFrame;->parseXingFrame()Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;
    :try_end_23
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_1d .. :try_end_23} :catch_39

    .line 36
    goto :goto_39

    .line 37
    :cond_24
    :try_start_24
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/ByteArrayMP3AudioHeader;->isNextFrameValid(Ljava/nio/ByteBuffer;)Z

    .line 40
    move-result v3
    :try_end_28
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_24 .. :try_end_28} :catch_2b

    .line 41
    if-eqz v3, :cond_2c

    .line 43
    goto :goto_39

    .line 44
    :catch_2b
    move v3, v5

    .line 45
    :catch_2c
    :cond_2c
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v5

    .line 50
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    const-wide/16 v4, 0x1

    .line 55
    add-long/2addr v1, v4

    .line 56
    if-eqz v3, :cond_a

    .line 58
    :catch_39
    :goto_39
    array-length p1, p1

    .line 59
    int-to-long v3, p1

    .line 60
    invoke-virtual {p0, v3, v4}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    .line 63
    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 66
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    .line 69
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    .line 75
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    .line 78
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    .line 81
    return-void
.end method

.method private isNextFrameValid(Ljava/nio/ByteBuffer;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 11
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    invoke-static {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_2c

    .line 26
    :try_start_19
    invoke-static {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 29
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 31
    const-string v3, "Check next frame confirms is an audio header "

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_19 .. :try_end_23} :catch_25

    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_2c

    .line 38
    :catch_25
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 40
    const-string v3, "Check next frame has identified this is not an audio header"

    .line 42
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 45
    :cond_2c
    :goto_2c
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    return v2
.end method
