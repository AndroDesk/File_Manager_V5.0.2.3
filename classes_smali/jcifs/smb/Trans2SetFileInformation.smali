.class Ljcifs/smb/Trans2SetFileInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2SetFileInformation.java"


# static fields
.field public static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method public constructor <init>(IIJJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    .line 6
    iput p2, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    .line 8
    iput-wide p3, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    .line 10
    iput-wide p5, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    .line 12
    const/16 p1, 0x32

    .line 14
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 16
    const/16 p1, 0x8

    .line 18
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 20
    const/4 p1, 0x6

    .line 21
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 26
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 28
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
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
    const-string v2, "Trans2SetFileInformation["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",fid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    .line 24
    const-string v3, "]"

    .line 26
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 8

    .line 1
    iget-wide v0, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeTime(J[BI)V

    .line 6
    add-int/lit8 v0, p2, 0x8

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 13
    add-int/lit8 v0, v0, 0x8

    .line 15
    iget-wide v3, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    .line 17
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeTime(J[BI)V

    .line 20
    add-int/lit8 v0, v0, 0x8

    .line 22
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 25
    add-int/lit8 v0, v0, 0x8

    .line 27
    iget v3, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    .line 29
    or-int/lit16 v3, v3, 0x80

    .line 31
    int-to-long v3, v3

    .line 32
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 35
    add-int/lit8 v0, v0, 0x2

    .line 37
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 40
    add-int/lit8 v0, v0, 0x6

    .line 42
    sub-int/2addr v0, p2

    .line 43
    return v0
.end method

.method public writeParametersWireFormat([BI)I
    .registers 6

    .line 1
    iget v0, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    const-wide/16 v1, 0x101

    .line 11
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 14
    add-int/lit8 v0, v0, 0x2

    .line 16
    const-wide/16 v1, 0x0

    .line 18
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 23
    sub-int/2addr v0, p2

    .line 24
    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 5
    aput-byte v1, p1, p2

    .line 7
    const/4 p2, 0x0

    .line 8
    aput-byte p2, p1, v0

    .line 10
    const/4 p1, 0x2

    .line 11
    return p1
.end method
