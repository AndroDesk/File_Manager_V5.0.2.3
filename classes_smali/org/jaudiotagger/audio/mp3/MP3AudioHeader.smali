.class public Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
.super Ljava/lang/Object;
.source "MP3AudioHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/AudioHeader;


# static fields
.field private static final CONVERTS_BYTE_TO_BITS:I = 0x8

.field private static final CONVERT_TO_KILOBITS:I = 0x3e8

.field private static final FILE_BUFFER_SIZE:I = 0x1388

.field private static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field private static final NO_SECONDS_IN_HOUR:I = 0xe10

.field private static final TYPE_MP3:Ljava/lang/String; = "mp3"

.field private static final isVbrIdentifier:C = '~'

.field public static logger:Ljava/util/logging/Logger;

.field private static final timeInFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private bitrate:J

.field private encoder:Ljava/lang/String;

.field private fileSize:J

.field public mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

.field public mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

.field public mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

.field private numberOfFrames:J

.field private numberOfFramesEstimate:J

.field private startByte:J

.field private timePerFrame:D

.field private trackLength:D


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 5
    const-string v2, "ss"

    .line 7
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 14
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 16
    const-string v2, "mm:ss"

    .line 18
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 25
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 27
    const-string v2, "kk:mm:ss"

    .line 29
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 32
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    .line 34
    const-string v0, "org.jaudiotagger.audio.mp3"

    .line 36
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 6
    :cond_10
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "No audio header found within"

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result p2

    if-eqz p2, :cond_e

    return-void

    .line 15
    :cond_e
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string p3, "No audio header found within"

    .line 16
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getTimePerFrame()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 3
    return-wide v0
.end method

.method private isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    .registers 10

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_38

    .line 11
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 13
    const-string v1, "Checking next frame"

    .line 15
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, ":fpc:"

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, "skipping to:"

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 41
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 44
    move-result p1

    .line 45
    int-to-long v2, p1

    .line 46
    add-long/2addr v2, p2

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 57
    :cond_38
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    .line 60
    move-result p1

    .line 61
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 63
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 66
    move-result v0

    .line 67
    const/16 v1, 0x12c4

    .line 69
    const/4 v2, 0x0

    .line 70
    if-le v0, v1, :cond_60

    .line 72
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 74
    const-string p2, "Frame size is too large to be a frame:"

    .line 76
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object p2

    .line 80
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 82
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 85
    move-result p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 96
    return v2

    .line 97
    :cond_60
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 100
    move-result v0

    .line 101
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 103
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 106
    move-result v1

    .line 107
    const/16 v3, 0xc4

    .line 109
    add-int/2addr v1, v3

    .line 110
    if-gt v0, v1, :cond_b9

    .line 112
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 114
    const-string v0, "Buffer too small, need to reload, buffer size:"

    .line 116
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 137
    invoke-virtual {p5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 140
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->position()J

    .line 143
    move-result-wide p1

    .line 144
    invoke-virtual {p5, p4, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 147
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    .line 153
    move-result p1

    .line 154
    if-gt p1, v3, :cond_a3

    .line 156
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 158
    const-string p2, "Nearly at end of file, no header found:"

    .line 160
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 163
    return v2

    .line 164
    :cond_a3
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    .line 167
    move-result p1

    .line 168
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 170
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 173
    move-result p2

    .line 174
    add-int/2addr p2, v3

    .line 175
    if-gt p1, p2, :cond_b8

    .line 177
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 179
    const-string p2, "Nearly at end of file, no room for next frame, no header found:"

    .line 181
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 184
    return v2

    .line 185
    :cond_b8
    move p1, v2

    .line 186
    :cond_b9
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    .line 189
    move-result p2

    .line 190
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 192
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 195
    move-result p3

    .line 196
    add-int/2addr p3, p2

    .line 197
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_e1

    .line 206
    :try_start_cd
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 209
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 211
    const-string p3, "Check next frame confirms is an audio header "

    .line 213
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_d7
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_cd .. :try_end_d7} :catch_d9

    .line 216
    const/4 v2, 0x1

    .line 217
    goto :goto_e8

    .line 218
    :catch_d9
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 220
    const-string p3, "Check next frame has identified this is not an audio header"

    .line 222
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 225
    goto :goto_e8

    .line 226
    :cond_e1
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 228
    const-string p3, "isMPEGFrame has identified this is not an audio header"

    .line 230
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 233
    :goto_e8
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    return v2
.end method


# virtual methods
.method public getBitRate()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 3
    const/16 v1, 0x7e

    .line 5
    if-eqz v0, :cond_22

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 23
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_22
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 37
    if-eqz v0, :cond_3c

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 49
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_3c
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getBitRateAsNumber()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 3
    return-wide v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelModeAsString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEmphasis()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEncoder()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 2

    const-string v0, "mp3"

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 8
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 22
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getMp3StartByte()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 3
    return-wide v0
.end method

.method public getMpegLayer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNumberOfFrames()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 3
    return-wide v0
.end method

.method public getNumberOfFramesEstimate()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 3
    return-wide v0
.end method

.method public getPreciseTrackLength()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    .line 3
    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getTrackLength()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    .line 4
    move-result-wide v0

    .line 5
    double-to-int v0, v0

    .line 6
    return v0
.end method

.method public getTrackLengthAsString()Ljava/lang/String;
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLength()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    .line 8
    monitor-enter v2
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_8} :catch_32

    .line 9
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 16
    move-result-object v3

    .line 17
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2f

    .line 18
    const-wide/16 v4, 0xe10

    .line 20
    cmp-long v0, v0, v4

    .line 22
    if-gez v0, :cond_23

    .line 24
    :try_start_17
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    .line 26
    monitor-enter v0
    :try_end_1a
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_1a} :catch_32

    .line 27
    :try_start_1a
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    .line 35
    :try_start_22
    throw v1

    .line 36
    :cond_23
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    .line 38
    monitor-enter v0
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_26} :catch_32

    .line 39
    :try_start_26
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    monitor-exit v0

    .line 44
    return-object v1

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2c

    .line 47
    :try_start_2e
    throw v1
    :try_end_2f
    .catch Ljava/text/ParseException; {:try_start_2e .. :try_end_2f} :catch_32

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .line 50
    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_31 .. :try_end_32} :catch_32

    .line 51
    :catch_32
    move-exception v0

    .line 52
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 54
    const-string v2, "Unable to parse:"

    .line 56
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    .line 63
    move-result-wide v3

    .line 64
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, " failed with ParseException:"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 86
    const-string v0, ""

    .line 88
    return-object v0
