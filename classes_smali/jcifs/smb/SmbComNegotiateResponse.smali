.class Ljcifs/smb/SmbComNegotiateResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComNegotiateResponse.java"


# instance fields
.field public dialectIndex:I

.field public server:Ljcifs/smb/SmbTransport$ServerData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbTransport$ServerData;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 9

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_7e

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    new-array v3, v1, [B

    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    add-int v3, p2, v1

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-le v4, v1, :cond_76

    :try_start_1d
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_1f} :catch_69

    const v1, 0x8000

    and-int/2addr v0, v1

    const-string v4, "zero termination not found"

    const/16 v5, 0x100

    if-ne v0, v1, :cond_4c

    :goto_29
    add-int v0, v3, v2

    :try_start_2b
    aget-byte v1, p1, v0

    if-nez v1, :cond_41

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_41

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_74

    :cond_41
    add-int/lit8 v2, v2, 0x2

    if-gt v2, v5, :cond_46

    goto :goto_29

    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    :goto_4c
    add-int v0, v3, v2

    aget-byte v0, p1, v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_74

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_63

    goto :goto_4c

    :cond_63
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_69} :catch_69

    :catch_69
    move-exception p1

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_74

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_74
    :goto_74
    add-int/2addr v3, v2

    goto :goto_91

    :cond_76
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_91

    :cond_7e
    const/16 v1, 0x10

    new-array v3, v1, [B

    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move v3, p2

    :goto_91
    sub-int/2addr v3, p2

    return v3
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 11

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    add-int/lit8 v1, p2, 0x2

    const/16 v2, 0xa

    if-le v0, v2, :cond_e

    sub-int/2addr v1, p2

    return v1

    :cond_e
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    and-int/lit8 v3, v1, 0x1

    iput v3, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_25

    move v3, v5

    goto :goto_26

    :cond_25
    move v3, v4

    :goto_26
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    and-int/lit8 v3, v1, 0x4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_2f

    move v3, v5

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_38

    move v4, v5

    :cond_38
    iput-boolean v4, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    add-int/2addr v2, v6

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    add-int/2addr v2, v6

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/2addr v2, v7

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    add-int/2addr v2, v7

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    add-int/2addr v2, v7

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    add-int/2addr v2, v7

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v4

    iput-wide v4, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    add-int/2addr v2, v3

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    add-int/2addr v2, v6

    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v1, v2, 0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    iput p1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComNegotiateResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",wordCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dialectIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",securityMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v3, 0x1

    const-string v4, ",security="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v2, :cond_3c

    const-string v2, "share"

    goto :goto_3e

    :cond_3c
    const-string v2, "user"

    :goto_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",encryptedPasswords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",maxMpxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxNumberVcs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxRawSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sessionKey=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    const/16 v3, 0x8

    const-string v4, ",capabilities=0x"

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-wide v3, v3, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTimeZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",encryptionKeyLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",byteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",oemDomainName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

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
