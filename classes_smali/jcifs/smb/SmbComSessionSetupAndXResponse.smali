.class Ljcifs/smb/SmbComSessionSetupAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndXResponse.java"


# instance fields
.field public blob:[B

.field public isLoggedInAsGuest:Z

.field private nativeLanMan:Ljava/lang/String;

.field private nativeOs:Ljava/lang/String;

.field private primaryDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    const-string p1, ""

    .line 6
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 15
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 11

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 7
    const/4 v1, 0x0

    .line 8
    array-length v2, v0

    .line 9
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 14
    array-length v0, v0

    .line 15
    add-int/2addr v0, p2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, p2

    .line 18
    :goto_11
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BI)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 31
    add-int v5, p2, v1

    .line 33
    const/16 v6, 0xff

    .line 35
    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move v4, v0

    .line 40
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    .line 49
    move-result v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 53
    if-nez v1, :cond_4c

    .line 55
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 57
    add-int v5, p2, v1

    .line 59
    const/16 v6, 0xff

    .line 61
    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 63
    move-object v2, p0

    .line 64
    move-object v3, p1

    .line 65
    move v4, v0

    .line 66
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    .line 75
    move-result p1

    .line 76
    add-int/2addr v0, p1

    .line 77
    :cond_4c
    sub-int/2addr v0, p2

    .line 78
    return v0
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 5

    .line 1
    aget-byte v0, p1, p2

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    iput-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 13
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 20
    move-result p1

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 23
    new-array p1, p1, [B

    .line 25
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 27
    :cond_1a
    sub-int/2addr v0, p2

    .line 28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComSessionSetupAndXResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",isLoggedInAsGuest="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",nativeOs="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",nativeLanMan="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ",primaryDomain="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

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
