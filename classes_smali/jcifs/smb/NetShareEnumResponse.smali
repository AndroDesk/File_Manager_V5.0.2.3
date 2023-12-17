.class Ljcifs/smb/NetShareEnumResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "NetShareEnumResponse.java"


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 10

    const/4 p3, 0x0

    iput-boolean p3, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/SmbShareInfo;

    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    move v1, p2

    move v0, p3

    :goto_b
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-lt v0, v2, :cond_11

    sub-int/2addr v1, p2

    return v1

    :cond_11
    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v3, Ljcifs/smb/SmbShareInfo;

    invoke-direct {v3}, Ljcifs/smb/SmbShareInfo;-><init>()V

    aput-object v3, v2, v0

    const/16 v2, 0xd

    invoke-virtual {p0, p1, v1, v2, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xe

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, v3, Ljcifs/smb/SmbShareInfo;->type:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    const/4 v4, 0x4

    add-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v2, v5

    iget v5, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    sub-int/2addr v2, v5

    add-int/2addr v2, p2

    const/16 v5, 0x80

    invoke-virtual {p0, p1, v2, v5, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_4b

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public readParametersWireFormat([BII)I
    .registers 5

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    add-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    add-int/lit8 p3, p3, 0x2

    sub-int/2addr p3, p2

    return p3
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetShareEnumResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
