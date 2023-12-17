.class Ljcifs/smb/TransTransactNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransTransactNamedPipe.java"


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I

.field private pipeFid:I


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    .line 6
    iput-object p2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    .line 8
    iput p3, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    .line 10
    iput p4, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    .line 12
    const/16 p1, 0x25

    .line 14
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 16
    const/16 p1, 0x26

    .line 18
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 23
    const p2, 0xffff

    .line 26
    iput p2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 28
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 30
    const/4 p1, 0x2

    .line 31
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 33
    const-string p1, "\\PIPE\\"

    .line 35
    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 37
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
    const-string v2, "TransTransactNamedPipe["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",pipeFid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

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
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p2

    .line 3
    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    .line 5
    if-ge v0, v1, :cond_14

    .line 7
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 9
    const/4 p2, 0x3

    .line 10
    if-lt p1, p2, :cond_12

    .line 12
    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 14
    const-string p2, "TransTransactNamedPipe data too long for buffer"

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_14
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    .line 23
    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    .line 25
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    .line 30
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
    iget v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    .line 14
    int-to-long v0, v0

    .line 15
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 18
    const/4 p1, 0x4

    .line 19
    return p1
.end method
