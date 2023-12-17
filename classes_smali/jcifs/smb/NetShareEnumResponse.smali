.class Ljcifs/smb/NetShareEnumResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "NetShareEnumResponse.java"


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 10

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 4
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 6
    new-array v0, v0, [Ljcifs/smb/SmbShareInfo;

    .line 8
    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 10
    move v1, p2

    .line 11
    move v0, p3

    .line 12
    :goto_b
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 14
    if-lt v0, v2, :cond_11

    .line 16
    sub-int/2addr v1, p2

    .line 17
    return v1

    .line 18
    :cond_11
    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 20
    new-instance v3, Ljcifs/smb/SmbShareInfo;

    .line 22
    invoke-direct {v3}, Ljcifs/smb/SmbShareInfo;-><init>()V

    .line 25
    aput-object v3, v2, v0

    .line 27
    const/16 v2, 0xd

    .line 29
    invoke-virtual {p0, p1, v1, v2, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 35
    add-int/lit8 v1, v1, 0xe

    .line 37
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 40
    move-result v2

    .line 41
    iput v2, v3, Ljcifs/smb/SmbShareInfo;->type:I

    .line 43
    add-int/lit8 v1, v1, 0x2

    .line 45
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 48
    move-result v2

    .line 49
    const/4 v4, 0x4

    .line 50
    add-int/2addr v1, v4

    .line 51
    const v5, 0xffff

    .line 54
    and-int/2addr v2, v5

    .line 55
    iget v5, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    .line 57
    sub-int/2addr v2, v5

    .line 58
    add-int/2addr v2, p2

    .line 59
    const/16 v5, 0x80

    .line 61
    invoke-virtual {p0, p1, v2, v5, p3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 67
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 69
    if-lt v2, v4, :cond_4b

    .line 71
    sget-object v2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 73
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 76
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_b
.end method

.method public readParametersWireFormat([BII)I
    .registers 5

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result p3

    .line 5
    iput p3, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    .line 7
    add-int/lit8 p3, p2, 0x2

    .line 9
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    .line 15
    add-int/lit8 p3, p3, 0x2

    .line 17
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 23
    add-int/lit8 p3, p3, 0x2

    .line 25
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    .line 31
    add-int/lit8 p3, p3, 0x2

    .line 33
    sub-int/2addr p3, p2

    .line 34
    return p3
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NetShareEnumResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",status="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->status:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",converter="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",entriesReturned="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",totalAvailableEntries="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    .line 54
    const-string v3, "]"

    .line 56
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 63
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
