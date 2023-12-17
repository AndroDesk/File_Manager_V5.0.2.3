.class public Lcom/junrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private currentHeaderIndex:I

.field private final dataIO:Lcom/junrar/unpack/ComprDataIO;

.field private file:Ljava/io/File;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lcom/junrar/rarfile/MarkHeader;

.field private newMhd:Lcom/junrar/rarfile/MainHeader;

.field private rof:Lcom/junrar/io/IReadOnlyAccess;

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lcom/junrar/unpack/Unpack;

.field private final unrarCallback:Lcom/junrar/UnrarCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/junrar/Archive;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/junrar/Archive;-><init>(Ljava/io/File;Lcom/junrar/UnrarCallback;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/junrar/UnrarCallback;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 4
    invoke-virtual {p0, p1}, Lcom/junrar/Archive;->setFile(Ljava/io/File;)V

    .line 5
    iput-object p2, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    .line 6
    new-instance p1, Lcom/junrar/unpack/ComprDataIO;

    invoke-direct {p1, p0}, Lcom/junrar/unpack/ComprDataIO;-><init>(Lcom/junrar/Archive;)V

    iput-object p1, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    return-void
.end method

.method private doExtractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 3
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    .line 6
    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 8
    invoke-virtual {p2, p1}, Lcom/junrar/unpack/ComprDataIO;->init(Lcom/junrar/rarfile/FileHeader;)V

    .line 11
    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 13
    invoke-virtual {p0}, Lcom/junrar/Archive;->isOldFormat()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-wide/16 v0, -0x1

    .line 24
    :goto_17
    invoke-virtual {p2, v0, v1}, Lcom/junrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    .line 27
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 29
    if-nez p2, :cond_27

    .line 31
    new-instance p2, Lcom/junrar/unpack/Unpack;

    .line 33
    iget-object v0, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 35
    invoke-direct {p2, v0}, Lcom/junrar/unpack/Unpack;-><init>(Lcom/junrar/unpack/ComprDataIO;)V

    .line 38
    iput-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 40
    :cond_27
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_33

    .line 46
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p2, v0}, Lcom/junrar/unpack/Unpack;->init([B)V

    .line 52
    :cond_33
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 54
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    .line 57
    move-result-wide v0

    .line 58
    invoke-virtual {p2, v0, v1}, Lcom/junrar/unpack/Unpack;->setDestSize(J)V

    .line 61
    :try_start_3c
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 63
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    .line 70
    move-result p1

    .line 71
    invoke-virtual {p2, v0, p1}, Lcom/junrar/unpack/Unpack;->doUnpack(IZ)V

    .line 74
    iget-object p1, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 76
    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_5d

    .line 86
    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 88
    invoke-virtual {p2}, Lcom/junrar/unpack/ComprDataIO;->getPackedCRC()J

    .line 91
    move-result-wide v0

    .line 92
    :goto_5b
    not-long v0, v0

    .line 93
    goto :goto_64

    .line 94
    :cond_5d
    iget-object p2, p0, Lcom/junrar/Archive;->dataIO:Lcom/junrar/unpack/ComprDataIO;

    .line 96
    invoke-virtual {p2}, Lcom/junrar/unpack/ComprDataIO;->getUnpFileCRC()J

    .line 99
    move-result-wide v0

    .line 100
    goto :goto_5b

    .line 101
    :goto_64
    invoke-virtual {p1}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    .line 104
    move-result p1

    .line 105
    int-to-long p1, p1

    .line 106
    cmp-long p1, v0, p1

    .line 108
    if-nez p1, :cond_6e

    .line 110
    return-void

    .line 111
    :cond_6e
    new-instance p1, Lcom/junrar/exception/RarException;

    .line 113
    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 115
    invoke-direct {p1, p2}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    .line 118
    throw p1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_76} :catch_76

    .line 119
    :catch_76
    move-exception p1

    .line 120
    iget-object p2, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 122
    invoke-virtual {p2}, Lcom/junrar/unpack/Unpack;->cleanUp()V

    .line 125
    instance-of p2, p1, Lcom/junrar/exception/RarException;

    .line 127
    if-eqz p2, :cond_83

    .line 129
    check-cast p1, Lcom/junrar/exception/RarException;

    .line 131
    throw p1

    .line 132
    :cond_83
    new-instance p2, Lcom/junrar/exception/RarException;

    .line 134
    invoke-direct {p2, p1}, Lcom/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    .line 137
    throw p2
