.class Ljcifs/smb/Trans2QueryFSInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2QueryFSInformation.java"


# instance fields
.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/16 v0, 0x32

    .line 6
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 8
    const/4 v0, 0x3

    .line 9
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 11
    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    .line 13
    const/4 p1, 0x2

    .line 14
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 19
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 21
    const/16 v0, 0x320

    .line 23
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 25
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 27
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
    const-string v2, "Trans2QueryFSInformation["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",informationLevel=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "]"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 p1, p2, 0x2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
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
