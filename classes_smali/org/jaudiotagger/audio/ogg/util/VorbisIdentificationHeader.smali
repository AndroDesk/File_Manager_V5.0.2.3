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

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->decodeHeader([B)V

    .line 10
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

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "packetType"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x6

    .line 28
    const-string v3, "ISO-8859-1"

    .line 30
    invoke-static {p1, v1, v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 36
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    .line 39
    move-result v3

    .line 40
    if-ne v0, v3, :cond_172

    .line 42
    const-string v0, "vorbis"

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_172

    .line 50
    const/4 v0, 0x7

    .line 51
    aget-byte v0, p1, v0

    .line 53
    const/16 v2, 0x8

    .line 55
    aget-byte v3, p1, v2

    .line 57
    shl-int/2addr v3, v2

    .line 58
    add-int/2addr v0, v3

    .line 59
    const/16 v3, 0x9

    .line 61
    aget-byte v3, p1, v3

    .line 63
    const/16 v4, 0x10

    .line 65
    shl-int/2addr v3, v4

    .line 66
    add-int/2addr v0, v3

    .line 67
    const/16 v3, 0xa

    .line 69
    aget-byte v3, p1, v3

    .line 71
    const/16 v5, 0x18

    .line 73
    shl-int/2addr v3, v5

    .line 74
    add-int/2addr v0, v3

    .line 75
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    .line 77
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 79
    const-string v3, "vorbisVersion"

    .line 81
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object v3

    .line 85
    iget v6, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    const/16 v0, 0xb

    .line 99
    aget-byte v0, p1, v0

    .line 101
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    .line 107
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 109
    const-string v3, "audioChannels"

    .line 111
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v3

    .line 115
    iget v6, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    .line 117
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    const/16 v0, 0xc

    .line 129
    aget-byte v3, p1, v0

    .line 131
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 134
    move-result v3

    .line 135
    const/16 v6, 0xd

    .line 137
    aget-byte v7, p1, v6

    .line 139
    invoke-direct {p0, v7}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 142
    move-result v7

    .line 143
    shl-int/2addr v7, v2

    .line 144
    add-int/2addr v3, v7

    .line 145
    const/16 v7, 0xe

    .line 147
    aget-byte v8, p1, v7

    .line 149
    invoke-direct {p0, v8}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 152
    move-result v8

    .line 153
    shl-int/2addr v8, v4

    .line 154
    add-int/2addr v3, v8

    .line 155
    const/16 v8, 0xf

    .line 157
    aget-byte v8, p1, v8

    .line 159
    invoke-direct {p0, v8}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 162
    move-result v8

    .line 163
    shl-int/2addr v8, v5

    .line 164
    add-int/2addr v3, v8

    .line 165
    iput v3, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    .line 167
    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 169
    const-string v8, "audioSampleRate"

    .line 171
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object v9

    .line 175
    iget v10, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    .line 177
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v3, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 187
    sget-object v3, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 189
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move-result-object v8

    .line 193
    aget-byte v0, p1, v0

    .line 195
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v0, " "

    .line 200
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    aget-byte v6, p1, v6

    .line 205
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    aget-byte v0, p1, v7

    .line 213
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 223
    aget-byte v0, p1, v4

    .line 225
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 228
    move-result v0

    .line 229
    const/16 v3, 0x11

    .line 231
    aget-byte v3, p1, v3

    .line 233
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 236
    move-result v3

    .line 237
    shl-int/2addr v3, v2

    .line 238
    add-int/2addr v0, v3

    .line 239
    const/16 v3, 0x12

    .line 241
    aget-byte v3, p1, v3

    .line 243
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 246
    move-result v3

    .line 247
    shl-int/2addr v3, v4

    .line 248
    add-int/2addr v0, v3

    .line 249
    const/16 v3, 0x13

    .line 251
    aget-byte v3, p1, v3

    .line 253
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 256
    move-result v3

    .line 257
    shl-int/2addr v3, v5

    .line 258
    add-int/2addr v0, v3

    .line 259
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    .line 261
    const/16 v0, 0x14

    .line 263
    aget-byte v0, p1, v0

    .line 265
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 268
    move-result v0

    .line 269
    const/16 v3, 0x15

    .line 271
    aget-byte v3, p1, v3

    .line 273
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 276
    move-result v3

    .line 277
    shl-int/lit8 v2, v3, 0x8

    .line 279
    add-int/2addr v0, v2

    .line 280
    const/16 v2, 0x16

    .line 282
    aget-byte v2, p1, v2

    .line 284
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 287
    move-result v2

    .line 288
    shl-int/2addr v2, v4

    .line 289
    add-int/2addr v0, v2

    .line 290
    const/16 v2, 0x17

    .line 292
    aget-byte v2, p1, v2

    .line 294
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 297
    move-result v2

    .line 298
    shl-int/2addr v2, v5

    .line 299
    add-int/2addr v0, v2

    .line 300
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    .line 302
    aget-byte v0, p1, v5

    .line 304
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 307
    move-result v0

    .line 308
    const/16 v2, 0x19

    .line 310
    aget-byte v2, p1, v2

    .line 312
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 315
    move-result v2

    .line 316
    shl-int/lit8 v2, v2, 0x8

    .line 318
    add-int/2addr v0, v2

    .line 319
    const/16 v2, 0x1a

    .line 321
    aget-byte v2, p1, v2

    .line 323
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 326
    move-result v2

    .line 327
    shl-int/2addr v2, v4

    .line 328
    add-int/2addr v0, v2

    .line 329
    const/16 v2, 0x1b

    .line 331
    aget-byte v2, p1, v2

    .line 333
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    .line 336
    move-result v2

    .line 337
    shl-int/2addr v2, v5

    .line 338
    add-int/2addr v0, v2

    .line 339
    iput v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    .line 341
    const/16 v0, 0x1d

    .line 343
    aget-byte p1, p1, v0

    .line 345
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    const-string v3, "framingFlag"

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 367
    if-eqz p1, :cond_172

    .line 369
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    .line 371
    :cond_172
    return-void
.end method

.method public getChannelNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    .line 3
    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/ogg/VorbisVersion;->values()[Lorg/jaudiotagger/audio/ogg/VorbisVersion;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    .line 7
    aget-object v0, v0, v1

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/VorbisVersion;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getMaxBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    .line 3
    return v0
.end method

.method public getMinBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    .line 3
    return v0
.end method

.method public getNominalBitrate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    .line 3
    return v0
.end method

.method public getSamplingRate()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    .line 3
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    .line 3
    return v0
.end method
