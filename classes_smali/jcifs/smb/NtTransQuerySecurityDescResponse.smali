.class Ljcifs/smb/NtTransQuerySecurityDescResponse;
.super Ljcifs/smb/SmbComNtTransactionResponse;
.source "NtTransQuerySecurityDescResponse.java"


# instance fields
.field public securityDescriptor:Ljcifs/smb/SecurityDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransactionResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 p1, 0x4

    .line 6
    return p1

    .line 7
    :cond_6
    :try_start_6
    new-instance v0, Ljcifs/smb/SecurityDescriptor;

    .line 9
    invoke-direct {v0}, Ljcifs/smb/SecurityDescriptor;-><init>()V

    .line 12
    iput-object v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    .line 17
    move-result p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_14

    .line 18
    add-int/2addr p1, p2

    .line 19
    sub-int/2addr p1, p2

    .line 20
    return p1

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/RuntimeException;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p2
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 4
    move-result p1

    .line 5
    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 7
    const/4 p1, 0x4

    .line 8
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
    const-string v2, "NtTransQuerySecurityResponse["

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
