.class Ljcifs/smb/TransPeekNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransPeekNamedPipe.java"


# instance fields
.field private fid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    .line 8
    const/16 p1, 0x25

    .line 10
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 12
    const/16 p1, 0x23

    .line 14
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 19
    const/4 p1, 0x6

    .line 20
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 22
    const/4 p1, 0x1

    .line 23
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 25
    const/4 p1, 0x0

    .line 26
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 31
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
    const-string v2, "TransPeekNamedPipe["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",pipeName="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 24
    const-string v3, "]"

    .line 26
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

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
    add-int/lit8 p2, v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    aput-byte v1, p1, v0

    .line 12
    iget v0, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    .line 14
    int-to-long v0, v0

    .line 15
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 18
    const/4 p1, 0x4

    .line 19
    return p1
.end method
