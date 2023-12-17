.class Ljcifs/smb/NtTransQuerySecurityDesc;
.super Ljcifs/smb/SmbComNtTransaction;
.source "NtTransQuerySecurityDesc.java"


# instance fields
.field public fid:I

.field public securityInformation:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransaction;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    .line 6
    iput p2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    .line 8
    const/16 p1, -0x60

    .line 10
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 12
    const/4 p1, 0x6

    .line 13
    iput p1, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 18
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 20
    const/4 p2, 0x4

    .line 21
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 23
    const p2, 0x8000

    .line 26
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 28
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 30
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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NtTransQuerySecurityDesc["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",fid=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    .line 24
    const/4 v3, 0x4

    .line 25
    const-string v4, ",securityInformation=0x"

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    iget v2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    .line 32
    const/16 v3, 0x8

    .line 34
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "]"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 6

    .line 1
    iget v0, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-byte v2, p1, v0

    .line 14
    add-int/lit8 v0, v1, 0x1

    .line 16
    aput-byte v2, p1, v1

    .line 18
    iget v1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    .line 20
    int-to-long v1, v1

    .line 21
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 24
    add-int/lit8 v0, v0, 0x4

    .line 26
    sub-int/2addr v0, p2

    .line 27
    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
