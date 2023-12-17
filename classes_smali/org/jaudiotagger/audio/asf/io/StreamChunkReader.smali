.class public Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "StreamChunkReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 29

    .line 1
    move-object/from16 v0, p2

    .line 3
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 6
    move-result-object v1

    .line 7
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 13
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_1e

    .line 19
    sget-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 21
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1b

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    goto/16 :goto_107

    .line 31
    :cond_1e
    :goto_1e
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 34
    move-result-object v4

    .line 35
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 38
    move-result-wide v5

    .line 39
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 42
    move-result-wide v7

    .line 43
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 46
    move-result-wide v9

    .line 47
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 50
    move-result v11

    .line 51
    and-int/lit8 v12, v11, 0x7f

    .line 53
    const v13, 0x8000

    .line 56
    and-int/2addr v11, v13

    .line 57
    if-eqz v11, :cond_3c

    .line 59
    const/4 v11, 0x1

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 v11, 0x0

    .line 62
    :goto_3d
    const-wide/16 v13, 0x4

    .line 64
    invoke-virtual {v0, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 67
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_9f

    .line 73
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 75
    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 78
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 81
    move-result v3

    .line 82
    int-to-long v13, v3

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 86
    move-result v3

    .line 87
    move-wide v15, v5

    .line 88
    int-to-long v5, v3

    .line 89
    move-wide/from16 v17, v7

    .line 91
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 94
    move-result-wide v7

    .line 95
    move-wide/from16 v19, v9

    .line 97
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 100
    move-result-wide v9

    .line 101
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 104
    move-result v3

    .line 105
    move/from16 v21, v11

    .line 107
    move/from16 p1, v12

    .line 109
    int-to-long v11, v3

    .line 110
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 113
    move-result v3

    .line 114
    move-wide/from16 v22, v15

    .line 116
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 119
    move-result v15

    .line 120
    move-object/from16 v16, v1

    .line 122
    new-array v1, v15, [B

    .line 124
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 127
    invoke-virtual {v2, v13, v14}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    .line 130
    invoke-virtual {v2, v5, v6}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setChannelCount(J)V

    .line 133
    invoke-virtual {v2, v7, v8}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    .line 136
    invoke-virtual {v2, v9, v10}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    .line 139
    invoke-virtual {v2, v4}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setErrorConcealment(Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 142
    invoke-virtual {v2, v11, v12}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    .line 145
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    .line 148
    invoke-virtual {v2, v1}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->setCodecData([B)V

    .line 151
    add-int/lit8 v15, v15, 0x12

    .line 153
    int-to-long v3, v15

    .line 154
    move/from16 v5, p1

    .line 156
    move-object v1, v2

    .line 157
    move-object/from16 v2, v16

    .line 159
    goto :goto_dc

    .line 160
    :cond_9f
    move-object/from16 v16, v1

    .line 162
    move-wide/from16 v22, v5

    .line 164
    move-wide/from16 v17, v7

    .line 166
    move-wide/from16 v19, v9

    .line 168
    move/from16 v21, v11

    .line 170
    move/from16 p1, v12

    .line 172
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;

    .line 174
    move-object/from16 v2, v16

    .line 176
    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 179
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 182
    move-result-wide v3

    .line 183
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 186
    move-result-wide v5

    .line 187
    const-wide/16 v7, 0x1

    .line 189
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 192
    const-wide/16 v7, 0x2

    .line 194
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 197
    const-wide/16 v7, 0x10

    .line 199
    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 202
    const/4 v7, 0x4

    .line 203
    new-array v7, v7, [B

    .line 205
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 208
    invoke-virtual {v1, v3, v4}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    .line 211
    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    .line 214
    invoke-virtual {v1, v7}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->setCodecId([B)V

    .line 217
    const-wide/16 v3, 0x1f

    .line 219
    move/from16 v5, p1

    .line 221
    :goto_dc
    invoke-virtual {v1, v5}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setStreamNumber(I)V

    .line 224
    move-wide/from16 v5, v19

    .line 226
    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    .line 229
    move-wide/from16 v5, v17

    .line 231
    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    .line 234
    move-wide/from16 v5, v22

    .line 236
    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setTimeOffset(J)V

    .line 239
    move/from16 v11, v21

    .line 241
    invoke-virtual {v1, v11}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->setContentEncrypted(Z)V

    .line 244
    move-wide/from16 v5, p3

    .line 246
    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/asf/data/Chunk;->setPosition(J)V

    .line 249
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    .line 252
    move-result-wide v5

    .line 253
    const-wide/16 v7, 0x18

    .line 255
    sub-long/2addr v5, v7

    .line 256
    sub-long/2addr v5, v3

    .line 257
    const-wide/16 v2, 0x36

    .line 259
    sub-long/2addr v5, v2

    .line 260
    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 263
    move-object v0, v1

    .line 264
    :goto_107
    return-object v0
.end method
