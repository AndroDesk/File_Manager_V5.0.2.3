.class public Lorg/jaudiotagger/audio/asf/io/AsfStreamer;
.super Ljava/lang/Object;
.source "AsfStreamer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-static {v0, v1, p3}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 15
    const-wide/16 v2, 0x18

    .line 17
    sub-long/2addr v0, v2

    .line 18
    invoke-static {p2, p3, v0, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 21
    return-void
.end method

.method private modifyFileHeader(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 10
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1, p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 17
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 28
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 31
    move-result-wide v2

    .line 32
    add-long/2addr v2, p3

    .line 33
    invoke-static {v2, v3, p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 36
    const-wide/16 p3, 0x30

    .line 38
    sub-long/2addr v0, p3

    .line 39
    invoke-static {p1, p2, v0, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 42
    return-void
.end method


# virtual methods
.method public createModifiedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    if-eqz v3, :cond_12

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_12
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 22
    move-result-object v3

    .line 23
    sget-object v5, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 25
    invoke-virtual {v5, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_123

    .line 31
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 34
    move-result-wide v5

    .line 35
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 38
    move-result-wide v7

    .line 39
    const/4 v9, 0x2

    .line 40
    new-array v9, v9, [B

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    .line 45
    move-result v10

    .line 46
    and-int/lit16 v10, v10, 0xff

    .line 48
    int-to-byte v10, v10

    .line 49
    const/4 v11, 0x0

    .line 50
    aput-byte v10, v9, v11

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    .line 55
    move-result v10

    .line 56
    and-int/lit16 v10, v10, 0xff

    .line 58
    int-to-byte v10, v10

    .line 59
    const/4 v12, 0x1

    .line 60
    aput-byte v10, v9, v12

    .line 62
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 64
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    const-wide/16 v14, 0x0

    .line 69
    move-wide/from16 v16, v14

    .line 71
    move-wide/from16 v18, v16

    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_49
    cmp-long v20, v14, v7

    .line 76
    if-gez v20, :cond_cf

    .line 78
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 81
    move-result-object v12

    .line 82
    sget-object v13, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 84
    invoke-virtual {v13, v12}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v13

    .line 88
    if-eqz v13, :cond_75

    .line 90
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 92
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 98
    move-result-wide v12

    .line 99
    invoke-static {v12, v13, v11}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 102
    const-wide/16 v21, 0x18

    .line 104
    sub-long v12, v12, v21

    .line 106
    invoke-static {v1, v11, v12, v13}, Lorg/jaudiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 109
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 112
    move-result-object v11

    .line 113
    move-wide/from16 v24, v7

    .line 115
    move-object/from16 v23, v9

    .line 117
    goto :goto_c5

    .line 118
    :cond_75
    move-object/from16 v22, v11

    .line 120
    const/4 v13, 0x0

    .line 121
    const/16 v21, 0x0

    .line 123
    :goto_7a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v11

    .line 127
    if-ge v13, v11, :cond_ba

    .line 129
    if-nez v21, :cond_ba

    .line 131
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 137
    invoke-interface {v11, v12}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    .line 140
    move-result v11

    .line 141
    if-eqz v11, :cond_af

    .line 143
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object v11

    .line 147
    check-cast v11, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 149
    invoke-interface {v11, v12, v1, v10}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 152
    move-result-object v11

    .line 153
    move-object/from16 v23, v9

    .line 155
    invoke-virtual {v11}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getChunkCountDifference()I

    .line 158
    move-result v9

    .line 159
    move-wide/from16 v24, v7

    .line 161
    int-to-long v7, v9

    .line 162
    add-long v18, v18, v7

    .line 164
    invoke-virtual {v11}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    .line 167
    move-result-wide v7

    .line 168
    add-long v16, v16, v7

    .line 170
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    const/16 v21, 0x1

    .line 175
    goto :goto_b3

    .line 176
    :cond_af
    move-wide/from16 v24, v7

    .line 178
    move-object/from16 v23, v9

    .line 180
    :goto_b3
    add-int/lit8 v13, v13, 0x1

    .line 182
    move-object/from16 v9, v23

    .line 184
    move-wide/from16 v7, v24

    .line 186
    goto :goto_7a

    .line 187
    :cond_ba
    move-wide/from16 v24, v7

    .line 189
    move-object/from16 v23, v9

    .line 191
    if-nez v21, :cond_c3

    .line 193
    invoke-direct {v0, v12, v1, v10}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;->copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 196
    :cond_c3
    move-object/from16 v11, v22

    .line 198
    :goto_c5
    const-wide/16 v7, 0x1

    .line 200
    add-long/2addr v14, v7

    .line 201
    move-object/from16 v9, v23

    .line 203
    move-wide/from16 v7, v24

    .line 205
    const/4 v12, 0x1

    .line 206
    goto/16 :goto_49

    .line 208
    :cond_cf
    move-wide/from16 v24, v7

    .line 210
    move-object/from16 v23, v9

    .line 212
    move-object/from16 v22, v11

    .line 214
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object v4

    .line 218
    move-wide/from16 v7, v16

    .line 220
    :goto_db
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_f9

    .line 226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 232
    const/4 v11, 0x0

    .line 233
    invoke-interface {v9, v11, v11, v10}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getChunkCountDifference()I

    .line 240
    move-result v12

    .line 241
    int-to-long v12, v12

    .line 242
    add-long v18, v18, v12

    .line 244
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    .line 247
    move-result-wide v12

    .line 248
    add-long/2addr v7, v12

    .line 249
    goto :goto_db

    .line 250
    :cond_f9
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 257
    add-long/2addr v5, v7

    .line 258
    invoke-static {v5, v6, v2}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 261
    add-long v3, v24, v18

    .line 263
    invoke-static {v3, v4, v2}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 266
    move-object/from16 v3, v23

    .line 268
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 271
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 273
    move-object/from16 v13, v22

    .line 275
    invoke-direct {v3, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 278
    invoke-direct {v0, v3, v2, v7, v8}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;->modifyFileHeader(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 281
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 288
    invoke-static/range {p1 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->flush(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 291
    return-void

    .line 292
    :cond_123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 294
    const-string v2, "No ASF header object."

    .line 296
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v1
.end method
