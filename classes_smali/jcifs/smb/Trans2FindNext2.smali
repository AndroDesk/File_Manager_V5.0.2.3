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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    iput-object p3, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x2

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/16 p1, 0x104

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    const/16 p2, 0x8

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    sget p2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

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

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    iput-object p2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2FindNext2["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",searchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 v3, 0x3

    const-string v4, ",resumeKey=0x"

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    const/4 v3, 0x4

    const-string v4, ",flags=0x"

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    const/4 v3, 0x2

    const-string v4, ",filename="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 6

    iget v0, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
