.class Ljcifs/smb/SmbComWrite;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComWrite.java"


# instance fields
.field private b:[B

.field private count:I

.field private fid:I

.field private off:I

.field private offset:I

.field private remaining:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method

.method public constructor <init>(III[BII)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    .line 5
    iput p6, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 6
    iput p2, p0, Ljcifs/smb/SmbComWrite;->offset:I

    .line 7
    iput p3, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    .line 8
    iput-object p4, p0, Ljcifs/smb/SmbComWrite;->b:[B

    .line 9
    iput p5, p0, Ljcifs/smb/SmbComWrite;->off:I

    const/16 p1, 0xb

    .line 10
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setParam(IJI[BII)V
    .registers 10

    .line 1
    iput p1, p0, Ljcifs/smb/SmbComWrite;->fid:I

    .line 3
    const-wide v0, 0xffffffffL

    .line 8
    and-long p1, p2, v0

    .line 10
    long-to-int p1, p1

    .line 11
    iput p1, p0, Ljcifs/smb/SmbComWrite;->offset:I

    .line 13
    iput p4, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    .line 15
    iput-object p5, p0, Ljcifs/smb/SmbComWrite;->b:[B

    .line 17
    iput p6, p0, Ljcifs/smb/SmbComWrite;->off:I

    .line 19
    iput p7, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComWrite["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",fid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComWrite;->fid:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",count="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",offset="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComWrite;->offset:I

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",remaining="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Ljcifs/smb/SmbComWrite;->remaining:I

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

.method public writeBytesWireFormat([BI)I
    .registers 7

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x1

    .line 4
    aput-byte v1, p1, p2

    .line 6
    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 8
    int-to-long v1, v1

    .line 9
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 12
    add-int/lit8 v0, v0, 0x2

    .line 14
    iget-object v1, p0, Ljcifs/smb/SmbComWrite;->b:[B

    .line 16
    iget v2, p0, Ljcifs/smb/SmbComWrite;->off:I

    .line 18
    iget v3, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 20
    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget p1, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 25
    add-int/2addr v0, p1

    .line 26
    sub-int/2addr v0, p2

    .line 27
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComWrite;->fid:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    iget v1, p0, Ljcifs/smb/SmbComWrite;->count:I

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    iget v1, p0, Ljcifs/smb/SmbComWrite;->offset:I

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 23
    add-int/lit8 v0, v0, 0x4

    .line 25
    iget v1, p0, Ljcifs/smb/SmbComWrite;->remaining:I

    .line 27
    int-to-long v1, v1

    .line 28
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 31
    add-int/lit8 v0, v0, 0x2

    .line 33
    sub-int/2addr v0, p2

    .line 34
    return v0
.end method