.end method

.method public isCopyrighted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOriginal()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPadding()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVariableBitRate()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbr()Z

    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_12
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 21
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public seek(Ljava/io/File;J)Z
    .registers 15

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 9
    move-result-object v7

    .line 10
    const/16 v1, 0x1388

    .line 12
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 15
    move-result-object v8

    .line 16
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 19
    invoke-virtual {v7, v8, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 22
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    const/4 v9, 0x0

    .line 26
    move v1, v9

    .line 27
    :cond_1a
    :try_start_1a
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 30
    move-result v2

    .line 31
    const/16 v3, 0xc4

    .line 33
    if-gt v2, v3, :cond_3f

    .line 35
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 41
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {v7, v8, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 48
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    .line 54
    move-result v2
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_36} :catch_d6
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_36} :catch_cb
    .catchall {:try_start_1a .. :try_end_36} :catchall_c9

    .line 55
    if-gt v2, v3, :cond_3f

    .line 57
    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 63
    return v9

    .line 64
    :cond_3f
    :try_start_3f
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    .line 67
    move-result v2
    :try_end_43
    .catch Ljava/io/EOFException; {:try_start_3f .. :try_end_43} :catch_d6
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_cb
    .catchall {:try_start_3f .. :try_end_43} :catchall_c9

    .line 68
    const/4 v10, 0x1

    .line 69
    if-eqz v2, :cond_b4

    .line 71
    :try_start_46
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 73
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_66

    .line 81
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v5, "Found Possible header at:"

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 103
    :cond_66
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 106
    move-result-object v2

    .line 107
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_6c
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_46 .. :try_end_6c} :catch_b4
    .catch Ljava/io/EOFException; {:try_start_46 .. :try_end_6c} :catch_d6
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_6c} :catch_cb
    .catchall {:try_start_46 .. :try_end_6c} :catchall_c9

    .line 109
    :try_start_6c
    invoke-static {v8, v2}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_88

    .line 115
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 117
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_81

    .line 123
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 125
    const-string v2, "Found Possible XingHeader"

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_6c .. :try_end_81} :catch_b3
    .catch Ljava/io/EOFException; {:try_start_6c .. :try_end_81} :catch_d6
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_81} :catch_cb
    .catchall {:try_start_6c .. :try_end_81} :catchall_c9

    .line 130
    :cond_81
    :try_start_81
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/XingFrame;->parseXingFrame()Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 133
    move-result-object v1

    .line 134
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;
    :try_end_87
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_81 .. :try_end_87} :catch_a5
    .catch Ljava/io/EOFException; {:try_start_81 .. :try_end_87} :catch_d6
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_cb
    .catchall {:try_start_81 .. :try_end_87} :catchall_c9

    .line 136
    goto :goto_a5

    .line 137
    :cond_88
    :try_start_88
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 139
    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbriFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a7

    .line 145
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 147
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_9f

    .line 153
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 155
    const-string v2, "Found Possible VbriHeader"

    .line 157
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_9f
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_88 .. :try_end_9f} :catch_b3
    .catch Ljava/io/EOFException; {:try_start_88 .. :try_end_9f} :catch_d6
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_9f} :catch_cb
    .catchall {:try_start_88 .. :try_end_9f} :catchall_c9

    .line 160
    :cond_9f
    :try_start_9f
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->parseVBRIFrame()Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 163
    move-result-object v1

    .line 164
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;
    :try_end_a5
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_9f .. :try_end_a5} :catch_a5
    .catch Ljava/io/EOFException; {:try_start_9f .. :try_end_a5} :catch_d6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a5} :catch_cb
    .catchall {:try_start_9f .. :try_end_a5} :catchall_c9

    .line 166
    :catch_a5
    :goto_a5
    move v9, v10

    .line 167
    goto :goto_c2

    .line 168
    :cond_a7
    move-object v1, p0

    .line 169
    move-object v2, p1

    .line 170
    move-wide v3, p2

    .line 171
    move-object v5, v8

    .line 172
    move-object v6, v7

    .line 173
    :try_start_ac
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z

    .line 176
    move-result v1
    :try_end_b0
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_ac .. :try_end_b0} :catch_b3
    .catch Ljava/io/EOFException; {:try_start_ac .. :try_end_b0} :catch_d6
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_cb
    .catchall {:try_start_ac .. :try_end_b0} :catchall_c9

    .line 177
    if-eqz v1, :cond_b4

    .line 179
    goto :goto_c1

    .line 180
    :catch_b3
    move v1, v10

    .line 181
    :catch_b4
    :cond_b4
    :try_start_b4
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    .line 184
    move-result v2

    .line 185
    add-int/2addr v2, v10

    .line 186
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_bc
    .catch Ljava/io/EOFException; {:try_start_b4 .. :try_end_bc} :catch_d6
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bc} :catch_cb
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_c9

    .line 189
    const-wide/16 v2, 0x1

    .line 191
    add-long/2addr p2, v2

    .line 192
    if-eqz v1, :cond_1a

    .line 194
    :goto_c1
    move v9, v1

    .line 195
    :goto_c2
    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 198
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 201
    goto :goto_e1

    .line 202
    :catchall_c9
    move-exception p1

    .line 203
    goto :goto_11b

    .line 204
    :catch_cb
    move-exception p1

    .line 205
    :try_start_cc
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 207
    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 209
    const-string v1, "IOException occurred whilst trying to find sync"

    .line 211
    invoke-virtual {p2, p3, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    throw p1

    .line 215
    :catch_d6
    move-exception v1

    .line 216
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 218
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 220
    const-string v4, "Reached end of file without finding sync match"

    .line 222
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e0
    .catchall {:try_start_cc .. :try_end_e0} :catchall_c9

    .line 225
    goto :goto_c2

    .line 226
    :goto_e1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 228
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_101

    .line 236
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v2, "Return found matching mp3 header starting at"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 258
    :cond_101
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    .line 265
    invoke-virtual {p0, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 268
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    .line 271
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    .line 274
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    .line 277
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    .line 280
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    .line 283
    return v9

    .line 284
    :goto_11b
    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 287
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 290
    throw p1
.end method

.method public setBitRate()V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 3
    const-wide/16 v1, 0x8

    .line 5
    const-wide v3, 0x408f400000000000L  # 1000.0

    .line 10
    if-eqz v0, :cond_4d

    .line 12
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4d

    .line 18
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 20
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_38

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_38

    .line 34
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 36
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    .line 39
    move-result v0

    .line 40
    mul-int/lit8 v0, v0, 0x8

    .line 42
    int-to-double v0, v0

    .line 43
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 45
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 48
    move-result-wide v7

    .line 49
    long-to-double v7, v7

    .line 50
    mul-double/2addr v5, v7

    .line 51
    mul-double/2addr v5, v3

    .line 52
    div-double/2addr v0, v5

    .line 53
    double-to-long v0, v0

    .line 54
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 56
    goto :goto_90

    .line 57
    :cond_38
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 59
    iget-wide v7, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 61
    sub-long/2addr v5, v7

    .line 62
    mul-long/2addr v5, v1

    .line 63
    long-to-double v0, v5

    .line 64
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 66
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 69
    move-result-wide v7

    .line 70
    long-to-double v7, v7

    .line 71
    mul-double/2addr v5, v7

    .line 72
    mul-double/2addr v5, v3

    .line 73
    div-double/2addr v0, v5

    .line 74
    double-to-long v0, v0

    .line 75
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 77
    goto :goto_90

    .line 78
    :cond_4d
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 80
    if-eqz v0, :cond_83

    .line 82
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_6e

    .line 88
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 90
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    .line 93
    move-result v0

    .line 94
    mul-int/lit8 v0, v0, 0x8

    .line 96
    int-to-double v0, v0

    .line 97
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 99
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 102
    move-result-wide v7

    .line 103
    long-to-double v7, v7

    .line 104
    mul-double/2addr v5, v7

    .line 105
    mul-double/2addr v5, v3

    .line 106
    div-double/2addr v0, v5

    .line 107
    double-to-long v0, v0

    .line 108
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 110
    goto :goto_90

    .line 111
    :cond_6e
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 113
    iget-wide v7, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 115
    sub-long/2addr v5, v7

    .line 116
    mul-long/2addr v5, v1

    .line 117
    long-to-double v0, v5

    .line 118
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 120
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 123
    move-result-wide v7

    .line 124
    long-to-double v7, v7

    .line 125
    mul-double/2addr v5, v7

    .line 126
    mul-double/2addr v5, v3

    .line 127
    div-double/2addr v0, v5

    .line 128
    double-to-long v0, v0

    .line 129
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 131
    goto :goto_90

    .line 132
    :cond_83
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 134
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v0

    .line 142
    int-to-long v0, v0

    .line 143
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 145
    :goto_90
    return-void
.end method

.method public setEncoder()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_21

    .line 11
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/LameFrame;->getEncoder()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 23
    goto :goto_21

    .line 24
    :cond_17
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 26
    if-eqz v0, :cond_21

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 3
    return-void
.end method

.method public setMp3StartByte(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 3
    return-void
.end method

.method public setNumberOfFrames()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 3
    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 5
    sub-long/2addr v0, v2

    .line 6
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 8
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 11
    move-result v2

    .line 12
    int-to-long v2, v2

    .line 13
    div-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 18
    if-eqz v0, :cond_23

    .line 20
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_23

    .line 26
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getFrameCount()I

    .line 31
    move-result v0

    .line 32
    int-to-long v0, v0

    .line 33
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 35
    goto :goto_33

    .line 36
    :cond_23
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 38
    if-eqz v0, :cond_2f

    .line 40
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getFrameCount()I

    .line 43
    move-result v0

    .line 44
    int-to-long v0, v0

    .line 45
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 50
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 52
    :goto_33
    return-void
.end method

.method public setTimePerFrame()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    .line 6
    move-result v0

    .line 7
    int-to-double v0, v0

    .line 8
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 10
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    .line 17
    move-result-wide v2

    .line 18
    div-double/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 21
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 23
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_25

    .line 30
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 32
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_45

    .line 38
    :cond_25
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 40
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq v0, v1, :cond_36

    .line 47
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 49
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    .line 52
    move-result v0

    .line 53
    if-ne v0, v2, :cond_45

    .line 55
    :cond_36
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 57
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNumberOfChannels()I

    .line 60
    move-result v0

    .line 61
    if-ne v0, v2, :cond_45

    .line 63
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 65
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 67
    div-double/2addr v0, v2

    .line 68
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 70
    :cond_45
    return-void
.end method

.method public setTrackLength()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 3
    long-to-double v0, v0

    .line 4
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTimePerFrame()D

    .line 7
    move-result-wide v2

    .line 8
    mul-double/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "fileSize:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " encoder:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " startByte:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 29
    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " numberOfFrames:"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, " numberOfFramesEst:"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " timePerFrame:"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " bitrate:"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " trackLength:"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLengthAsString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 94
    if-eqz v1, :cond_70

    .line 96
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 102
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    :cond_70
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 115
    if-eqz v1, :cond_85

    .line 117
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 123
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/XingFrame;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    :cond_85
    return-object v0
.end method
