.class Ljcifs/smb/SmbComTreeConnectAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComTreeConnectAndXResponse.java"


# static fields
.field private static final SMB_SHARE_IS_IN_DFS:I = 0x2

.field private static final SMB_SUPPORT_SEARCH_BITS:I = 0x1


# instance fields
.field public nativeFileSystem:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public shareIsInDfs:Z

.field public supportSearchBits:Z


# direct methods
.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    const-string p1, ""

    .line 6
    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 6

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/ServerMessageBlock;->readStringLength([BII)I

    .line 6
    move-result v0

    .line 7
    :try_start_6
    new-instance v1, Ljava/lang/String;

    .line 9
    const-string v2, "ASCII"

    .line 11
    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 14
    iput-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_f} :catch_14

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    add-int/2addr v0, p2

    .line 19
    sub-int/2addr v0, p2

    .line 20
    return v0

    .line 21
    :catch_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 5

    .line 1
    aget-byte p1, p1, p2

    .line 3
    and-int/lit8 p2, p1, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p2, v1, :cond_a

    .line 9
    move p2, v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move p2, v0

    .line 12
    :goto_b
    iput-boolean p2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    .line 14
    const/4 p2, 0x2

    .line 15
    and-int/2addr p1, p2

    .line 16
    if-ne p1, p2, :cond_12

    .line 18
    move v0, v1

    .line 19
    :cond_12
    iput-boolean v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    .line 21
    return p2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComTreeConnectAndXResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",supportSearchBits="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",shareIsInDfs="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",service="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",nativeFileSystem="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    .line 54
    const-string v3, "]"

    .line 56
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 63
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
