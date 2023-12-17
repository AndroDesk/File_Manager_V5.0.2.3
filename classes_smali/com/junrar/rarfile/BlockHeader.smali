.class public Lcom/junrar/rarfile/BlockHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "BlockHeader.java"


# static fields
.field public static final blockHeaderSize:S = 0x4s


# instance fields
.field private dataSize:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private packSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/junrar/rarfile/BaseBlock;-><init>()V

    .line 2
    const-class v0, Lcom/junrar/rarfile/BlockHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 9
    const-class p1, Lcom/junrar/rarfile/BlockHeader;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    .line 10
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/BlockHeader;->packSize:I

    .line 11
    iput p1, p0, Lcom/junrar/rarfile/BlockHeader;->dataSize:I

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/BlockHeader;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    const-class v0, Lcom/junrar/rarfile/BlockHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 5
    invoke-virtual {p1}, Lcom/junrar/rarfile/BlockHeader;->getDataSize()I

    move-result v0

    iput v0, p0, Lcom/junrar/rarfile/BlockHeader;->packSize:I

    .line 6
    iput v0, p0, Lcom/junrar/rarfile/BlockHeader;->dataSize:I

    .line 7
    invoke-virtual {p1}, Lcom/junrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/junrar/rarfile/BaseBlock;->positionInFile:J

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/BlockHeader;->dataSize:I

    .line 3
    return v0
.end method

.method public getPackSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/BlockHeader;->packSize:I

    .line 3
    return v0
.end method

.method public print()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/BaseBlock;->print()V

    .line 4
    const-string v0, "DataSize: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getDataSize()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " packSize: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lcom/junrar/rarfile/BlockHeader;->getPackSize()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/junrar/rarfile/BlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 35
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
