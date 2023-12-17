.class public Lcom/junrar/rarfile/SubBlockHeader;
.super Lcom/junrar/rarfile/BlockHeader;
.source "SubBlockHeader.java"


# static fields
.field public static final SubBlockHeaderSize:S = 0x3s


# instance fields
.field private level:B

.field private logger:Lorg/apache/commons/logging/Log;

.field private subType:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result p1

    iput-short p1, p0, Lcom/junrar/rarfile/SubBlockHeader;->subType:S

    iget-byte p1, p0, Lcom/junrar/rarfile/SubBlockHeader;->level:B

    const/4 v0, 0x2

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/SubBlockHeader;->level:B

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BlockHeader;-><init>(Lcom/junrar/rarfile/BlockHeader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Lcom/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->subType:S

    invoke-direct {p1}, Lcom/junrar/rarfile/SubBlockHeader;->getLevel()B

    move-result p1

    iput-byte p1, p0, Lcom/junrar/rarfile/SubBlockHeader;->level:B

    return-void
.end method

.method private getLevel()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->level:B

    return v0
.end method


# virtual methods
.method public getSubType()Lcom/junrar/rarfile/SubBlockHeaderType;
    .registers 2

    iget-short v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->subType:S

    invoke-static {v0}, Lcom/junrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lcom/junrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .registers 4

    invoke-super {p0}, Lcom/junrar/rarfile/BlockHeader;->print()V

    iget-object v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "subtype: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/junrar/rarfile/SubBlockHeaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "level: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/junrar/rarfile/SubBlockHeader;->level:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
