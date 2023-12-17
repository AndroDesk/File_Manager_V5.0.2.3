.class Ljcifs/smb/Trans2QueryPathInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2QueryPathInformation.java"


# instance fields
.field private informationLevel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    .line 8
    const/16 p1, 0x32

    .line 10
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 12
    const/4 p1, 0x5

    .line 13
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 18
    const/4 p2, 0x2

    .line 19
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 21
    const/16 p2, 0x28

    .line 23
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2QueryPathInformation["

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
    iget v2, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    .line 24
    const/4 v3, 0x3

    .line 25
    const-string v4, ",filename="

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 32
    const-string v3, "]"

    .line 34
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
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
    iget v0, p0, Ljcifs/smb/Trans2QueryPathInformation;->informationLevel:I

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
    add-int/lit8 v1, v0, 0x1

    .line 20
    aput-byte v2, p1, v0

    .line 22
    add-int/lit8 v0, v1, 0x1

    .line 24
    aput-byte v2, p1, v1

    .line 26
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 31
    move-result p1

    .line 32
    add-int/2addr v0, p1

    .line 33
    sub-int/2addr v0, p2

    .line 34
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
