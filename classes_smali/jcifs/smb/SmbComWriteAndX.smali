.class Ljcifs/smb/SmbComWriteAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComWriteAndX.java"


# static fields
.field private static final CLOSE_BATCH_LIMIT:I

.field private static final READ_ANDX_BATCH_LIMIT:I


# instance fields
.field private b:[B

.field private dataLength:I

.field private dataOffset:I

.field private fid:I

.field private off:I

.field private offset:J

.field private pad:I

.field private remaining:I

.field public writeMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    .line 10
    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    .line 12
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 16
    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2f

    .line 2
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method

.method public constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .registers 9

    .line 3
    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 5
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 6
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 7
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 8
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 9
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/16 p1, 0x2f

    .line 10
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    .line 1
    const/16 v0, 0x2e

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    sget p1, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    .line 7
    return p1

    .line 8
    :cond_7
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_d

    .line 11
    sget p1, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

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
    .registers 8

    .line 1
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 3
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 5
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 7
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 9
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 11
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComWriteAndX["

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
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",offset="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",writeMode="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",remaining="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ",dataLength="

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, ",dataOffset="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 74
    const-string v3, "]"

    .line 76
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 7

    .line 1
    move v0, p2

    .line 2
    :goto_1
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 4
    add-int/lit8 v2, v1, -0x1

    .line 6
    iput v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 8
    if-gtz v1, :cond_17

    .line 10
    iget-object v1, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 12
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 14
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 16
    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 21
    add-int/2addr v0, p1

    .line 22
    sub-int/2addr v0, p2

    .line 23
    return v0

    .line 24
    :cond_17
    add-int/lit8 v1, v0, 0x1

    .line 26
    const/16 v2, -0x12

    .line 28
    aput-byte v2, p1, v0

    .line 30
    move v0, v1

    .line 31
    goto :goto_1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 9

    .line 1
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 3
    sub-int v1, p2, v0

    .line 5
    add-int/lit8 v1, v1, 0x1a

    .line 7
    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 9
    sub-int v0, v1, v0

    .line 11
    const/4 v2, 0x4

    .line 12
    rem-int/2addr v0, v2

    .line 13
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_13

    .line 18
    move v0, v3

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    rsub-int/lit8 v0, v0, 0x4

    .line 22
    :goto_15
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 24
    add-int/2addr v1, v0

    .line 25
    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 27
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 29
    int-to-long v0, v0

    .line 30
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 33
    add-int/lit8 v0, p2, 0x2

    .line 35
    iget-wide v4, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 37
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 40
    add-int/2addr v0, v2

    .line 41
    move v1, v3

    .line 42
    :goto_29
    if-lt v1, v2, :cond_5e

    .line 44
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 46
    int-to-long v4, v1

    .line 47
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 50
    add-int/lit8 v0, v0, 0x2

    .line 52
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 54
    int-to-long v4, v1

    .line 55
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 58
    add-int/lit8 v0, v0, 0x2

    .line 60
    add-int/lit8 v1, v0, 0x1

    .line 62
    aput-byte v3, p1, v0

    .line 64
    add-int/lit8 v0, v1, 0x1

    .line 66
    aput-byte v3, p1, v1

    .line 68
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 70
    int-to-long v3, v1

    .line 71
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 76
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 78
    int-to-long v3, v1

    .line 79
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 82
    add-int/lit8 v0, v0, 0x2

    .line 84
    iget-wide v3, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 86
    const/16 v1, 0x20

    .line 88
    shr-long/2addr v3, v1

    .line 89
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 92
    add-int/2addr v0, v2

    .line 93
    sub-int/2addr v0, p2

    .line 94
    return v0

    .line 95
    :cond_5e
    add-int/lit8 v4, v0, 0x1

    .line 97
    const/4 v5, -0x1

    .line 98
    aput-byte v5, p1, v0

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 102
    move v0, v4

    .line 103
    goto :goto_29
.end method
