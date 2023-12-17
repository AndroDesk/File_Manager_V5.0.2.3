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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 2

    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string p1, ""

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 11

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v0, v0

    add-int/2addr v0, p2

    goto :goto_11

    :cond_10
    move v0, p2

    :goto_11
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-nez v1, :cond_4c

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/ServerMessageBlock;->readString([BIIIZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4c
    sub-int/2addr v0, p2

    return v0
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 5

    aget-byte v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v1, :cond_1a

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    add-int/lit8 v0, v0, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    :cond_1a
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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
