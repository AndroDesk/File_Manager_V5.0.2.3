.class Ljcifs/smb/SmbComQueryInformationResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComQueryInformationResponse.java"

# interfaces
.implements Ljcifs/smb/Info;


# instance fields
.field private fileAttributes:I

.field private fileSize:I

.field private lastWriteTime:J

.field private serverTimeZoneOffset:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 11
    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 13
    iput-wide p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    .line 15
    const/16 p1, 0x8

    .line 17
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 19
    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 3
    return v0
.end method

.method public getCreateTime()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 3
    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    .line 5
    add-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getLastWriteTime()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 3
    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    .line 5
    add-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 13
    add-int/lit8 p2, p2, 0x2

    .line 15
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readUTime([BI)J

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 21
    add-int/lit8 p2, p2, 0x4

    .line 23
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 29
    const/16 p1, 0x14

    .line 31
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComQueryInformationResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",fileAttributes=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ",lastWriteTime="

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v2, Ljava/util/Date;

    .line 39
    iget-wide v3, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 41
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",fileSize="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

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
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
