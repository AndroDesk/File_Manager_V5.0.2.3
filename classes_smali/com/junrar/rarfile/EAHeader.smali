.class public Lcom/junrar/rarfile/EAHeader;
.super Lcom/junrar/rarfile/SubBlockHeader;
.source "EAHeader.java"


# static fields
.field public static final EAHeaderSize:S = 0xas


# instance fields
.field private EACRC:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private method:B

.field private unpSize:I

.field private unpVer:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    iget-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    iget-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    const/4 v0, 0x5

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    const/4 p1, 0x6

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    return-void
.end method


# virtual methods
.method public getEACRC()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    return v0
.end method

.method public getMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    return v0
.end method

.method public getUnpSize()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    return v0
.end method

.method public getUnpVer()B
    .registers 2

    iget-byte v0, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    return v0
.end method

.method public print()V
    .registers 4

    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "unpSize: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "unpVersion: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "method: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "EACRC:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
