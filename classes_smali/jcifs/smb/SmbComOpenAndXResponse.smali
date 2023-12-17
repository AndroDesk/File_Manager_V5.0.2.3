.class Ljcifs/smb/SmbComOpenAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComOpenAndXResponse.java"


# instance fields
.field public action:I

.field public dataSize:I

.field public deviceState:I

.field public fid:I

.field public fileAttributes:I

.field public fileType:I

.field public grantedAccess:I

.field public lastWriteTime:J

.field public serverFid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 12
    move-result v1

    .line 13
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fileAttributes:I

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readUTime([BI)J

    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->lastWriteTime:J

    .line 23
    add-int/lit8 v0, v0, 0x4

    .line 25
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 28
    move-result v1

    .line 29
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->dataSize:I

    .line 31
    add-int/lit8 v0, v0, 0x4

    .line 33
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 36
    move-result v1

    .line 37
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->grantedAccess:I

    .line 39
    add-int/lit8 v0, v0, 0x2

    .line 41
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 44
    move-result v1

    .line 45
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fileType:I

    .line 47
    add-int/lit8 v0, v0, 0x2

    .line 49
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 52
    move-result v1

    .line 53
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->deviceState:I

    .line 55
    add-int/lit8 v0, v0, 0x2

    .line 57
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 60
    move-result v1

    .line 61
    iput v1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->action:I

    .line 63
    add-int/lit8 v0, v0, 0x2

    .line 65
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 68
    move-result p1

    .line 69
    iput p1, p0, Ljcifs/smb/SmbComOpenAndXResponse;->serverFid:I

    .line 71
    add-int/lit8 v0, v0, 0x6

    .line 73
    sub-int/2addr v0, p2

    .line 74
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComOpenAndXResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",fid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",fileAttributes="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fileAttributes:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",lastWriteTime="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-wide v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->lastWriteTime:J

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",dataSize="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->dataSize:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ",grantedAccess="

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->grantedAccess:I

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, ",fileType="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->fileType:I

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ",deviceState="

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->deviceState:I

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, ",action="

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->action:I

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ",serverFid="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v2, p0, Ljcifs/smb/SmbComOpenAndXResponse;->serverFid:I

    .line 104
    const-string v3, "]"

    .line 106
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
