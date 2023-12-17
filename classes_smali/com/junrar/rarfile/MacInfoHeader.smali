.class public Lcom/junrar/rarfile/MacInfoHeader;
.super Lcom/junrar/rarfile/SubBlockHeader;
.source "MacInfoHeader.java"


# static fields
.field public static final MacInfoHeaderSize:S = 0x8s


# instance fields
.field private fileCreator:I

.field private fileType:I

.field private logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 3

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
    iput-object p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 21
    const/4 p1, 0x4

    .line 22
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 28
    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 3
    return v0
.end method

.method public getFileType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 3
    return v0
.end method

.method public print()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    .line 4
    iget-object v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 6
    const-string v1, "filetype: "

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 26
    const-string v1, "creator :"

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public setFileCreator(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 3
    return-void
.end method

.method public setFileType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    .line 3
    return-void
.end method