.end method

.method private readHeaders()V
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    .line 4
    iput-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    .line 6
    iget-object v1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    .line 14
    iget-object v2, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 19
    move-result-wide v2

    .line 20
    :goto_13
    const/4 v4, 0x7

    .line 21
    new-array v5, v4, [B

    .line 23
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 25
    invoke-interface {v6}, Lcom/junrar/io/IReadOnlyAccess;->getPosition()J

    .line 28
    move-result-wide v6

    .line 29
    cmp-long v8, v6, v2

    .line 31
    if-ltz v8, :cond_21

    .line 33
    goto :goto_29

    .line 34
    :cond_21
    iget-object v8, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 36
    invoke-interface {v8, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_2a

    .line 42
    :goto_29
    return-void

    .line 43
    :cond_2a
    new-instance v8, Lcom/junrar/rarfile/BaseBlock;

    .line 45
    invoke-direct {v8, v5}, Lcom/junrar/rarfile/BaseBlock;-><init>([B)V

    .line 48
    invoke-virtual {v8, v6, v7}, Lcom/junrar/rarfile/BaseBlock;->setPositionInFile(J)V

    .line 51
    sget-object v5, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 53
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aget v6, v5, v6

    .line 63
    const/4 v7, 0x6

    .line 64
    const/16 v9, 0x8

    .line 66
    const/4 v10, 0x4

    .line 67
    packed-switch v6, :pswitch_data_1f2

    .line 70
    new-array v6, v10, [B

    .line 72
    iget-object v11, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 74
    invoke-interface {v11, v6, v10}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 77
    new-instance v11, Lcom/junrar/rarfile/BlockHeader;

    .line 79
    invoke-direct {v11, v8, v6}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 82
    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result v6

    .line 90
    aget v5, v5, v6

    .line 92
    goto/16 :goto_117

    .line 94
    :pswitch_5d  #0xa
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_64

    .line 100
    move v1, v10

    .line 101
    :cond_64
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6c

    .line 107
    add-int/lit8 v1, v1, 0x2

    .line 109
    :cond_6c
    if-lez v1, :cond_7b

    .line 111
    new-array v0, v1, [B

    .line 113
    iget-object v2, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 115
    invoke-interface {v2, v0, v1}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 118
    new-instance v1, Lcom/junrar/rarfile/EndArcHeader;

    .line 120
    invoke-direct {v1, v8, v0}, Lcom/junrar/rarfile/EndArcHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 123
    goto :goto_80

    .line 124
    :cond_7b
    new-instance v1, Lcom/junrar/rarfile/EndArcHeader;

    .line 126
    invoke-direct {v1, v8, v0}, Lcom/junrar/rarfile/EndArcHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 129
    :goto_80
    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void

    .line 135
    :pswitch_86  #0x9
    new-array v4, v7, [B

    .line 137
    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 139
    invoke-interface {v5, v4, v7}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 142
    new-instance v5, Lcom/junrar/rarfile/CommentHeader;

    .line 144
    invoke-direct {v5, v8, v4}, Lcom/junrar/rarfile/CommentHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 147
    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    .line 155
    move-result-wide v6

    .line 156
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 159
    move-result v4

    .line 160
    int-to-long v4, v4

    .line 161
    add-long/2addr v6, v4

    .line 162
    iget-object v4, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 164
    invoke-interface {v4, v6, v7}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 167
    goto/16 :goto_13

    .line 169
    :pswitch_a8  #0x8
    new-array v5, v4, [B

    .line 171
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 173
    invoke-interface {v6, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 176
    new-instance v4, Lcom/junrar/rarfile/AVHeader;

    .line 178
    invoke-direct {v4, v8, v5}, Lcom/junrar/rarfile/AVHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 181
    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 183
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    goto/16 :goto_13

    .line 188
    :pswitch_bb  #0x7
    new-array v4, v9, [B

    .line 190
    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 192
    invoke-interface {v5, v4, v9}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 195
    new-instance v5, Lcom/junrar/rarfile/SignHeader;

    .line 197
    invoke-direct {v5, v8, v4}, Lcom/junrar/rarfile/SignHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 200
    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 202
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    goto/16 :goto_13

    .line 207
    :pswitch_ce  #0x6
    invoke-virtual {v8}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_d5

    .line 213
    goto :goto_d6

    .line 214
    :cond_d5
    move v4, v7

    .line 215
    :goto_d6
    new-array v5, v4, [B

    .line 217
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 219
    invoke-interface {v6, v5, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 222
    new-instance v4, Lcom/junrar/rarfile/MainHeader;

    .line 224
    invoke-direct {v4, v8, v5}, Lcom/junrar/rarfile/MainHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;[B)V

    .line 227
    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 229
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iput-object v4, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    .line 234
    invoke-virtual {v4}, Lcom/junrar/rarfile/MainHeader;->isEncrypted()Z

    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_f1

    .line 240
    goto/16 :goto_13

    .line 242
    :cond_f1
    new-instance v0, Lcom/junrar/exception/RarException;

    .line 244
    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 246
    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    .line 249
    throw v0

    .line 250
    :pswitch_f9  #0x5
    new-instance v4, Lcom/junrar/rarfile/MarkHeader;

    .line 252
    invoke-direct {v4, v8}, Lcom/junrar/rarfile/MarkHeader;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 255
    iput-object v4, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    .line 257
    invoke-virtual {v4}, Lcom/junrar/rarfile/MarkHeader;->isSignature()Z

    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_10f

    .line 263
    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 265
    iget-object v5, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    .line 267
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    goto/16 :goto_13

    .line 272
    :cond_10f
    new-instance v0, Lcom/junrar/exception/RarException;

    .line 274
    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->badRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 276
    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    .line 279
    throw v0

    .line 280
    :goto_117
    const/4 v6, 0x1

    .line 281
    if-eq v5, v6, :cond_1c5

    .line 283
    const/4 v8, 0x2

    .line 284
    if-eq v5, v8, :cond_1c5

    .line 286
    const/4 v8, 0x3

    .line 287
    if-eq v5, v8, :cond_1a2

    .line 289
    if-ne v5, v10, :cond_193

    .line 291
    new-array v4, v8, [B

    .line 293
    iget-object v5, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 295
    invoke-interface {v5, v4, v8}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 298
    new-instance v5, Lcom/junrar/rarfile/SubBlockHeader;

    .line 300
    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    .line 303
    invoke-virtual {v5}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    .line 306
    sget-object v4, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 308
    invoke-virtual {v5}, Lcom/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 311
    move-result-object v10

    .line 312
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 315
    move-result v10

    .line 316
    aget v4, v4, v10

    .line 318
    if-eq v4, v6, :cond_17d

    .line 320
    if-eq v4, v8, :cond_165

    .line 322
    if-eq v4, v7, :cond_145

    .line 324
    goto/16 :goto_13

    .line 326
    :cond_145
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 329
    move-result v4

    .line 330
    add-int/lit8 v4, v4, -0x7

    .line 332
    add-int/lit8 v4, v4, -0x4

    .line 334
    add-int/lit8 v4, v4, -0x3

    .line 336
    new-array v6, v4, [B

    .line 338
    iget-object v7, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 340
    invoke-interface {v7, v6, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 343
    new-instance v4, Lcom/junrar/rarfile/UnixOwnersHeader;

    .line 345
    invoke-direct {v4, v5, v6}, Lcom/junrar/rarfile/UnixOwnersHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    .line 348
    invoke-virtual {v4}, Lcom/junrar/rarfile/UnixOwnersHeader;->print()V

    .line 351
    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 353
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    goto/16 :goto_13

    .line 358
    :cond_165
    const/16 v4, 0xa

    .line 360
    new-array v6, v4, [B

    .line 362
    iget-object v7, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 364
    invoke-interface {v7, v6, v4}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 367
    new-instance v4, Lcom/junrar/rarfile/EAHeader;

    .line 369
    invoke-direct {v4, v5, v6}, Lcom/junrar/rarfile/EAHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    .line 372
    invoke-virtual {v4}, Lcom/junrar/rarfile/EAHeader;->print()V

    .line 375
    iget-object v5, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 377
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    goto/16 :goto_13

    .line 382
    :cond_17d
    new-array v4, v9, [B

    .line 384
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 386
    invoke-interface {v6, v4, v9}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 389
    new-instance v6, Lcom/junrar/rarfile/MacInfoHeader;

    .line 391
    invoke-direct {v6, v5, v4}, Lcom/junrar/rarfile/MacInfoHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V

    .line 394
    invoke-virtual {v6}, Lcom/junrar/rarfile/MacInfoHeader;->print()V

    .line 397
    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 399
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    goto/16 :goto_13

    .line 404
    :cond_193
    sget-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    .line 406
    const-string v1, "Unknown Header"

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/junrar/exception/RarException;

    .line 413
    sget-object v1, Lcom/junrar/exception/RarException$RarExceptionType;->notRarArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 415
    invoke-direct {v0, v1}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    .line 418
    throw v0

    .line 419
    :cond_1a2
    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 422
    move-result v5

    .line 423
    sub-int/2addr v5, v4

    .line 424
    sub-int/2addr v5, v10

    .line 425
    new-array v4, v5, [B

    .line 427
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 429
    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 432
    new-instance v5, Lcom/junrar/rarfile/ProtectHeader;

    .line 434
    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/ProtectHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    .line 437
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    .line 440
    move-result-wide v6

    .line 441
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 444
    move-result v4

    .line 445
    int-to-long v4, v4

    .line 446
    add-long/2addr v6, v4

    .line 447
    iget-object v4, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 449
    invoke-interface {v4, v6, v7}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 452
    goto/16 :goto_13

    .line 454
    :cond_1c5
    invoke-virtual {v11}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 457
    move-result v5

    .line 458
    sub-int/2addr v5, v4

    .line 459
    sub-int/2addr v5, v10

    .line 460
    new-array v4, v5, [B

    .line 462
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 464
    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 467
    new-instance v5, Lcom/junrar/rarfile/FileHeader;

    .line 469
    invoke-direct {v5, v11, v4}, Lcom/junrar/rarfile/FileHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;[B)V

    .line 472
    iget-object v4, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 474
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    .line 480
    move-result-wide v6

    .line 481
    invoke-virtual {v5}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    .line 484
    move-result v4

    .line 485
    int-to-long v8, v4

    .line 486
    add-long/2addr v6, v8

    .line 487
    invoke-virtual {v5}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    .line 490
    move-result-wide v4

    .line 491
    add-long/2addr v4, v6

    .line 492
    iget-object v6, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 494
    invoke-interface {v6, v4, v5}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 497
    goto/16 :goto_13

    .line 499
    :pswitch_data_1f2
    .packed-switch 0x5
        :pswitch_f9  #00000005
        :pswitch_ce  #00000006
        :pswitch_bb  #00000007
        :pswitch_a8  #00000008
        :pswitch_86  #00000009
        :pswitch_5d  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public bytesReadRead(I)V
    .registers 6

    .line 1
    if-lez p1, :cond_11

    .line 3
    iget-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    .line 9
    iget-object p1, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    .line 11
    if-eqz p1, :cond_11

    .line 13
    iget-wide v2, p0, Lcom/junrar/Archive;->totalPackedSize:J

    .line 15
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 18
    :cond_11
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-interface {v0}, Lcom/junrar/io/IReadOnlyAccess;->close()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/junrar/Archive;->unpack:Lcom/junrar/unpack/Unpack;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/junrar/unpack/Unpack;->cleanUp()V

    .line 18
    :cond_11
    return-void
.end method

.method public extractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/junrar/Archive;->doExtractFile(Lcom/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 12
    return-void

    .line 13
    :catch_c
    move-exception p1

    .line 14
    instance-of p2, p1, Lcom/junrar/exception/RarException;

    .line 16
    if-eqz p2, :cond_14

    .line 18
    check-cast p1, Lcom/junrar/exception/RarException;

    .line 20
    throw p1

    .line 21
    :cond_14
    new-instance p2, Lcom/junrar/exception/RarException;

    .line 23
    invoke-direct {p2, p1}, Lcom/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    .line 26
    throw p2

    .line 27
    :cond_1a
    new-instance p1, Lcom/junrar/exception/RarException;

    .line 29
    sget-object p2, Lcom/junrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 31
    invoke-direct {p1, p2}, Lcom/junrar/exception/RarException;-><init>(Lcom/junrar/exception/RarException$RarExceptionType;)V

    .line 34
    throw p1
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/junrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_29

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/junrar/rarfile/BaseBlock;

    .line 24
    invoke-virtual {v2}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 27
    move-result-object v3

    .line 28
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_b

    .line 36
    check-cast v2, Lcom/junrar/rarfile/FileHeader;

    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    return-object v0
.end method

.method public getMainHeader()Lcom/junrar/rarfile/MainHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    .line 3
    return-object v0
.end method

.method public getRof()Lcom/junrar/io/IReadOnlyAccess;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 3
    return-object v0
.end method

.method public getUnrarCallback()Lcom/junrar/UnrarCallback;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    .line 3
    return-object v0
.end method

.method public isEncrypted()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->newMhd:Lcom/junrar/rarfile/MainHeader;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/junrar/rarfile/MainHeader;->isEncrypted()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 12
    const-string v1, "mainheader is null"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public isOldFormat()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->markHead:Lcom/junrar/rarfile/MarkHeader;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/rarfile/MarkHeader;->isOldFormat()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextFileHeader()Lcom/junrar/rarfile/FileHeader;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    .line 9
    if-ge v1, v0, :cond_21

    .line 11
    iget-object v2, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 13
    add-int/lit8 v3, v1, 0x1

    .line 15
    iput v3, p0, Lcom/junrar/Archive;->currentHeaderIndex:I

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/junrar/rarfile/BaseBlock;

    .line 23
    invoke-virtual {v1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 29
    if-ne v2, v3, :cond_6

    .line 31
    check-cast v1, Lcom/junrar/rarfile/FileHeader;

    .line 33
    return-object v1

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/junrar/Archive;->file:Ljava/io/File;

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedSize:J

    .line 7
    iput-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    .line 9
    invoke-virtual {p0}, Lcom/junrar/Archive;->close()V

    .line 12
    new-instance v0, Lcom/junrar/io/ReadOnlyAccessFile;

    .line 14
    invoke-direct {v0, p1}, Lcom/junrar/io/ReadOnlyAccessFile;-><init>(Ljava/io/File;)V

    .line 17
    iput-object v0, p0, Lcom/junrar/Archive;->rof:Lcom/junrar/io/IReadOnlyAccess;

    .line 19
    :try_start_12
    invoke-direct {p0}, Lcom/junrar/Archive;->readHeaders()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 22
    goto :goto_20

    .line 23
    :catch_16
    move-exception p1

    .line 24
    sget-object v0, Lcom/junrar/Archive;->logger:Ljava/util/logging/Logger;

    .line 26
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 28
    const-string v2, "exception in archive constructor maybe file is encrypted or currupt"

    .line 30
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :goto_20
    iget-object p1, p0, Lcom/junrar/Archive;->headers:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_46

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/junrar/rarfile/BaseBlock;

    .line 51
    invoke-virtual {v0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 57
    if-ne v1, v2, :cond_26

    .line 59
    iget-wide v1, p0, Lcom/junrar/Archive;->totalPackedSize:J

    .line 61
    check-cast v0, Lcom/junrar/rarfile/FileHeader;

    .line 63
    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    .line 66
    move-result-wide v3

    .line 67
    add-long/2addr v3, v1

    .line 68
    iput-wide v3, p0, Lcom/junrar/Archive;->totalPackedSize:J

    .line 70
    goto :goto_26

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/junrar/Archive;->unrarCallback:Lcom/junrar/UnrarCallback;

    .line 73
    if-eqz p1, :cond_51

    .line 75
    iget-wide v0, p0, Lcom/junrar/Archive;->totalPackedRead:J

    .line 77
    iget-wide v2, p0, Lcom/junrar/Archive;->totalPackedSize:J

    .line 79
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 82
    :cond_51
    return-void
.end method
