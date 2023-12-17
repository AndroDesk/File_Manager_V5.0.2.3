.class Ljcifs/smb/TransactNamedPipeOutputStream;
.super Ljcifs/smb/SmbFileOutputStream;
.source "TransactNamedPipeOutputStream.java"


# instance fields
.field private dcePipe:Z

.field private path:Ljava/lang/String;

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 6

    .line 1
    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 3
    const v1, -0xff01

    .line 6
    and-int/2addr v0, v1

    .line 7
    or-int/lit8 v0, v0, 0x20

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v2, v0, [B

    .line 16
    iput-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    .line 18
    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 20
    iget v2, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 22
    const/16 v3, 0x600

    .line 24
    and-int/2addr v2, v3

    .line 25
    if-ne v2, v3, :cond_1b

    .line 27
    move v1, v0

    .line 28
    :cond_1b
    iput-boolean v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    .line 30
    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    .line 6
    return-void
.end method

.method public write(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    if-gez p3, :cond_3

    const/4 p3, 0x0

    .line 4
    :cond_3
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v2, v1, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_30

    .line 5
    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    .line 7
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 8
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransCallNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Ljcifs/smb/TransCallNamedPipe;-><init>(Ljava/lang/String;[BII)V

    .line 9
    new-instance p1, Ljcifs/smb/TransCallNamedPipeResponse;

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p1, p2}, Ljcifs/smb/TransCallNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 10
    invoke-virtual {v0, v1, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_55

    :cond_30
    const/16 v0, 0x200

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_55

    .line 11
    invoke-virtual {p0}, Ljcifs/smb/SmbFileOutputStream;->ensureOpen()V

    .line 12
    new-instance v0, Ljcifs/smb/TransTransactNamedPipe;

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    invoke-direct {v0, v1, p1, p2, p3}, Ljcifs/smb/TransTransactNamedPipe;-><init>(I[BII)V

    .line 13
    iget-boolean p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    if-eqz p1, :cond_49

    const/16 p1, 0x400

    .line 14
    iput p1, v0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 15
    :cond_49
    iget-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance p2, Ljcifs/smb/TransTransactNamedPipeResponse;

    iget-object p3, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p2, p3}, Ljcifs/smb/TransTransactNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {p1, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_55
    :goto_55
    return-void
.end method
