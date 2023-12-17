.class Ljcifs/smb/NetServerEnum2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "NetServerEnum2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/NetServerEnum2Response$ServerInfo1;
    }
.end annotation


# instance fields
.field private converter:I

.field public lastName:Ljava/lang/String;

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
    .registers 11

    .line 1
    iget p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 3
    new-array p3, p3, [Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    .line 5
    iput-object p3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 7
    const/4 p3, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v1, v0

    .line 12
    :goto_b
    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 14
    if-lt v1, v4, :cond_18

    .line 16
    if-nez v4, :cond_12

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-object p3, v3, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 21
    :goto_14
    iput-object p3, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    .line 23
    sub-int/2addr v2, p2

    .line 24
    return v2

    .line 25
    :cond_18
    iget-object v3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 27
    new-instance v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    .line 29
    invoke-direct {v4, p0}, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;-><init>(Ljcifs/smb/NetServerEnum2Response;)V

    .line 32
    aput-object v4, v3, v1

    .line 34
    const/16 v3, 0x10

    .line 36
    invoke-virtual {p0, p1, v2, v3, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 42
    add-int/lit8 v2, v2, 0x10

    .line 44
    add-int/lit8 v3, v2, 0x1

    .line 46
    aget-byte v2, p1, v2

    .line 48
    and-int/lit16 v2, v2, 0xff

    .line 50
    iput v2, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    .line 52
    add-int/lit8 v2, v3, 0x1

    .line 54
    aget-byte v3, p1, v3

    .line 56
    and-int/lit16 v3, v3, 0xff

    .line 58
    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    .line 60
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 63
    move-result v3

    .line 64
    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    .line 66
    const/4 v3, 0x4

    .line 67
    add-int/2addr v2, v3

    .line 68
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 71
    move-result v5

    .line 72
    add-int/2addr v2, v3

    .line 73
    const v6, 0xffff

    .line 76
    and-int/2addr v5, v6

    .line 77
    iget v6, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    .line 79
    sub-int/2addr v5, v6

    .line 80
    add-int/2addr v5, p2

    .line 81
    const/16 v6, 0x30

    .line 83
    invoke-virtual {p0, p1, v5, v6, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    iput-object v5, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    .line 89
    sget v5, Ljcifs/util/LogStream;->level:I

    .line 91
    if-lt v5, v3, :cond_61

    .line 93
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 95
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 98
    :cond_61
    add-int/lit8 v1, v1, 0x1

    .line 100
    move-object v3, v4

    .line 101
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
    iput v0, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

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
    iput p1, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

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
    const-string v2, "NetServerEnum2Response["

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
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

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
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ",lastName="

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    .line 64
    const-string v3, "]"

    .line 66
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 73
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
