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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;[B)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    const-class p1, Lcom/junrar/rarfile/FileHeader;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    const/16 p1, 0x8

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    const/4 v1, 0x4

    aget-byte v1, p2, v1

    invoke-static {v1}, Lcom/junrar/rarfile/HostSystem;->findHostSystem(B)Lcom/junrar/rarfile/HostSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lcom/junrar/rarfile/FileHeader;->fileCRC:I

    const/16 v1, 0x9

    invoke-static {p2, v1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v2

    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->fileTime:I

    iget-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    const/16 v3, 0xd

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    iget-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    const/16 v3, 0xe

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    const/16 v2, 0xf

    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v2

    iput-short v2, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    const/16 v2, 0x11

    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v2

    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->isLargeBlock()Z

    move-result v2

    const/16 v3, 0x15

    if-eqz v2, :cond_79

    invoke-static {p2, v3}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v2

    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    const/16 v2, 0x19

    invoke-static {p2, v2}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v2

    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    const/16 v3, 0x1d

    goto :goto_8c

    :cond_79
    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    iput v0, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_8c

    iput-wide v6, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    const v2, 0x7fffffff

    iput v2, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    :cond_8c
    :goto_8c
    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    iget v2, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    int-to-long v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getPackSize()I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    iget-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    iget v6, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    shl-long/2addr v4, v2

    iget-wide v6, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    iget-short v4, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    const/16 v5, 0x1000

    if-le v4, v5, :cond_b2

    move v4, v5

    :cond_b2
    iput-short v4, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    move v4, v0

    :goto_b9
    iget-short v5, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    if-ge v4, v5, :cond_c8

    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    aget-byte v6, p2, v3

    aput-byte v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    :cond_c8
    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_102

    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    move v4, v0

    :goto_db
    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v6, v5

    if-ge v4, v6, :cond_e7

    aget-byte v6, v5, v4

    if-eqz v6, :cond_e7

    add-int/lit8 v4, v4, 0x1

    goto :goto_db

    :cond_e7
    new-array v6, v4, [B

    invoke-static {v5, v0, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    iget-short v5, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    if-eq v4, v5, :cond_10d

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-static {v5, v4}, Lcom/junrar/rarfile/FileNameDecoder;->decode([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    goto :goto_10d

    :cond_102
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    iput-object v5, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    :cond_10d
    :goto_10d
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    iget-byte v5, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v4, v5}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v4

    if-eqz v4, :cond_15b

    iget-short v4, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    sub-int/2addr v4, v2

    iget-short v2, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    sub-int/2addr v4, v2

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    if-eqz v2, :cond_125

    add-int/lit8 v4, v4, -0x8

    :cond_125
    if-lez v4, :cond_139

    new-array v2, v4, [B

    iput-object v2, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    move v2, v0

    :goto_12c
    if-ge v2, v4, :cond_139

    iget-object v5, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v6, p2, v3

    aput-byte v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_139
    sget-object v2, Lcom/junrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lcom/junrar/rarfile/NewSubHeaderType;

    iget-object v4, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-virtual {v2, v4}, Lcom/junrar/rarfile/NewSubHeaderType;->byteEquals([B)Z

    move-result v2

    if-eqz v2, :cond_15b

    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    aget-byte v4, v2, p1

    aget-byte v1, v2, v1

    shl-int/2addr v1, p1

    add-int/2addr v4, v1

    const/16 v1, 0xa

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v4, v1

    const/16 v1, 0xb

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v4, v1

    iput v4, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    :cond_15b
    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v1

    if-eqz v1, :cond_16e

    :goto_161
    if-ge v0, p1, :cond_16e

    iget-object v1, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    aget-byte v2, p2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_161

    :cond_16e
    iget p1, p0, Lcom/junrar/rarfile/FileHeader;->fileTime:I

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/FileHeader;->getDateDos(I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    return-void
.end method

.method private getDateDos(I)Ljava/util/Date;
    .registers 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x19

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    ushr-int/lit8 v1, p1, 0x15

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    ushr-int/lit8 v1, p1, 0xb

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    and-int/lit8 p1, p1, 0x1f

    mul-int/2addr p1, v2

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private getUnpSize()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->unpSize:J

    return-wide v0
.end method

.method private hasSalt()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isLargeBlock()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isSplitBefore()Z
    .registers 3

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method


# virtual methods
.method public getATime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    return-object v0
.end method

.method public getArcTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFileAttr()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    return v0
.end method

.method public getFileCRC()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->fileCRC:I

    return v0
.end method

.method public getFileNameByteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileNameBytes:[B

    return-object v0
.end method

.method public getFileNameString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPackSize()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->fullPackSize:J

    return-wide v0
.end method

.method public getFullUnpackSize()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/rarfile/FileHeader;->fullUnpackSize:J

    return-wide v0
.end method

.method public getHighPackSize()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->highPackSize:I

    return v0
.end method

.method public getHighUnpackSize()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->highUnpackSize:I

    return v0
.end method

.method public getHostOS()Lcom/junrar/rarfile/HostSystem;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    return-object v0
.end method

.method public getMTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNameSize()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/FileHeader;->nameSize:S

    return v0
.end method

.method public getRecoverySectors()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->recoverySectors:I

    return v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->salt:[B

    return-object v0
.end method

.method public getSubData()[B
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/FileHeader;->subData:[B

    return-object v0
.end method

.method public getSubFlags()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/FileHeader;->subFlags:I

    return v0
.end method

.method public getUnpMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/FileHeader;->unpMethod:B

    return v0
.end method

.method public getUnpVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/FileHeader;->unpVersion:B

    return v0
.end method

.method public isDirectory()Z
    .registers 3

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    const/16 v1, 0xe0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFileHeader()Z
    .registers 3

    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v1}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public isSolid()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSplitAfter()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUnicode()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public print()V
    .registers 5

    invoke-super {p0}, Lcom/junrar/rarfile/BlockHeader;->print()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unpSize: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHostOS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->hostOS:Lcom/junrar/rarfile/HostSystem;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullunpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisEncrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisfileHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSolid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitafter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitBefore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->isSplitBefore()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisUnicode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasVolumeNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasArchiveDataCRC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasSalt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/junrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasEncryptVersions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSubBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->isSubBlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/rarfile/FileHeader;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public setATime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    return-void
.end method

.method public setArcTime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    return-void
.end method

.method public setCTime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    return-void
.end method

.method public setFileAttr(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/rarfile/FileHeader;->fileAttr:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    return-void
.end method

.method public setMTime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
