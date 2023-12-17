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

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method

.method public constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .registers 9

    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/16 p1, 0x2f

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_7

    sget p1, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    return p1

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    sget p1, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return p1

    :cond_d
    const/4 p1, 0x0

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

    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComWriteAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 7

    move v0, p2

    :goto_1
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-gtz v1, :cond_17

    iget-object v1, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0

    :cond_17
    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 9

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1a

    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    sub-int v0, v1, v0

    const/4 v2, 0x4

    rem-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    const/4 v3, 0x0

    if-nez v0, :cond_13

    move v0, v3

    goto :goto_15

    :cond_13
    rsub-int/lit8 v0, v0, 0x4

    :goto_15
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/2addr v1, v0

    iput v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v4, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/2addr v0, v2

    move v1, v3

    :goto_29
    if-lt v1, v2, :cond_5e

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v3, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    const/16 v1, 0x20

    shr-long/2addr v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    return v0

    :cond_5e
    add-int/lit8 v4, v0, 0x1

    const/4 v5, -0x1

    aput-byte v5, p1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_29
.end method
