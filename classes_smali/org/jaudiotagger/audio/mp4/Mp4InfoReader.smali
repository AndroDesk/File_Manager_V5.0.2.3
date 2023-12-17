.class public Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;
.super Ljava/lang/Object;
.source "Mp4InfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.mp4.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 14

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;-><init>()V

    .line 6
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FTYP:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 8
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_35c

    .line 18
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 21
    move-result v2

    .line 22
    add-int/lit8 v2, v2, -0x8

    .line 24
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;

    .line 40
    invoke-direct {v3, v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 43
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->processData()V

    .line 46
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBrand(Ljava/lang/String;)V

    .line 53
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 55
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_350

    .line 65
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 68
    move-result v1

    .line 69
    add-int/lit8 v1, v1, -0x8

    .line 71
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 82
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 87
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_344

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 100
    move-result-object v1

    .line 101
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;

    .line 103
    invoke-direct {v4, v2, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->getLength()I

    .line 109
    move-result v4

    .line 110
    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    .line 113
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 116
    move-result v4

    .line 117
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 120
    move-result v2

    .line 121
    add-int/2addr v2, v4

    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 127
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    invoke-static {v1, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 138
    move-result v5

    .line 139
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 142
    move-result v4

    .line 143
    add-int/2addr v4, v5

    .line 144
    sget-object v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 146
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-static {v1, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_338

    .line 156
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 158
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 161
    move-result-object v7

    .line 162
    invoke-static {v1, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 165
    move-result-object v7

    .line 166
    if-eqz v7, :cond_32c

    .line 168
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;

    .line 170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 173
    move-result-object v9

    .line 174
    invoke-direct {v8, v7, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 177
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->getSampleRate()I

    .line 180
    move-result v8

    .line 181
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 184
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 187
    move-result v8

    .line 188
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 191
    move-result v7

    .line 192
    add-int/2addr v7, v8

    .line 193
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 198
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 201
    move-result-object v8

    .line 202
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 205
    move-result-object v8

    .line 206
    if-eqz v8, :cond_320

    .line 208
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 210
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 213
    move-result-object v8

    .line 214
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 217
    move-result-object v8

    .line 218
    if-eqz v8, :cond_314

    .line 220
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 223
    move-result v9

    .line 224
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 227
    move-result v8

    .line 228
    add-int/2addr v8, v9

    .line 229
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 234
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 237
    move-result-object v8

    .line 238
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 241
    move-result-object v8

    .line 242
    if-eqz v8, :cond_308

    .line 244
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STSD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 246
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 249
    move-result-object v8

    .line 250
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 253
    move-result-object v8

    .line 254
    if-eqz v8, :cond_1f7

    .line 256
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;

    .line 258
    invoke-direct {v9, v8, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 261
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->processData()V

    .line 264
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 267
    move-result v8

    .line 268
    sget-object v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MP4A:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 270
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 273
    move-result-object v9

    .line 274
    invoke-static {v1, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 277
    move-result-object v9

    .line 278
    if-eqz v9, :cond_161

    .line 280
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 283
    move-result-object v8

    .line 284
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;

    .line 286
    invoke-direct {v10, v9, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 289
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;->processData()V

    .line 292
    sget-object v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 294
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 297
    move-result-object v9

    .line 298
    invoke-static {v8, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 301
    move-result-object v9

    .line 302
    if-eqz v9, :cond_1f7

    .line 304
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    .line 306
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 309
    move-result-object v8

    .line 310
    invoke-direct {v10, v9, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 313
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    .line 316
    move-result v8

    .line 317
    div-int/lit16 v8, v8, 0x3e8

    .line 319
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 322
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    .line 325
    move-result v8

    .line 326
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 329
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 336
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 339
    move-result-object v8

    .line 340
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 343
    sget-object v8, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 345
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 352
    goto/16 :goto_1f7

    .line 354
    :cond_161
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 357
    sget-object v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->DRMS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 359
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 362
    move-result-object v9

    .line 363
    invoke-static {v1, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 366
    move-result-object v9

    .line 367
    if-eqz v9, :cond_1b5

    .line 369
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;

    .line 371
    invoke-direct {v8, v9, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 374
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;->processData()V

    .line 377
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 379
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 382
    move-result-object v8

    .line 383
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 386
    move-result-object v8

    .line 387
    if-eqz v8, :cond_1f7

    .line 389
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    .line 391
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 394
    move-result-object v10

    .line 395
    invoke-direct {v9, v8, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 398
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    .line 401
    move-result v8

    .line 402
    div-int/lit16 v8, v8, 0x3e8

    .line 404
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 407
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    .line 410
    move-result v8

    .line 411
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 414
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 421
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 424
    move-result-object v8

    .line 425
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 428
    sget-object v8, Lorg/jaudiotagger/audio/mp4/EncoderType;->DRM_AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 430
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    .line 433
    move-result-object v8

    .line 434
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 437
    goto :goto_1f7

    .line 438
    :cond_1b5
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 441
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 443
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 446
    move-result-object v9

    .line 447
    invoke-static {v1, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 450
    move-result-object v9

    .line 451
    if-eqz v9, :cond_1f7

    .line 453
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    .line 455
    invoke-direct {v10, v9, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 458
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 461
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 464
    move-result-object v8

    .line 465
    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 468
    move-result-object v8

    .line 469
    if-eqz v8, :cond_1f7

    .line 471
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    .line 473
    invoke-direct {v9, v8, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 476
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 479
    sget-object v8, Lorg/jaudiotagger/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 481
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    .line 484
    move-result-object v8

    .line 485
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getChannels()I

    .line 491
    move-result v8

    .line 492
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 495
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getBitRate()I

    .line 498
    move-result v8

    .line 499
    div-int/lit16 v8, v8, 0x3e8

    .line 501
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 504
    :cond_1f7
    :goto_1f7
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getChannelNumber()I

    .line 507
    move-result v8

    .line 508
    const/4 v9, -0x1

    .line 509
    if-ne v8, v9, :cond_202

    .line 511
    const/4 v8, 0x2

    .line 512
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 515
    :cond_202
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getBitRateAsNumber()J

    .line 518
    move-result-wide v8

    .line 519
    const-wide/16 v10, -0x1

    .line 521
    cmp-long v8, v8, v10

    .line 523
    if-nez v8, :cond_211

    .line 525
    const/16 v8, 0x80

    .line 527
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    .line 530
    :cond_211
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getEncodingType()Ljava/lang/String;

    .line 533
    move-result-object v8

    .line 534
    const-string v9, ""

    .line 536
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v8

    .line 540
    if-eqz v8, :cond_226

    .line 542
    sget-object v8, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    .line 544
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    .line 547
    move-result-object v8

    .line 548
    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 551
    :cond_226
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    .line 553
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->toString()Ljava/lang/String;

    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 566
    move-result-object v2

    .line 567
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 570
    move-result-object v2

    .line 571
    if-eqz v2, :cond_301

    .line 573
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    .line 576
    move-result-object v2

    .line 577
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 579
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->getId()Ljava/lang/String;

    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    move-result v2

    .line 587
    if-nez v2, :cond_29a

    .line 589
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    .line 592
    move-result-object v2

    .line 593
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 595
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->getId()Ljava/lang/String;

    .line 598
    move-result-object v4

    .line 599
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_29a

    .line 605
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    .line 608
    move-result-object v2

    .line 609
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 611
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->getId()Ljava/lang/String;

    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_26d

    .line 621
    goto :goto_29a

    .line 622
    :cond_26d
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 631
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v2, ":"

    .line 640
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 657
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    .line 659
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 663
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    .line 666
    throw p1

    .line 667
    :cond_29a
    :goto_29a
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 670
    move-result-object v2

    .line 671
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 674
    move-result-object v2

    .line 675
    if-eqz v2, :cond_2f5

    .line 677
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 680
    move-result-object v2

    .line 681
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 684
    move-result-object v2

    .line 685
    if-eqz v2, :cond_2e9

    .line 687
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 690
    move-result v3

    .line 691
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 694
    move-result v2

    .line 695
    add-int/2addr v2, v3

    .line 696
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 699
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 702
    move-result-object v2

    .line 703
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 706
    move-result-object v2

    .line 707
    if-eqz v2, :cond_2dd

    .line 709
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->NMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 711
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 714
    move-result-object v2

    .line 715
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 718
    move-result-object v1

    .line 719
    if-eqz v1, :cond_2d1

    .line 721
    goto :goto_301

    .line 722
    :cond_2d1
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    .line 724
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 726
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 729
    move-result-object v0

    .line 730
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    .line 733
    throw p1

    .line 734
    :cond_2dd
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    .line 736
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 738
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 741
    move-result-object v0

    .line 742
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    .line 745
    throw p1

    .line 746
    :cond_2e9
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    .line 748
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 750
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 753
    move-result-object v0

    .line 754
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    .line 757
    throw p1

    .line 758
    :cond_2f5
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    .line 760
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 762
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 765
    move-result-object v0

    .line 766
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    .line 769
    throw p1

    .line 770
    :cond_301
    :goto_301
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    .line 772
    const/4 v2, 0x0

    .line 773
    invoke-direct {v1, p1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 776
    return-object v0

    .line 777
    :cond_308
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 779
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 781
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 784
    move-result-object v0

    .line 785
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 788
    throw p1

    .line 789
    :cond_314
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 791
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 793
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 796
    move-result-object v0

    .line 797
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 800
    throw p1

    .line 801
    :cond_320
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 803
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 805
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 808
    move-result-object v0

    .line 809
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 812
    throw p1

    .line 813
    :cond_32c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 815
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 817
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 820
    move-result-object v0

    .line 821
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 824
    throw p1

    .line 825
    :cond_338
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 827
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 829
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 832
    move-result-object v0

    .line 833
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 836
    throw p1

    .line 837
    :cond_344
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 839
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 841
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 844
    move-result-object v0

    .line 845
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 848
    throw p1

    .line 849
    :cond_350
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 851
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 853
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 856
    move-result-object v0

    .line 857
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 860
    throw p1

    .line 861
    :cond_35c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 863
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 865
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 868
    move-result-object v0

    .line 869
    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 872
    throw p1
.end method
