.class Ljcifs/smb/SmbComNegotiateResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComNegotiateResponse.java"


# instance fields
.field public dialectIndex:I

.field public server:Ljcifs/smb/SmbTransport$ServerData;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbTransport$ServerData;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 6
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 9

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 3
    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 5
    const/high16 v2, -0x80000000

    .line 7
    and-int/2addr v1, v2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_7e

    .line 11
    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 13
    new-array v3, v1, [B

    .line 15
    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 17
    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 22
    iget v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 24
    add-int v3, p2, v1

    .line 26
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 28
    if-le v4, v1, :cond_76

    .line 30
    :try_start_1d
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_1f} :catch_69

    .line 32
    const v1, 0x8000

    .line 35
    and-int/2addr v0, v1

    .line 36
    const-string v4, "zero termination not found"

    .line 38
    const/16 v5, 0x100

    .line 40
    if-ne v0, v1, :cond_4c

    .line 42
    :goto_29
    add-int v0, v3, v2

    .line 44
    :try_start_2b
    aget-byte v1, p1, v0

    .line 46
    if-nez v1, :cond_41

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    aget-byte v0, p1, v0

    .line 52
    if-nez v0, :cond_41

    .line 54
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 56
    new-instance v1, Ljava/lang/String;

    .line 58
    const-string v4, "UTF-16LE"

    .line 60
    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 63
    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 65
    goto :goto_74

    .line 66
    :cond_41
    add-int/lit8 v2, v2, 0x2

    .line 68
    if-gt v2, v5, :cond_46

    .line 70
    goto :goto_29

    .line 71
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    .line 73
    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1

    .line 77
    :cond_4c
    :goto_4c
    add-int v0, v3, v2

    .line 79
    aget-byte v0, p1, v0

    .line 81
    if-nez v0, :cond_5e

    .line 83
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 85
    new-instance v1, Ljava/lang/String;

    .line 87
    sget-object v4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    .line 89
    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 92
    iput-object v1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 94
    goto :goto_74

    .line 95
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    .line 97
    if-gt v2, v5, :cond_63

    .line 99
    goto :goto_4c

    .line 100
    :cond_63
    new-instance p1, Ljava/lang/RuntimeException;

    .line 102
    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_69} :catch_69

    .line 106
    :catch_69
    move-exception p1

    .line 107
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 109
    const/4 v1, 0x1

    .line 110
    if-le v0, v1, :cond_74

    .line 112
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 117
    :cond_74
    :goto_74
    add-int/2addr v3, v2

    .line 118
    goto :goto_91

    .line 119
    :cond_76
    new-instance p1, Ljava/lang/String;

    .line 121
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 124
    iput-object p1, v0, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 126
    goto :goto_91

    .line 127
    :cond_7e
    const/16 v1, 0x10

    .line 129
    new-array v3, v1, [B

    .line 131
    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    .line 133
    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 138
    new-instance v0, Ljava/lang/String;

    .line 140
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 143
    iput-object v0, p1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 145
    move v3, p2

    .line 146
    :goto_91
    sub-int/2addr v3, p2

    .line 147
    return v3
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 11

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    .line 7
    add-int/lit8 v1, p2, 0x2

    .line 9
    const/16 v2, 0xa

    .line 11
    if-le v0, v2, :cond_e

    .line 13
    sub-int/2addr v1, p2

    .line 14
    return v1

    .line 15
    :cond_e
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 19
    aget-byte v1, p1, v1

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 23
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    .line 25
    and-int/lit8 v3, v1, 0x1

    .line 27
    iput v3, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 29
    and-int/lit8 v3, v1, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x2

    .line 34
    if-ne v3, v6, :cond_25

    .line 36
    move v3, v5

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v3, v4

    .line 39
    :goto_26
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 41
    and-int/lit8 v3, v1, 0x4

    .line 43
    const/4 v7, 0x4

    .line 44
    if-ne v3, v7, :cond_2f

    .line 46
    move v3, v5

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v3, v4

    .line 49
    :goto_30
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    .line 51
    const/16 v3, 0x8

    .line 53
    and-int/2addr v1, v3

    .line 54
    if-ne v1, v3, :cond_38

    .line 56
    move v4, v5

    .line 57
    :cond_38
    iput-boolean v4, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    .line 59
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 62
    move-result v1

    .line 63
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    .line 65
    add-int/2addr v2, v6

    .line 66
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 68
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 71
    move-result v1

    .line 72
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    .line 74
    add-int/2addr v2, v6

    .line 75
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 77
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 80
    move-result v1

    .line 81
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    .line 83
    add-int/2addr v2, v7

    .line 84
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 86
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 89
    move-result v1

    .line 90
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    .line 92
    add-int/2addr v2, v7

    .line 93
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 95
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 98
    move-result v1

    .line 99
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    .line 101
    add-int/2addr v2, v7

    .line 102
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 104
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 107
    move-result v1

    .line 108
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 110
    add-int/2addr v2, v7

    .line 111
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 113
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 116
    move-result-wide v4

    .line 117
    iput-wide v4, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    .line 119
    add-int/2addr v2, v3

    .line 120
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 122
    invoke-static {p1, v2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 125
    move-result v1

    .line 126
    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    .line 128
    add-int/2addr v2, v6

    .line 129
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 131
    add-int/lit8 v1, v2, 0x1

    .line 133
    aget-byte p1, p1, v2

    .line 135
    and-int/lit16 p1, p1, 0xff

    .line 137
    iput p1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 139
    sub-int/2addr v1, p2

    .line 140
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComNegotiateResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",wordCount="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",dialectIndex="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",securityMode=0x"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 44
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, ",security="

    .line 49
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 54
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 56
    if-nez v2, :cond_3c

    .line 58
    const-string v2, "share"

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    const-string v2, "user"

    .line 63
    :goto_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ",encryptedPasswords="

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 73
    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ",maxMpxCount="

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 85
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, ",maxNumberVcs="

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 97
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, ",maxBufferSize="

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 109
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ",maxRawSize="

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 121
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, ",sessionKey=0x"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 133
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    .line 135
    const/16 v3, 0x8

    .line 137
    const-string v4, ",capabilities=0x"

    .line 139
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 144
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    .line 146
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, ",serverTime="

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v2, Ljava/util/Date;

    .line 160
    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 162
    iget-wide v3, v3, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    .line 164
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, ",serverTimeZone="

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 177
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, ",encryptionKeyLength="

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 189
    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, ",byteCount="

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ",oemDomainName="

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 211
    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    .line 213
    const-string v3, "]"

    .line 215
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 222
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
