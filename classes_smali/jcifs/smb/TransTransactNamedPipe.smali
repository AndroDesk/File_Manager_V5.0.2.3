.class Ljcifs/smb/TransTransactNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransTransactNamedPipe.java"


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I

.field private pipeFid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I[BII)V
    .registers 5

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    iput-object p2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iput p3, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    iput p4, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    const/16 p1, 0x25

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 p1, 0x26

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const p2, 0xffff

    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    const/4 p1, 0x2

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const-string p1, "\\PIPE\\"

    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

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

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransTransactNamedPipe["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pipeFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_14

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_12

    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    const-string p2, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/4 p1, 0x4

    return p1
.end method
