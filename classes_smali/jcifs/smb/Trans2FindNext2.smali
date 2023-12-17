.class Ljcifs/smb/Trans2FindNext2;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2FindNext2.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private flags:I

.field private informationLevel:I

.field private resumeKey:I

.field private sid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    .line 6
    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 8
    iput-object p3, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 10
    const/16 p1, 0x32

    .line 12
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 14
    const/4 p1, 0x2

    .line 15
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 17
    const/16 p1, 0x104

    .line 19
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    .line 24
    const/16 p2, 0x8

    .line 26
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 28
    sget p2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 30
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 32
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 34
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

.method public reset(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    .line 4
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 6
    iput-object p2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2FindNext2["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",sid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",searchCount="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",informationLevel=0x"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    .line 44
    const/4 v3, 0x3

    .line 45
    const-string v4, ",resumeKey=0x"

    .line 47
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 52
    const/4 v3, 0x4

    .line 53
    const-string v4, ",flags=0x"

    .line 55
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    .line 60
    const/4 v3, 0x2

    .line 61
    const-string v4, ",filename="

    .line 63
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 68
    const-string v3, "]"

    .line 70
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 77
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
    iget v0, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 23
    add-int/lit8 v0, v0, 0x2

    .line 25
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 27
    int-to-long v1, v1

    .line 28
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 31
    add-int/lit8 v0, v0, 0x4

    .line 33
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    .line 35
    int-to-long v1, v1

    .line 36
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 39
    add-int/lit8 v0, v0, 0x2

    .line 41
    iget-object v1, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 46
    move-result p1

    .line 47
    add-int/2addr v0, p1

    .line 48
    sub-int/2addr v0, p2

    .line 49
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
