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
.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    .line 21
    iget-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    .line 23
    const/4 v0, 0x4

    .line 24
    aget-byte v0, p2, v0

    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 28
    or-int/2addr p1, v0

    .line 29
    int-to-byte p1, p1

    .line 30
    iput-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    .line 32
    iget-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    .line 34
    const/4 v0, 0x5

    .line 35
    aget-byte v0, p2, v0

    .line 37
    and-int/lit16 v0, v0, 0xff

    .line 39
    or-int/2addr p1, v0

    .line 40
    int-to-byte p1, p1

    .line 41
    iput-byte p1, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    .line 43
    const/4 p1, 0x6

    .line 44
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    .line 50
    return-void
.end method


# virtual methods
.method public getEACRC()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    .line 3
    return v0
.end method

.method public getMethod()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    .line 3
    return v0
.end method

.method public getUnpSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    .line 3
    return v0
.end method

.method public getUnpVer()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    .line 3
    return v0
.end method

.method public print()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    .line 4
    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 6
    const-string v1, "unpSize: "

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Lcom/junrar/rarfile/EAHeader;->unpSize:I

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 26
    const-string v1, "unpVersion: "

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v1

    .line 32
    iget-byte v2, p0, Lcom/junrar/rarfile/EAHeader;->unpVer:B

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 46
    const-string v1, "method: "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v1

    .line 52
    iget-byte v2, p0, Lcom/junrar/rarfile/EAHeader;->method:B

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/junrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 66
    const-string v1, "EACRC:"

    .line 68
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v1

    .line 72
    iget v2, p0, Lcom/junrar/rarfile/EAHeader;->EACRC:I

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
