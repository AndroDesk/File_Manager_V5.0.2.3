.class Ljcifs/smb/TransPeekNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "TransPeekNamedPipeResponse.java"


# static fields
.field public static final STATUS_CONNECTION_OK:I = 0x3

.field public static final STATUS_DISCONNECTED:I = 0x1

.field public static final STATUS_LISTENING:I = 0x2

.field public static final STATUS_SERVER_END_CLOSED:I = 0x4


# instance fields
.field public available:I

.field private head:I

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field public status:I


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 6
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

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result p3

    .line 5
    iput p3, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I

    .line 7
    add-int/lit8 p2, p2, 0x2

    .line 9
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 12
    move-result p3

    .line 13
    iput p3, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->head:I

    .line 15
    add-int/lit8 p2, p2, 0x2

    .line 17
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 20
    move-result p1

    .line 21
    iput p1, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    .line 23
    const/4 p1, 0x6

    .line 24
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
    const-string v2, "TransPeekNamedPipeResponse["

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
