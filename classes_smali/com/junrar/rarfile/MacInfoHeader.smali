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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result p1

    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    return v0
.end method

.method public getFileType()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    return v0
.end method

.method public print()V
    .registers 4

    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    iget-object v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "filetype: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "creator :"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public setFileCreator(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileCreator:I

    return-void
.end method

.method public setFileType(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/rarfile/MacInfoHeader;->fileType:I

    return-void
.end method
