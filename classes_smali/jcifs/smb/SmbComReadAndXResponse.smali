.class Ljcifs/smb/SmbComReadAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndXResponse.java"


# instance fields
.field public b:[B

.field public dataCompactionMode:I

.field public dataLength:I

.field public dataOffset:I

.field public off:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 3
    iput-object p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 4
    iput p2, p0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x2

    .line 3
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 6
    move-result v1

    .line 7
    iput v1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    .line 9
    add-int/lit8 v0, v0, 0x4

    .line 11
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 14
    move-result v1

    .line 15
    iput v1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 17
    add-int/lit8 v0, v0, 0x2

    .line 19
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    .line 25
    add-int/lit8 v0, v0, 0xc

    .line 27
    sub-int/2addr v0, p2

    .line 28
    return v0
.end method

.method public setParam([BI)V
    .registers 3

    .line 1
    iput-object p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 3
    iput p2, p0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComReadAndXResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",dataCompactionMode="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",dataLength="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",dataOffset="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    .line 44
    const-string v3, "]"

    .line 46
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 53
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
