.class Ljcifs/smb/Trans2GetDfsReferral;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2GetDfsReferral.java"


# instance fields
.field private maxReferralLevel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    .line 7
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 9
    const/16 p1, 0x32

    .line 11
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 13
    const/16 p1, 0x10

    .line 15
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 20
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 22
    const/16 v0, 0x1000

    .line 24
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

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
    const-string v2, "Trans2GetDfsReferral["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",maxReferralLevel=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",filename="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 34
    const-string v3, "]"

    .line 36
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 43
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
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 14
    move-result p1

    .line 15
    add-int/2addr v0, p1

    .line 16
    sub-int/2addr v0, p2

    .line 17
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
