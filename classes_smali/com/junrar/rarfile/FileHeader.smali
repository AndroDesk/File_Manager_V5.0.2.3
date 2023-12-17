.class public Lcom/junrar/rarfile/FileHeader;
.super Lcom/junrar/rarfile/BlockHeader;
.source "FileHeader.java"


# static fields
.field private static final NEWLHD_SIZE:B = 0x20t

.field private static final SALT_SIZE:B = 0x8t


# instance fields
.field private aTime:Ljava/util/Date;

.field private arcTime:Ljava/util/Date;

.field private cTime:Ljava/util/Date;

.field private fileAttr:I

.field private final fileCRC:I

.field private fileName:Ljava/lang/String;

.field private final fileNameBytes:[B

.field private fileNameW:Ljava/lang/String;

.field private final fileTime:I

.field private fullPackSize:J

.field private fullUnpackSize:J

.field private highPackSize:I

.field private highUnpackSize:I

.field private final hostOS:Lcom/junrar/rarfile/HostSystem;

.field private final logger:Lorg/apache/commons/logging/Log;

.field private mTime:Ljava/util/Date;

.field private nameSize:S

.field private recoverySectors:I

.field private final salt:[B

.field private subData:[B

.field private subFlags:I

.field private unpMethod:B

.field private unpSize:J

.field private unpVersion:B


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;[B)V
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    .line 4
    const-class p1, Lcom/junrar/rarfile/FileHeader;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 16
    const/16 p1, 0x8

    .line 18
    new-array v0, p1, [B

    .line 20
    iput-object v0, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    iput-wide v1, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    .line 33
    const/4 v1, 0x4

    .line 34
    aget-byte v1, p2, v1

    .line 36
    invoke-static {v1}, Lcom/junrar/rarfile/HostSystem;->findHostSystem(B)Lcom/junrar/rarfile/HostSystem;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-static {p2, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/junrar/rarfile/FileHeader;->fileCRC:I

    .line 49
    const/16 v1, 0x9

    .line 51
    invoke-static {p2, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 54
    move-result v2

    .line 55
    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->fileTime:I

    .line 57
    iget-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    .line 59
    const/16 v3, 0xd

    .line 61
    aget-byte v3, p2, v3

    .line 63
    and-int/lit16 v3, v3, 0xff

    .line 65
    or-int/2addr v2, v3

    .line 66
    int-to-byte v2, v2

    .line 67
    iput-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    .line 69
    iget-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    .line 71
    const/16 v3, 0xe

    .line 73
    aget-byte v3, p2, v3

    .line 75
    and-int/lit16 v3, v3, 0xff

    .line 77
    or-int/2addr v2, v3

    .line 78
    int-to-byte v2, v2

    .line 79
    iput-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    .line 81
    const/16 v2, 0xf

    .line 83
    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 86
    move-result v2

    .line 87
    iput-short v2, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 89
    const/16 v2, 0x11

    .line 91
    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 94
    move-result v2

    .line 95
    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    .line 97
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->isLargeBlock()Z

    .line 100
    move-result v2

    .line 101
    const/16 v3, 0x15

    .line 103
    if-eqz v2, :cond_79

    .line 105
    invoke-static {p2, v3}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 108
    move-result v2

    .line 109
    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    .line 111
    const/16 v2, 0x19

    .line 113
    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 116
    move-result v2

    .line 117
    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 119
    const/16 v3, 0x1d

    .line 121
    goto :goto_8c

    .line 122
    :cond_79
    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    .line 124
    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 126
    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    .line 128
    const-wide/16 v6, -0x1

    .line 130
    cmp-long v2, v4, v6

    .line 132
    if-nez v2, :cond_8c

    .line 134
    iput-wide v6, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    .line 136
    const v2, 0x7fffffff

    .line 139
    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 141
    :cond_8c
    :goto_8c
    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 143
    iget v2, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    .line 145
    int-to-long v6, v2

    .line 146
    or-long/2addr v4, v6

    .line 147
    const/16 v2, 0x20

    .line 149
    shl-long/2addr v4, v2

    .line 150
    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 152
    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getPackSize()I

    .line 155
    move-result v6

    .line 156
    int-to-long v6, v6

    .line 157
    or-long/2addr v4, v6

    .line 158
    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 160
    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 162
    iget v6, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 164
    int-to-long v6, v6

    .line 165
    or-long/2addr v4, v6

    .line 166
    shl-long/2addr v4, v2

    .line 167
    iget-wide v6, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    .line 169
    add-long/2addr v4, v6

    .line 170
    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 172
    iget-short v4, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 174
    const/16 v5, 0x1000

    .line 176
    if-le v4, v5, :cond_b2

    .line 178
    move v4, v5

    .line 179
    :cond_b2
    iput-short v4, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 181
    new-array v4, v4, [B

    .line 183
    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 185
    move v4, v0

    .line 186
    :goto_b9
    iget-short v5, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 188
    if-ge v4, v5, :cond_c8

    .line 190
    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 192
    aget-byte v6, p2, v3

    .line 194
    aput-byte v6, v5, v4

    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 200
    goto :goto_b9

    .line 201
    :cond_c8
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_10d

    .line 207
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    .line 210
    move-result v4

    .line 211
    const-string v5, ""

    .line 213
    if-eqz v4, :cond_102

    .line 215
    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 217
    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 219
    move v4, v0

    .line 220
    :goto_db
    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 222
    array-length v6, v5

    .line 223
    if-ge v4, v6, :cond_e7

    .line 225
    aget-byte v6, v5, v4

    .line 227
    if-eqz v6, :cond_e7

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 231
    goto :goto_db

    .line 232
    :cond_e7
    new-array v6, v4, [B

    .line 234
    invoke-static {v5, v0, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    new-instance v5, Ljava/lang/String;

    .line 239
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 242
    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 244
    iget-short v5, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 246
    if-eq v4, v5, :cond_10d

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 250
    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 252
    invoke-static {v5, v4}, Lcom/junrar/rarfile/FileNameDecoder;->decode([BI)Ljava/lang/String;

    .line 255
    move-result-object v4

    .line 256
    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 258
    goto :goto_10d

    .line 259
    :cond_102
    new-instance v4, Ljava/lang/String;

    .line 261
    iget-object v6, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 263
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 266
    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 268
    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 270
    :cond_10d
    :goto_10d
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 272
    iget-byte v5, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    .line 274
    invoke-virtual {v4, v5}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_15b

    .line 280
    iget-short v4, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    .line 282
    sub-int/2addr v4, v2

    .line 283
    iget-short v2, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 285
    sub-int/2addr v4, v2

    .line 286
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_125

    .line 292
    add-int/lit8 v4, v4, -0x8

    .line 294
    :cond_125
    if-lez v4, :cond_139

    .line 296
    new-array v2, v4, [B

    .line 298
    iput-object v2, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    .line 300
    move v2, v0

    .line 301
    :goto_12c
    if-ge v2, v4, :cond_139

    .line 303
    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    .line 305
    aget-byte v6, p2, v3

    .line 307
    aput-byte v6, v5, v2

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 311
    add-int/lit8 v2, v2, 0x1

    .line 313
    goto :goto_12c

    .line 314
    :cond_139
    sget-object v2, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/junrar/rarfile/NewSubHeaderType;

    .line 316
    iget-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 318
    invoke-virtual {v2, v4}, Lcom/junrar/rarfile/NewSubHeaderType;->byteEquals([B)Z

    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_15b

    .line 324
    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    .line 326
    aget-byte v4, v2, p1

    .line 328
    aget-byte v1, v2, v1

    .line 330
    shl-int/2addr v1, p1

    .line 331
    add-int/2addr v4, v1

    .line 332
    const/16 v1, 0xa

    .line 334
    aget-byte v1, v2, v1

    .line 336
    shl-int/lit8 v1, v1, 0x10

    .line 338
    add-int/2addr v4, v1

    .line 339
    const/16 v1, 0xb

    .line 341
    aget-byte v1, v2, v1

    .line 343
    shl-int/lit8 v1, v1, 0x18

    .line 345
    add-int/2addr v4, v1

    .line 346
    iput v4, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 348
    :cond_15b
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_16e

    .line 354
    :goto_161
    if-ge v0, p1, :cond_16e

    .line 356
    iget-object v1, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    .line 358
    aget-byte v2, p2, v3

    .line 360
    aput-byte v2, v1, v0

    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 366
    goto :goto_161

    .line 367
    :cond_16e
    iget p1, p0, Lcom/junrar/rarfile/FileHeader;->fileTime:I

    .line 369
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/FileHeader;->getDateDos(I)Ljava/util/Date;

    .line 372
    move-result-object p1

    .line 373
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 375
    return-void
.end method

.method private getDateDos(I)Ljava/util/Date;
    .registers 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    ushr-int/lit8 v1, p1, 0x19

    .line 7
    add-int/lit16 v1, v1, 0x7bc

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 13
    ushr-int/lit8 v1, p1, 0x15

    .line 15
    and-int/lit8 v1, v1, 0xf

    .line 17
    sub-int/2addr v1, v2

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 22
    ushr-int/lit8 v1, p1, 0x10

    .line 24
    and-int/lit8 v1, v1, 0x1f

    .line 26
    const/4 v3, 0x5

    .line 27
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 30
    ushr-int/lit8 v1, p1, 0xb

    .line 32
    and-int/lit8 v1, v1, 0x1f

    .line 34
    const/16 v3, 0xb

    .line 36
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 39
    ushr-int/lit8 v1, p1, 0x5

    .line 41
    and-int/lit8 v1, v1, 0x3f

    .line 43
    const/16 v3, 0xc

    .line 45
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 48
    and-int/lit8 p1, p1, 0x1f

    .line 50
    mul-int/2addr p1, v2

    .line 51
    const/16 v1, 0xd

    .line 53
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private getUnpSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    .line 3
    return-wide v0
.end method

.method private hasSalt()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit16 v0, v0, 0x400

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isLargeBlock()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isSplitBefore()Z
    .registers 3

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method


# virtual methods
.method public getATime()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public getArcTime()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public getCTime()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public getFileAttr()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    .line 3
    return v0
.end method

.method public getFileCRC()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->fileCRC:I

    .line 3
    return v0
.end method

.method public getFileNameByteArray()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 3
    return-object v0
.end method

.method public getFileNameString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileNameW()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFullPackSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    .line 3
    return-wide v0
.end method

.method public getFullUnpackSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 3
    return-wide v0
.end method

.method public getHighPackSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    .line 3
    return v0
.end method

.method public getHighUnpackSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    .line 3
    return v0
.end method

.method public getHostOS()Lcom/junrar/rarfile/HostSystem;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    .line 3
    return-object v0
.end method

.method public getMTime()Ljava/util/Date;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public getNameSize()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    .line 3
    return v0
.end method

.method public getRecoverySectors()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    .line 3
    return v0
.end method

.method public getSalt()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    .line 3
    return-object v0
.end method

.method public getSubData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    .line 3
    return-object v0
.end method

.method public getSubFlags()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->subFlags:I

    .line 3
    return v0
.end method

.method public getUnpMethod()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    .line 3
    return v0
.end method

.method public getUnpVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    .line 3
    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    const/16 v1, 0xe0

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isFileHeader()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 3
    iget-byte v1, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    .line 5
    invoke-virtual {v0, v1}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isSolid()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isSplitAfter()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isUnicode()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public print()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/BlockHeader;->print()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "unpSize: "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpSize()J

    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "\nHostOS: "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "\nMDate: "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v2, "\nFileName: "

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v2, "\nunpMethod: "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpMethod()B

    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v2, "\nunpVersion: "

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    .line 142
    move-result v2

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v2, "\nfullpackedsize: "

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    .line 170
    move-result-wide v2

    .line 171
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v2, "\nfullunpackedsize: "

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string v2, "\nisEncrypted: "

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isEncrypted()Z

    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v2, "\nisfileHeader: "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    .line 242
    move-result v2

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v2, "\nisSolid: "

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    .line 266
    move-result v2

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v2, "\nisSplitafter: "

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    .line 290
    move-result v2

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    const-string v2, "\nisSplitBefore:"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->isSplitBefore()Z

    .line 314
    move-result v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    const-string v2, "\nunpSize: "

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpSize()J

    .line 338
    move-result-wide v2

    .line 339
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    const-string v2, "\ndataSize: "

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getDataSize()I

    .line 362
    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v2, "\nisUnicode: "

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    .line 386
    move-result v2

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    const-string v2, "\nhasVolumeNumber: "

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    .line 410
    move-result v2

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    .line 423
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const-string v2, "\nhasArchiveDataCRC: "

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    .line 434
    move-result v2

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 447
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    const-string v2, "\nhasSalt: "

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    .line 458
    move-result v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    const-string v2, "\nhasEncryptVersions: "

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    .line 482
    move-result v2

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    .line 495
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    const-string v2, "\nisSubBlock: "

    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->isSubBlock()Z

    .line 506
    move-result v2

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Lcom/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object v0

    .line 523
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public setATime(Ljava/util/Date;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    .line 3
    return-void
.end method

.method public setArcTime(Ljava/util/Date;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    .line 3
    return-void
.end method

.method public setCTime(Ljava/util/Date;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    .line 3
    return-void
.end method

.method public setFileAttr(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    .line 3
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileNameW(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMTime(Ljava/util/Date;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
