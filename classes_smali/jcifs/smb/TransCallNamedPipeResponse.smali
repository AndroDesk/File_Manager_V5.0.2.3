.class Ljcifs/smb/TransCallNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "TransCallNamedPipeResponse.java"


# instance fields
.field private pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 6
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 3
    iget-object v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 5
    if-eqz v0, :cond_18

    .line 7
    check-cast v0, Ljcifs/smb/TransactNamedPipeInputStream;

    .line 9
    iget-object v1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_b
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/TransactNamedPipeInputStream;->receive([BII)I

    .line 15
    iget-object p1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit v1

    .line 21
    goto :goto_18

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    .line 24
    throw p1

    .line 25
    :cond_18
    :goto_18
    return p3
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
    const-string v2, "TransCallNamedPipeResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 16
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
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
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
