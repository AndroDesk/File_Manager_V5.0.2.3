.class public Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "OggInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .registers 6

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p2, v0

    .line 4
    const-wide/16 v0, 0x8

    .line 6
    mul-long/2addr p2, v0

    .line 7
    int-to-long v0, p1

    .line 8
    div-long/2addr p2, v0

    .line 9
    long-to-int p1, p2

    .line 10
    return p1
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    new-instance v1, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 5
    invoke-direct {v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 8
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    .line 10
    const-string v3, "Started"

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    .line 17
    array-length v3, v2

    .line 18
    new-array v3, v3, [B

    .line 20
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 23
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v2, :cond_150

    .line 31
    const-wide/16 v2, 0x0

    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 39
    move-result-wide v6

    .line 40
    const-wide/16 v8, 0x2

    .line 42
    sub-long/2addr v6, v8

    .line 43
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 49
    move-result-wide v6

    .line 50
    const-wide/16 v10, 0x4

    .line 52
    cmp-long v6, v6, v10

    .line 54
    const-wide/high16 v12, -0x4010000000000000L  # -1.0

    .line 56
    if-ltz v6, :cond_a3

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    .line 61
    move-result v6

    .line 62
    sget-object v7, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    .line 64
    const/4 v14, 0x3

    .line 65
    aget-byte v15, v7, v14

    .line 67
    if-ne v6, v15, :cond_9a

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 72
    move-result-wide v15

    .line 73
    sub-long v10, v15, v10

    .line 75
    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    new-array v6, v14, [B

    .line 80
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 83
    aget-byte v10, v6, v4

    .line 85
    aget-byte v11, v7, v4

    .line 87
    if-ne v10, v11, :cond_9a

    .line 89
    aget-byte v10, v6, v5

    .line 91
    aget-byte v11, v7, v5

    .line 93
    if-ne v10, v11, :cond_9a

    .line 95
    const/4 v10, 0x2

    .line 96
    aget-byte v6, v6, v10

    .line 98
    aget-byte v7, v7, v10

    .line 100
    if-ne v6, v7, :cond_9a

    .line 102
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 105
    move-result-wide v6

    .line 106
    const-wide/16 v8, 0x3

    .line 108
    sub-long/2addr v6, v8

    .line 109
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 115
    move-result-wide v6

    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 119
    move-result-wide v8

    .line 120
    const-wide/16 v10, 0x1a

    .line 122
    add-long/2addr v8, v10

    .line 123
    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    .line 129
    move-result v8

    .line 130
    and-int/lit16 v8, v8, 0xff

    .line 132
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    add-int/lit8 v8, v8, 0x1b

    .line 137
    new-array v6, v8, [B

    .line 139
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 142
    new-instance v7, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 144
    invoke-direct {v7, v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 147
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 150
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    .line 153
    move-result-wide v2

    .line 154
    goto :goto_a4

    .line 155
    :cond_9a
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 158
    move-result-wide v6

    .line 159
    sub-long/2addr v6, v8

    .line 160
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 163
    goto :goto_2d

    .line 164
    :cond_a3
    move-wide v2, v12

    .line 165
    :goto_a4
    cmpl-double v6, v2, v12

    .line 167
    if-eqz v6, :cond_142

    .line 169
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 176
    move-result v6

    .line 177
    new-array v6, v6, [B

    .line 179
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 182
    new-instance v7, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;

    .line 184
    invoke-direct {v7, v6}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;-><init>([B)V

    .line 187
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    .line 190
    move-result v6

    .line 191
    int-to-double v8, v6

    .line 192
    div-double/2addr v2, v8

    .line 193
    double-to-float v2, v2

    .line 194
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    .line 197
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getChannelNumber()I

    .line 200
    move-result v2

    .line 201
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 204
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    .line 207
    move-result v2

    .line 208
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 211
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getEncodingType()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 218
    const-string v2, ""

    .line 220
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_107

    .line 229
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    .line 232
    move-result v2

    .line 233
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 236
    move-result v3

    .line 237
    if-ne v2, v3, :cond_107

    .line 239
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    .line 242
    move-result v2

    .line 243
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 246
    move-result v3

    .line 247
    if-ne v2, v3, :cond_107

    .line 249
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 252
    move-result v0

    .line 253
    div-int/lit16 v0, v0, 0x3e8

    .line 255
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 258
    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 261
    :goto_104
    move-object/from16 v0, p0

    .line 263
    goto :goto_13a

    .line 264
    :cond_107
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_126

    .line 270
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_126

    .line 276
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_126

    .line 282
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    .line 285
    move-result v0

    .line 286
    div-int/lit16 v0, v0, 0x3e8

    .line 288
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 291
    invoke-virtual {v1, v5}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 294
    goto :goto_104

    .line 295
    :cond_126
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getTrackLength()I

    .line 298
    move-result v2

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 302
    move-result-wide v3

    .line 303
    move-object/from16 v0, p0

    .line 305
    invoke-direct {v0, v2, v3, v4}, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    .line 308
    move-result v2

    .line 309
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 312
    invoke-virtual {v1, v5}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 315
    :goto_13a
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    .line 317
    const-string v3, "Finished"

    .line 319
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 322
    return-object v1

    .line 323
    :cond_142
    move-object/from16 v0, p0

    .line 325
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 327
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_SETUP_BLOCK:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 329
    invoke-virtual {v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 336
    throw v1

    .line 337
    :cond_150
    move-object/from16 v0, p0

    .line 339
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 341
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 343
    new-array v5, v5, [Ljava/lang/Object;

    .line 345
    new-instance v6, Ljava/lang/String;

    .line 347
    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 350
    aput-object v6, v5, v4

    .line 352
    invoke-virtual {v2, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    move-result-object v2

    .line 356
    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 359
    throw v1
.end method
