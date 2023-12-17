.class Ljcifs/smb/SmbComReadAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndX.java"


# static fields
.field private static final BATCH_LIMIT:I


# instance fields
.field private fid:I

.field public maxCount:I

.field public minCount:I

.field private offset:J

.field private openTimeout:I

.field public remaining:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.client.ReadAndX.Close"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2e

    .line 2
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method

.method public constructor <init>(IJILjcifs/smb/ServerMessageBlock;)V
    .registers 6

    .line 4
    invoke-direct {p0, p5}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 5
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 6
    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 7
    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    const/16 p1, 0x2e

    .line 8
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    sget p1, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
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

.method public setParam(IJI)V
    .registers 5

    .line 1
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 3
    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 5
    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 7
    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComReadAndX["

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
    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",offset="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-wide v3, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 34
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ",maxCount="

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, ",minCount="

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, ",openTimeout="

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, ",remaining="

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v3, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-wide v2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "]"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 7

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 11
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 16
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    .line 18
    int-to-long v1, v1

    .line 19
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 24
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 26
    int-to-long v1, v1

    .line 27
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 30
    add-int/lit8 v0, v0, 0x2

    .line 32
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    .line 34
    int-to-long v1, v1

    .line 35
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 38
    add-int/lit8 v0, v0, 0x4

    .line 40
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    .line 42
    int-to-long v1, v1

    .line 43
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 46
    add-int/lit8 v0, v0, 0x2

    .line 48
    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 50
    const/16 v3, 0x20

    .line 52
    shr-long/2addr v1, v3

    .line 53
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 56
    add-int/lit8 v0, v0, 0x4

    .line 58
    sub-int/2addr v0, p2

    .line 59
    return v0
.end method
