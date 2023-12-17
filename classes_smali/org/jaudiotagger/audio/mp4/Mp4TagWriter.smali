.class public Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;
.source "Mp4TagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.mp4"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    .line 11
    return-void
.end method

.method private adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p3

    .line 6
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 9
    const-wide/16 v0, 0x8

    .line 11
    if-eqz p4, :cond_29

    .line 13
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, p3

    .line 18
    invoke-virtual {p4, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 21
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 28
    move-result-wide v4

    .line 29
    sub-long/2addr v2, v4

    .line 30
    sub-long/2addr v2, v0

    .line 31
    long-to-int v2, v2

    .line 32
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    .line 38
    move-result-object p4

    .line 39
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 42
    :cond_29
    if-eqz p5, :cond_48

    .line 44
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 47
    move-result p4

    .line 48
    add-int/2addr p4, p3

    .line 49
    invoke-virtual {p5, p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 52
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 55
    move-result-wide p3

    .line 56
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 59
    move-result-wide v2

    .line 60
    sub-long/2addr p3, v2

    .line 61
    sub-long/2addr p3, v0

    .line 62
    long-to-int p1, p3

    .line 63
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 73
    :cond_48
    return-void
.end method

.method private checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;)V
    .registers 14

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Checking file has been written correctly"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 8
    :try_start_7
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_150

    .line 24
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 31
    move-result v4

    .line 32
    if-ne v3, v4, :cond_144

    .line 34
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_138

    .line 44
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_12c

    .line 54
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStco()Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 57
    move-result-object v0

    .line 58
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v5, "stco:Original First Offset"

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 73
    move-result v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 84
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v5, "stco:Original Diff"

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 99
    move-result v5

    .line 100
    int-to-long v5, v5

    .line 101
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 104
    move-result-wide v7

    .line 105
    sub-long/2addr v5, v7

    .line 106
    long-to-int v5, v5

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 117
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v5, "stco:Original Mdat Pos"

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 132
    move-result-wide v5

    .line 133
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 143
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v5, "stco:New First Offset"

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 158
    move-result v5

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 169
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v5, "stco:New Diff"

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 184
    move-result v5

    .line 185
    int-to-long v5, v5

    .line 186
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 189
    move-result-wide v7

    .line 190
    sub-long/2addr v5, v7

    .line 191
    long-to-int v5, v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 202
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const-string v5, "stco:New Mdat Pos"

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 217
    move-result-wide v5

    .line 218
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 231
    move-result p4

    .line 232
    int-to-long v3, p4

    .line 233
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 236
    move-result-wide v5

    .line 237
    sub-long/2addr v3, v5

    .line 238
    long-to-int p2, v3

    .line 239
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 242
    move-result p4

    .line 243
    int-to-long v3, p4

    .line 244
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 247
    move-result-wide v5
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f7} :catch_15e
    .catchall {:try_start_7 .. :try_end_f7} :catchall_15c

    .line 248
    sub-long/2addr v3, v5

    .line 249
    int-to-long v5, p2

    .line 250
    cmp-long p2, v3, v5

    .line 252
    if-nez p2, :cond_10b

    .line 254
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 257
    invoke-virtual {p3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 260
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    .line 262
    const-string p2, "File has been written correctly"

    .line 264
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 267
    return-void

    .line 268
    :cond_10b
    :try_start_10b
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    .line 271
    move-result p2

    .line 272
    int-to-long v3, p2

    .line 273
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 276
    move-result-wide v7

    .line 277
    sub-long/2addr v3, v7

    .line 278
    sub-long/2addr v3, v5

    .line 279
    long-to-int p2, v3

    .line 280
    new-instance p4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 282
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 284
    const/4 v2, 0x1

    .line 285
    new-array v2, v2, [Ljava/lang/Object;

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object p2

    .line 291
    aput-object p2, v2, v1

    .line 293
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    move-result-object p2

    .line 297
    invoke-direct {p4, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 300
    throw p4

    .line 301
    :cond_12c
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 303
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 305
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 308
    move-result-object p4

    .line 309
    invoke-direct {p2, p4}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 312
    throw p2

    .line 313
    :cond_138
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 315
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 317
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 320
    move-result-object p4

    .line 321
    invoke-direct {p2, p4}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 324
    throw p2

    .line 325
    :cond_144
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 327
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 329
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 332
    move-result-object p4

    .line 333
    invoke-direct {p2, p4}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 336
    throw p2

    .line 337
    :cond_150
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 339
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 341
    invoke-virtual {p4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 344
    move-result-object p4

    .line 345
    invoke-direct {p2, p4}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 348
    throw p2
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_15c} :catch_15e
    .catchall {:try_start_10b .. :try_end_15c} :catchall_15c

    .line 349
    :catchall_15c
    move-exception p2

    .line 350
    goto :goto_18d

    .line 351
    :catch_15e
    move-exception p2

    .line 352
    :try_start_15f
    instance-of p4, p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 354
    if-eqz p4, :cond_166

    .line 356
    check-cast p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 358
    throw p2

    .line 359
    :cond_166
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    new-instance p4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 371
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, ":"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object p2

    .line 394
    invoke-direct {p4, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    .line 397
    throw p4
    :try_end_18d
    .catchall {:try_start_15f .. :try_end_18d} :catchall_15c

    .line 398
    :goto_18d
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 401
    invoke-virtual {p3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 404
    throw p2
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    .line 3
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 6
    move-result p2

    .line 7
    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 10
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 21
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 28
    return-void
.end method

.method private createMetadataAtoms(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 4
    move-result p2

    .line 5
    add-int/2addr p2, p3

    .line 6
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 9
    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5d

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 21
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 27
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_8

    .line 37
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 43
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 49
    if-eqz v2, :cond_8

    .line 51
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 57
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 63
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_8

    .line 73
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 79
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 89
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 92
    move-result p1

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    const/4 p1, 0x0

    .line 95
    :goto_5e
    return p1
.end method

.method private writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 10

    .line 1
    if-eqz p3, :cond_6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 6
    goto :goto_19

    .line 7
    :cond_6
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 18
    move-result-wide v4

    .line 19
    sub-long v4, v0, v4

    .line 21
    move-object v0, p2

    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 26
    :goto_19
    return-void
.end method

.method private writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V
    .registers 14

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 6
    int-to-long v0, p4

    .line 7
    const-wide/16 v4, 0x0

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p1

    .line 11
    move-wide v6, v0

    .line 12
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 15
    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 18
    invoke-virtual {p2, p5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 21
    add-int/2addr p4, p3

    .line 22
    int-to-long p2, p4

    .line 23
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 26
    return-void
.end method

.method private writeMetadataSameSize(Ljava/nio/ByteBuffer;JJLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 19

    .line 1
    move-wide v6, p4

    .line 2
    move-object/from16 v8, p6

    .line 4
    move-object/from16 v9, p7

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    move-object/from16 v0, p7

    .line 15
    move-object/from16 v1, p6

    .line 17
    move-wide v4, p4

    .line 18
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 21
    invoke-virtual {v9, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 24
    move-object v0, p1

    .line 25
    invoke-virtual {v9, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 28
    add-long v0, v6, p2

    .line 30
    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 33
    move-object v0, p0

    .line 34
    move-object/from16 v1, p8

    .line 36
    invoke-direct {p0, v8, v9, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 39
    return-void
.end method

.method private writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .registers 14

    .line 1
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    .line 13
    move-result-wide v6

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p1

    .line 16
    move-wide v8, v0

    .line 17
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 20
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    .line 23
    move-result-wide v2

    .line 24
    add-long/2addr v2, v0

    .line 25
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 31
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 38
    move-result p3

    .line 39
    int-to-long v2, p3

    .line 40
    add-long/2addr v0, v2

    .line 41
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 44
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    .line 51
    move-result-wide v0

    .line 52
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 55
    move-result-wide v2

    .line 56
    sub-long v6, v0, v2

    .line 58
    move-object v2, p2

    .line 59
    move-object v3, p1

    .line 60
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 63
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 6
    :try_start_5
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_8
    .catch Lorg/jaudiotagger/audio/exceptions/CannotWriteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 9
    return-void

    .line 10
    :catch_9
    move-exception p1

    .line 11
    new-instance p2, Ljava/io/IOException;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p2
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 37

    move-object/from16 v10, p0

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Started writing tag data"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 4
    :try_start_11
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v2, 0x0

    move-object/from16 v12, p2

    invoke-direct {v1, v12, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V
    :try_end_19
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_11 .. :try_end_19} :catch_557

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v13

    if-eqz v13, :cond_54a

    .line 6
    iget-object v3, v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v7

    .line 9
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    .line 11
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v14, v5

    .line 12
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStco()Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    move-result-object v5

    .line 13
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 14
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v19

    .line 15
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v20

    .line 16
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    move-object/from16 p1, v5

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    move-object/from16 v21, v5

    .line 18
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v1, v5}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    if-eqz v19, :cond_ea

    if-eqz v20, :cond_d9

    if-eqz v6, :cond_af

    .line 20
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    .line 21
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v5

    long-to-int v5, v5

    move-wide/from16 v22, v14

    int-to-long v14, v5

    .line 22
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v16, 0x8

    add-long v24, v24, v16

    sub-long v14, v14, v24

    long-to-int v6, v14

    move v14, v2

    move v15, v5

    goto/16 :goto_11d

    :cond_af
    move-wide/from16 v22, v14

    const-wide/16 v16, 0x8

    if-eqz v2, :cond_c5

    .line 23
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/2addr v2, v5

    int-to-long v5, v2

    .line 24
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    goto :goto_d3

    .line 25
    :cond_c5
    invoke-virtual/range {v20 .. v20}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v5

    long-to-int v2, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    int-to-long v5, v2

    .line 26
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    :goto_d3
    add-long v14, v14, v16

    sub-long/2addr v5, v14

    long-to-int v6, v5

    move v15, v2

    goto :goto_11c

    :cond_d9
    move-wide/from16 v22, v14

    .line 27
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v6, v2, -0x8

    .line 28
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    goto :goto_114

    :cond_ea
    move-wide/from16 v22, v14

    if-eqz v20, :cond_106

    .line 29
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    add-int/2addr v5, v2

    int-to-long v14, v5

    .line 30
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v16, 0x8

    add-long v24, v24, v16

    sub-long v14, v14, v24

    long-to-int v6, v14

    move v15, v5

    goto :goto_11c

    .line 31
    :cond_106
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v6, v2, -0x8

    .line 32
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    :goto_114
    move/from16 v24, v6

    int-to-long v5, v2

    add-long/2addr v14, v5

    long-to-int v2, v14

    move v15, v2

    move/from16 v6, v24

    :goto_11c
    const/4 v14, 0x0

    .line 33
    :goto_11d
    invoke-direct {v10, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I

    move-result v5

    .line 34
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_129
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_158

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 35
    invoke-virtual/range {v24 .. v24}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v25

    check-cast v25, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 36
    invoke-virtual/range {v25 .. v25}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v25

    if-eqz v25, :cond_155

    .line 37
    invoke-virtual/range {v24 .. v24}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 38
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v24

    move-wide/from16 v25, v3

    .line 39
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v1, v2

    move/from16 v3, v24

    goto :goto_15c

    :cond_155
    move-wide/from16 v25, v3

    goto :goto_129

    :cond_158
    move-wide/from16 v25, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_15c
    if-lez v3, :cond_175

    move/from16 v24, v5

    int-to-long v4, v1

    .line 40
    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v27

    cmp-long v27, v4, v27

    if-lez v27, :cond_16c

    :goto_169
    const/16 v18, 0x0

    goto :goto_17e

    .line 41
    :cond_16c
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v27

    cmp-long v4, v4, v27

    if-gez v4, :cond_17c

    goto :goto_169

    :cond_175
    move/from16 v24, v5

    .line 42
    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    long-to-int v1, v4

    :cond_17c
    const/16 v18, 0x1

    .line 43
    :goto_17e
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Read header successfully ready for writing"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-ne v14, v7, :cond_1a0

    .line 44
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 1:Same Size"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    int-to-long v3, v14

    int-to-long v5, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v12, p1

    move-object/from16 v9, v21

    move-object v7, v0

    move-object v8, v11

    .line 45
    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/ByteBuffer;JJLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object v8, v0

    :goto_19d
    move-object v12, v10

    goto/16 :goto_53c

    :cond_1a0
    move-object/from16 v5, p1

    move/from16 p1, v1

    move-object/from16 v4, v21

    const-wide/16 v1, 0x0

    if-le v14, v7, :cond_2b0

    if-lez v24, :cond_204

    .line 46
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing:Option 2:Smaller Size have free atom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object v9, v4

    move v4, v14

    move-object v12, v5

    move/from16 v6, v24

    move v5, v15

    move v15, v6

    move-object v6, v8

    .line 47
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    sub-int/2addr v14, v7

    add-int/2addr v14, v15

    .line 48
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v14, v14, -0x8

    invoke-direct {v1, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 49
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 50
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 51
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v15

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 52
    invoke-direct {v10, v0, v11, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object v8, v0

    move-object/from16 p1, v12

    goto :goto_19d

    :cond_204
    sub-int v7, v14, v7

    add-int/lit8 v3, v7, -0x8

    if-lez v3, :cond_23d

    .line 53
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v0

    move v7, v3

    move-object v3, v11

    move-object v9, v4

    move v4, v14

    move-object v12, v5

    move v5, v15

    move-object v6, v8

    .line 54
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    .line 55
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v1, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 56
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 57
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 58
    invoke-direct {v10, v0, v11, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object v6, v0

    move-object v5, v10

    move-object v10, v12

    goto/16 :goto_2aa

    :cond_23d
    move-object/from16 v32, v5

    move-object v5, v4

    move-object/from16 v4, v32

    .line 59
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    move-object/from16 p1, v4

    const-string v4, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v16, 0x0

    .line 61
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v21

    move-object v2, v11

    move-object v3, v0

    move-object/from16 v1, p1

    move-object/from16 v29, v5

    move-wide/from16 v4, v16

    move-object/from16 v24, v0

    move v0, v6

    move v10, v7

    move-wide/from16 v6, v21

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 62
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 63
    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_27c

    neg-int v2, v10

    .line 64
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_27c
    neg-int v4, v10

    move-object v10, v1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    .line 65
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 66
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 67
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v11, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 70
    invoke-virtual {v11, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/2addr v15, v14

    int-to-long v0, v15

    move-object/from16 v6, v24

    .line 71
    invoke-virtual {v6, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v5, p0

    move-object/from16 v4, v29

    .line 72
    invoke-direct {v5, v6, v11, v4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    :goto_2aa
    move-object v12, v5

    move-object v8, v6

    move-object/from16 p1, v10

    goto/16 :goto_53c

    :cond_2b0
    move/from16 v21, v6

    move-object v6, v0

    move/from16 v0, v24

    move-object/from16 v32, v10

    move-object v10, v5

    move-object/from16 v5, v32

    sub-int/2addr v7, v14

    add-int/lit8 v1, v0, -0x8

    if-gt v7, v1, :cond_313

    sub-int v7, v0, v7

    .line 73
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v11

    move-object v9, v4

    move v4, v14

    move-object v12, v5

    move v5, v15

    move-object v14, v6

    move-object v6, v8

    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    .line 75
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v7, v7, -0x8

    invoke-direct {v1, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 76
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 77
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 78
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {v14, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 79
    invoke-direct {v12, v14, v11, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object/from16 p1, v10

    move-object v8, v14

    goto/16 :goto_53c

    :cond_313
    move-object v1, v5

    sub-int/2addr v7, v0

    const-wide/16 v1, 0x0

    .line 80
    invoke-virtual {v6, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v27, 0x0

    const-wide/16 v1, 0x8

    sub-long v1, v25, v1

    move-wide/from16 v16, v1

    move-object v2, v11

    move v1, v3

    move-object v3, v6

    move-object/from16 v30, v4

    move-wide/from16 v4, v27

    move/from16 v24, v0

    move-object/from16 v31, v6

    move v0, v7

    move-wide/from16 v6, v16

    .line 81
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-wide/from16 v3, v16

    .line 82
    invoke-virtual {v11, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-nez v19, :cond_3de

    .line 83
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v3

    .line 86
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 88
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v7, v5, v0

    if-eqz v18, :cond_381

    add-int/lit8 v0, v1, -0x8

    if-ge v0, v7, :cond_390

    if-eq v1, v7, :cond_390

    .line 89
    :cond_381
    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v5

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v16

    cmp-long v0, v5, v16

    if-lez v0, :cond_390

    .line 90
    invoke-virtual {v10, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    .line 91
    :cond_390
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v9, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 92
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 93
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move/from16 v6, v21

    .line 94
    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v11, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 96
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 97
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 98
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 99
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move v0, v1

    move v1, v7

    move-object/from16 v32, v10

    move/from16 v10, p1

    move-object/from16 p1, v32

    goto :goto_428

    :cond_3de
    move/from16 v6, v21

    .line 101
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 5.2;udta atom exists"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-eqz v18, :cond_3ef

    add-int/lit8 v3, v1, -0x8

    if-ge v3, v0, :cond_3fe

    if-eq v1, v0, :cond_3fe

    .line 102
    :cond_3ef
    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3fe

    .line 103
    invoke-virtual {v10, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_3fe
    move-object/from16 v7, p0

    move/from16 v4, p1

    move v5, v1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object/from16 p1, v10

    move v10, v4

    move v4, v0

    move/from16 v16, v0

    move v0, v5

    move-object/from16 v5, v19

    move v7, v6

    move-object/from16 v6, v20

    .line 104
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 105
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 106
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {v11, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move/from16 v1, v16

    .line 109
    :goto_428
    invoke-virtual {v11, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/2addr v14, v15

    int-to-long v2, v14

    move-object/from16 v8, v31

    .line 110
    invoke-virtual {v8, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 111
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move/from16 v4, v24

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v8, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v9, v30

    if-eqz v9, :cond_481

    .line 112
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 113
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object v2, v11

    move-object v3, v8

    move-object/from16 v12, p0

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 114
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long v2, v2, v16

    invoke-virtual {v11, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 115
    invoke-direct {v12, v11, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 116
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v8, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 117
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v6, v22, v2

    .line 118
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object v2, v11

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_49d

    :cond_481
    move-object/from16 v12, p0

    .line 119
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v16, v22, v2

    .line 120
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object v2, v11

    move-object v3, v8

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 121
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long v2, v2, v16

    invoke-virtual {v11, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_49d
    if-eqz v18, :cond_522

    if-le v10, v15, :cond_522

    add-int/lit8 v3, v0, -0x8

    if-lt v3, v1, :cond_4e1

    .line 122
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 123
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 124
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 125
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 126
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 127
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v6, v0, v2

    move-object v2, v11

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_53c

    :cond_4e1
    if-ne v0, v1, :cond_507

    .line 128
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 130
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v6, v0, v2

    move-object v2, v11

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_53c

    .line 131
    :cond_507
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 8;Larger Size cannot use top free atom"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v6, v0, v2

    move-object v2, v11

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_53c

    .line 133
    :cond_522
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata so cant use it"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v6, v0, v2

    move-object v2, v11

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 135
    :goto_53c
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 136
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    .line 137
    invoke-direct {v12, v0, v13, v11, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;)V

    return-void

    :cond_54a
    move-object v12, v10

    .line 138
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_557
    move-exception v0

    move-object v12, v10

    .line 139
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
