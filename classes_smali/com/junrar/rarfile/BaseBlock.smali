.class public Lcom/junrar/rarfile/BaseBlock;
.super Ljava/lang/Object;
.source "BaseBlock.java"


# static fields
.field public static final BaseBlockSize:S = 0x7s

.field private static final EARC_DATACRC:S = 0x2s

.field public static final EARC_NEXT_VOLUME:S = 0x1s

.field public static final EARC_REVSPACE:S = 0x4s

.field private static final EARC_VOLNUMBER:S = 0x8s

.field public static final LHD_COMMENT:S = 0x8s

.field public static final LHD_DIRECTORY:S = 0xe0s

.field public static final LHD_EXTFLAGS:S = 0x2000s

.field public static final LHD_EXTTIME:S = 0x1000s

.field public static final LHD_LARGE:S = 0x100s

.field public static final LHD_PASSWORD:S = 0x4s

.field public static final LHD_SALT:S = 0x400s

.field public static final LHD_SOLID:S = 0x10s

.field public static final LHD_SPLIT_AFTER:S = 0x2s

.field public static final LHD_SPLIT_BEFORE:S = 0x1s

.field public static final LHD_UNICODE:S = 0x200s

.field public static final LHD_VERSION:S = 0x800s

.field public static final LHD_WINDOW1024:S = 0x80s

.field public static final LHD_WINDOW128:S = 0x20s

.field public static final LHD_WINDOW2048:S = 0xa0s

.field public static final LHD_WINDOW256:S = 0x40s

.field public static final LHD_WINDOW4096:S = 0xc0s

.field public static final LHD_WINDOW512:S = 0x60s

.field public static final LHD_WINDOW64:S = 0x0s

.field public static final LHD_WINDOWMASK:S = 0xe0s

.field public static final LONG_BLOCK:S = -0x8000s

.field public static final MHD_AV:S = 0x20s

.field public static final MHD_COMMENT:S = 0x2s

.field private static final MHD_ENCRYPTVER:S = 0x200s

.field public static final MHD_FIRSTVOLUME:S = 0x100s

.field public static final MHD_LOCK:S = 0x4s

.field public static final MHD_NEWNUMBERING:S = 0x10s

.field public static final MHD_PACK_COMMENT:S = 0x10s

.field public static final MHD_PASSWORD:S = 0x80s

.field public static final MHD_PROTECT:S = 0x40s

.field public static final MHD_SOLID:S = 0x8s

.field public static final MHD_VOLUME:S = 0x1s

.field public static final SKIP_IF_UNKNOWN:S = 0x4000s


# instance fields
.field public flags:S

.field public headCRC:S

.field public headerSize:S

.field public headerType:B

.field private logger:Lorg/apache/commons/logging/Log;

.field public positionInFile:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->headCRC:S

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/rarfile/UnrarHeadertype;->getHeaderByte()B

    move-result v0

    iput-byte v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/junrar/rarfile/BaseBlock;->positionInFile:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/junrar/rarfile/BaseBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->headCRC:S

    iget-byte v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    return-void
.end method


# virtual methods
.method public getFlags()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    return v0
.end method

.method public getHeadCRC()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->headCRC:S

    return v0
.end method

.method public getHeaderSize()S
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerSize:S

    return v0
.end method

.method public getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-static {v0}, Lcom/junrar/rarfile/UnrarHeadertype;->findType(B)Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInFile()J
    .registers 3

    iget-wide v0, p0, Lcom/junrar/rarfile/BaseBlock;->positionInFile:J

    return-wide v0
.end method

.method public hasArchiveDataCRC()Z
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

.method public hasEncryptVersion()Z
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

.method public hasVolumeNumber()Z
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSubBlock()Z
    .registers 3

    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v1}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lcom/junrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v0, v1}, Lcom/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public print()V
    .registers 4

    const-string v0, "HeaderType: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeadCRC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getFlags()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeaderSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nPosition in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/rarfile/BaseBlock;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public setPositionInFile(J)V
    .registers 3

    iput-wide p1, p0, Lcom/junrar/rarfile/BaseBlock;->positionInFile:J

    return-void
.end method
