.class public Lorg/jaudiotagger/audio/mp3/MP3File;
.super Lorg/jaudiotagger/audio/AudioFile;
.source "MP3File.java"


# static fields
.field public static final LOAD_ALL:I = 0xe

.field public static final LOAD_IDV1TAG:I = 0x2

.field public static final LOAD_IDV2TAG:I = 0x4

.field public static final LOAD_LYRICS3:I = 0x8

.field private static final MINIMUM_FILESIZE:I = 0x96

.field public static tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;


# instance fields
.field private id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

.field private id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

.field private id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

.field private lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/16 v0, 0xe

    .line 27
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .registers 9

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 10
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 13
    :try_start_c
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/AudioFile;->checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v1

    .line 16
    new-instance p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p3, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 17
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_47

    .line 18
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First header found after tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 19
    iget-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p0, v1, v2, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    move-result-object p3

    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 20
    :cond_47
    invoke-direct {p0, p1, v0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV2Tag(Ljava/io/File;I)V

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    goto :goto_60

    .line 24
    :cond_5a
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz p1, :cond_60

    .line 25
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_66

    :cond_60
    :goto_60
    if-eqz v0, :cond_65

    .line 26
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_65
    return-void

    :catchall_66
    move-exception p1

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_6c
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .registers 13

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 3
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_ID3TAG_LENGTH_INCORRECT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 17
    invoke-static {p1, p2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x1

    .line 22
    aput-object p1, v2, p2

    .line 24
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 27
    move-result-wide v5

    .line 28
    invoke-static {v5, v6}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v3, 0x2

    .line 33
    aput-object p1, v2, v3

    .line 35
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 42
    new-instance p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 44
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 46
    const-wide/16 v1, 0x0

    .line 48
    invoke-direct {p1, v0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 51
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "Checking from start:"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 80
    move-result-wide v5

    .line 81
    cmp-long v0, v0, v5

    .line 83
    if-nez v0, :cond_74

    .line 85
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 87
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 89
    new-array v2, v3, [Ljava/lang/Object;

    .line 91
    iget-object v3, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    aput-object v3, v2, v4

    .line 99
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 102
    move-result-wide v3

    .line 103
    invoke-static {v3, v4}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    aput-object p1, v2, p2

    .line 109
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 116
    return-object p3

    .line 117
    :cond_74
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 119
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 121
    new-array v2, v3, [Ljava/lang/Object;

    .line 123
    iget-object v5, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 125
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    aput-object v5, v2, v4

    .line 131
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 134
    move-result-wide v5

    .line 135
    invoke-static {v5, v6}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 138
    move-result-object v5

    .line 139
    aput-object v5, v2, p2

    .line 141
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 151
    move-result-wide v0

    .line 152
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 155
    move-result-wide v5

    .line 156
    cmp-long v0, v0, v5

    .line 158
    if-eqz v0, :cond_140

    .line 160
    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 162
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 164
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 167
    move-result-wide v5

    .line 168
    iget-object v2, p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 170
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    .line 173
    move-result v2

    .line 174
    int-to-long v7, v2

    .line 175
    add-long/2addr v5, v7

    .line 176
    invoke-direct {v0, v1, v5, v6}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 179
    sget-object v1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v5, "Checking next:"

    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 204
    move-result-wide v1

    .line 205
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 208
    move-result-wide v5

    .line 209
    cmp-long v1, v1, v5

    .line 211
    if-nez v1, :cond_f4

    .line 213
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 215
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 217
    new-array v1, v3, [Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 225
    aput-object v2, v1, v4

    .line 227
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 230
    move-result-wide v2

    .line 231
    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    aput-object v2, v1, p2

    .line 237
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 244
    return-object p3

    .line 245
    :cond_f4
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 248
    move-result-wide v0

    .line 249
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    .line 252
    move-result-wide v5

    .line 253
    cmp-long p3, v0, v5

    .line 255
    if-nez p3, :cond_120

    .line 257
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 259
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 261
    new-array v1, v3, [Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 265
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    aput-object v2, v1, v4

    .line 271
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 274
    move-result-wide v2

    .line 275
    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 278
    move-result-object v2

    .line 279
    aput-object v2, v1, p2

    .line 281
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    move-result-object p2

    .line 285
    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 288
    return-object p1

    .line 289
    :cond_120
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 291
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 293
    new-array v1, v3, [Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    aput-object v2, v1, v4

    .line 303
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 306
    move-result-wide v2

    .line 307
    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 310
    move-result-object v2

    .line 311
    aput-object v2, v1, p2

    .line 313
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 320
    return-object p1

    .line 321
    :cond_140
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 323
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 325
    new-array v1, v3, [Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    aput-object v2, v1, v4

    .line 335
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 338
    move-result-wide v2

    .line 339
    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    .line 342
    move-result-object v2

    .line 343
    aput-object v2, v1, p2

    .line 345
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    move-result-object p2

    .line 349
    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 352
    return-object p1
.end method

.method private static createPlainTextStructureFormatter()V
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 8
    return-void
.end method

.method private static createXMLStructureFormatter()V
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 8
    return-void
.end method

.method public static getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 3
    return-object v0
.end method

.method private readLyrics3Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .registers 4

    return-void
.end method

.method private readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .registers 5

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 3
    if-eqz p3, :cond_35

    .line 5
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v0, "Attempting to read id3v1tags"

    .line 9
    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 12
    :try_start_b
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p3, p2, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 21
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_16
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_b .. :try_end_16} :catch_17

    .line 23
    goto :goto_1e

    .line 24
    :catch_17
    sget-object p3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 26
    const-string v0, "No ids3v11 tag found"

    .line 28
    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 31
    :goto_1e
    :try_start_1e
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 33
    if-nez p3, :cond_35

    .line 35
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p3, p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 44
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_2d
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_1e .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_35

    .line 47
    :catch_2e
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 49
    const-string p2, "No id3v1 tag found"

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method private readV2Tag(Ljava/io/File;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 3
    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    const/16 v1, 0xa

    .line 12
    if-lt v0, v1, :cond_8b

    .line 14
    sget-object v1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 16
    const-string v2, "Attempting to read id3v2tags"

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_15
    new-instance v3, Ljava/io/FileInputStream;

    .line 24
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_7e

    .line 27
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_7c

    .line 38
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 41
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 47
    and-int/lit8 p2, p2, 0x4

    .line 49
    if-eqz p2, :cond_a1

    .line 51
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 53
    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    :try_start_37
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-direct {p2, v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_43
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_37 .. :try_end_43} :catch_44

    .line 68
    goto :goto_4b

    .line 69
    :catch_44
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 71
    const-string v1, "No id3v24 tag found"

    .line 73
    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 76
    :goto_4b
    :try_start_4b
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 78
    if-nez p2, :cond_63

    .line 80
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-direct {p2, v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_5b
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_4b .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_63

    .line 93
    :catch_5c
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 95
    const-string v1, "No id3v23 tag found"

    .line 97
    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    :cond_63
    :goto_63
    :try_start_63
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 102
    if-nez p2, :cond_a1

    .line 104
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p2, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_73
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_63 .. :try_end_73} :catch_74

    .line 116
    goto :goto_a1

    .line 117
    :catch_74
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 119
    const-string p2, "No id3v22 tag found"

    .line 121
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    goto :goto_a1

    .line 125
    :catchall_7c
    move-exception p1

    .line 126
    goto :goto_80

    .line 127
    :catchall_7e
    move-exception p1

    .line 128
    move-object v3, v1

    .line 129
    :goto_80
    if-eqz v1, :cond_85

    .line 131
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 134
    :cond_85
    if-eqz v3, :cond_8a

    .line 136
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_8a
    throw p1

    .line 140
    :cond_8b
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    const-string v1, "Not enough room for valid id3v2 tag:"

    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 162
    :cond_a1
    :goto_a1
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_b
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    return-void

    .line 5
    :catch_4
    move-exception v0

    .line 6
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 8
    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    throw v1

    .line 12
    :catch_b
    move-exception v0

    .line 13
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 15
    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    throw v1
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    .line 6
    return-object v0
.end method

.method public delete(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 5
    const-string v2, "rws"

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTag;->delete(Ljava/io/RandomAccessFile;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 16
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 23
    :cond_16
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 29
    :cond_1c
    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createPlainTextStructureFormatter()V

    .line 4
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "file"

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 45
    :cond_2c
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 47
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 52
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createXMLStructureFormatter()V

    .line 4
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "file"

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 45
    :cond_2c
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 47
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 52
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 3
    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    if-ltz v0, :cond_33

    .line 12
    new-instance v1, Ljava/io/FileInputStream;

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 16
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 30
    new-instance v3, Ljava/io/FileOutputStream;

    .line 32
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 45
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 48
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 51
    return-object p1

    .line 52
    :cond_33
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 54
    const-string v0, "There is no ID3v2Tag data in this file"

    .line 56
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method public getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 3
    return-object v0
.end method

.method public getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    return-object v0
.end method

.method public getID3v2TagAsv24()Lorg/jaudiotagger/tag/id3/ID3v24Tag;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 3
    return-object v0
.end method

.method public getMP3AudioHeader()Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 7
    return-object v0
.end method

.method public getMP3StartByte(Ljava/io/File;)J
    .registers 7

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 7
    invoke-direct {v2, p1, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 10
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 13
    move-result-wide v3

    .line 14
    cmp-long p1, v0, v3

    .line 16
    if-eqz p1, :cond_2b

    .line 18
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v4, "First header found after tag:"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 43
    move-result-object v2

    .line 44
    :cond_2b
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    .line 47
    move-result-wide v0
    :try_end_2f
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_2f} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 48
    return-wide v0

    .line 49
    :catch_30
    move-exception p1

    .line 50
    throw p1

    .line 51
    :catch_32
    move-exception p1

    .line 52
    throw p1
.end method

.method public hasID3v1Tag()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public hasID3v2Tag()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public precheck(Ljava/io/File;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_63

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3e

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 18
    move-result-wide v3

    .line 19
    const-wide/16 v5, 0x96

    .line 21
    cmp-long v0, v3, v5

    .line 23
    if-lez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 28
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 30
    new-array v4, v2, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    aput-object v5, v4, v1

    .line 38
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/io/IOException;

    .line 47
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    aput-object p1, v2, v1

    .line 55
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0

    .line 63
    :cond_3e
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 65
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v4, v1

    .line 75
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/io/IOException;

    .line 84
    new-array v2, v2, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    aput-object p1, v2, v1

    .line 92
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 100
    :cond_63
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 102
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 104
    new-array v4, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    aput-object v5, v4, v1

    .line 112
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/io/IOException;

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    aput-object p1, v2, v1

    .line 129
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0
.end method

.method public save()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .registers 11

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 3
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "Saving  : "

    .line 4
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->precheck(Ljava/io/File;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7
    :try_start_21
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v2Save()Z

    move-result v4
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_29} :catch_12c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_10a
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_29} :catch_ea
    .catchall {:try_start_21 .. :try_end_29} :catchall_e8

    const-string v5, "rws"

    if-eqz v4, :cond_96

    .line 8
    :try_start_2d
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez v4, :cond_6d

    .line 9
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_36} :catch_12c
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_10a
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_36} :catch_ea
    .catchall {:try_start_2d .. :try_end_36} :catchall_e8

    .line 10
    :try_start_36
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 11
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 12
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 13
    sget-object v3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting ID3v2 tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_6b} :catch_e5
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_6b} :catch_e3
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_6b} :catch_e1
    .catchall {:try_start_36 .. :try_end_6b} :catchall_12a

    move-object v3, v4

    goto :goto_96

    .line 15
    :cond_6d
    :try_start_6d
    sget-object v4, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing ID3v2 tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v6

    check-cast v6, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v6

    invoke-virtual {v4, p1, v6, v7}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/File;J)V

    .line 17
    :cond_96
    :goto_96
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_9b} :catch_12c
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_9b} :catch_10a
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_9b} :catch_ea
    .catchall {:try_start_6d .. :try_end_9b} :catchall_e8

    .line 18
    :try_start_9b
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3Save()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 19
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v3, :cond_ac

    .line 20
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/AbstractTag;->write(Ljava/io/RandomAccessFile;)V

    .line 21
    :cond_ac
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1Save()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 22
    sget-object v3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v5, "Processing ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez v3, :cond_d1

    .line 24
    sget-object v3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v5, "Deleting ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 25
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_dd

    .line 26
    :cond_d1
    sget-object v3, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v5, "Saving ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_dd} :catch_e5
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_dd} :catch_e3
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_dd} :catch_e1
    .catchall {:try_start_9b .. :try_end_dd} :catchall_12a

    .line 28
    :cond_dd
    :goto_dd
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catch_e1
    move-exception v3

    goto :goto_ee

    :catch_e3
    move-exception v3

    goto :goto_10e

    :catch_e5
    move-exception v0

    move-object v3, v4

    goto :goto_12d

    :catchall_e8
    move-exception p1

    goto :goto_143

    :catch_ea
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .line 29
    :goto_ee
    :try_start_ee
    sget-object v5, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v7, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    throw v3

    :catch_10a
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .line 31
    :goto_10e
    sget-object v5, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v7, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw v3
    :try_end_12a
    .catchall {:try_start_ee .. :try_end_12a} :catchall_12a

    :catchall_12a
    move-exception p1

    goto :goto_144

    :catch_12c
    move-exception v0

    .line 33
    :goto_12d
    :try_start_12d
    sget-object v4, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v6, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw v0
    :try_end_143
    .catchall {:try_start_12d .. :try_end_143} :catchall_e8

    :goto_143
    move-object v4, v3

    :goto_144
    if-eqz v4, :cond_149

    .line 35
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_149
    throw p1
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/Tag;)V
    .registers 4

    .line 3
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 4
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 4

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:abstract"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_b

    .line 4
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_12

    .line 5
    :cond_b
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    :goto_12
    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setID3v2TagOnly(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 6
    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 3
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 5
    if-eqz v0, :cond_c

    .line 7
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 9
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 15
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 18
    :goto_11
    return-void
.end method
