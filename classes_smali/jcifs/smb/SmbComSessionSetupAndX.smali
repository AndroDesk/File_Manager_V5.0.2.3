.class Ljcifs/smb/SmbComSessionSetupAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndX.java"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z


# instance fields
.field private accountName:Ljava/lang/String;

.field private blob:[B

.field private capabilities:I

.field public cred:Ljava/lang/Object;

.field private lmHash:[B

.field private ntHash:[B

.field private primaryDomain:Ljava/lang/String;

.field public session:Ljcifs/smb/SmbSession;

.field private sessionKey:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.client.SessionSetupAndX.TreeConnectAndX"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Ljcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    .line 10
    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    .line 12
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Ljcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-direct {p0, p2}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 7
    const/16 p2, 0x73

    .line 9
    iput-byte p2, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 11
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 13
    iput-object p3, p0, Ljcifs/smb/SmbComSessionSetupAndX;->cred:Ljava/lang/Object;

    .line 15
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 17
    iget v0, p2, Ljcifs/smb/SmbTransport;->sessionKey:I

    .line 19
    iput v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    .line 21
    iget v0, p2, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 23
    iput v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 25
    iget-object p2, p2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 27
    iget v1, p2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 29
    const-string v2, "Unsupported credential type"

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-ne v1, v3, :cond_c7

    .line 35
    instance-of v1, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 37
    if-eqz v1, :cond_b8

    .line 39
    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 41
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 43
    if-ne p3, v1, :cond_3b

    .line 45
    new-array p1, v4, [B

    .line 47
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 49
    new-array p1, v4, [B

    .line 51
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 53
    const p1, 0x7fffffff

    .line 56
    and-int/2addr p1, v0

    .line 57
    iput p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 59
    goto :goto_99

    .line 60
    :cond_3b
    iget-boolean v0, p2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 62
    if-eqz v0, :cond_64

    .line 64
    iget-object p2, p2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 66
    invoke-virtual {p3, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 72
    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 74
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 76
    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 78
    invoke-virtual {p3, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 84
    iget-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 86
    array-length p2, p2

    .line 87
    if-nez p2, :cond_99

    .line 89
    array-length p1, p1

    .line 90
    if-eqz p1, :cond_5c

    .line 92
    goto :goto_99

    .line 93
    :cond_5c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    const-string p2, "Null setup prohibited."

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :cond_64
    sget-boolean p1, Ljcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    .line 103
    if-nez p1, :cond_b0

    .line 105
    iget-boolean p1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 107
    if-eqz p1, :cond_83

    .line 109
    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    new-array p2, v4, [B

    .line 115
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 120
    move-result p2

    .line 121
    add-int/2addr p2, v3

    .line 122
    mul-int/lit8 p2, p2, 0x2

    .line 124
    new-array p2, p2, [B

    .line 126
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 128
    invoke-virtual {p0, p1, p2, v4}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 131
    goto :goto_99

    .line 132
    :cond_83
    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 139
    move-result p2

    .line 140
    add-int/2addr p2, v3

    .line 141
    mul-int/lit8 p2, p2, 0x2

    .line 143
    new-array p2, p2, [B

    .line 145
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 147
    new-array v0, v4, [B

    .line 149
    iput-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 151
    invoke-virtual {p0, p1, p2, v4}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 154
    :cond_99
    :goto_99
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 158
    iget-boolean p2, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 160
    if-eqz p2, :cond_a7

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 168
    :cond_a7
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    .line 176
    goto :goto_ed

    .line 177
    :cond_b0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 179
    const-string p2, "Plain text passwords are disabled"

    .line 181
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 184
    throw p1

    .line 185
    :cond_b8
    instance-of p1, p3, [B

    .line 187
    if-eqz p1, :cond_c1

    .line 189
    check-cast p3, [B

    .line 191
    iput-object p3, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 193
    goto :goto_ed

    .line 194
    :cond_c1
    new-instance p1, Ljcifs/smb/SmbException;

    .line 196
    invoke-direct {p1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p1

    .line 200
    :cond_c7
    if-nez v1, :cond_f4

    .line 202
    instance-of p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 204
    if-eqz p1, :cond_ee

    .line 206
    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 208
    new-array p1, v4, [B

    .line 210
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 212
    new-array p1, v4, [B

    .line 214
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 216
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 220
    iget-boolean p2, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 222
    if-eqz p2, :cond_e5

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 230
    :cond_e5
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    .line 238
    :goto_ed
    return-void

    .line 239
    :cond_ee
    new-instance p1, Ljcifs/smb/SmbException;

    .line 241
    invoke-direct {p1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 244
    throw p1

    .line 245
    :cond_f4
    new-instance p1, Ljcifs/smb/SmbException;

    .line 247
    const-string p2, "Unsupported"

    .line 249
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 252
    throw p1
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    .line 1
    const/16 v0, 0x75

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    sget p1, Ljcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 3

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
    const-string v2, "SmbComSessionSetupAndX["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",snd_buf_size="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 24
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 26
    iget v2, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ",maxMpxCount="

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 38
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 40
    iget v2, v2, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ",VC_NUMBER="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 52
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, ",sessionKey="

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, ",lmHash.length="

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 75
    const/4 v3, 0x0

    .line 76
    if-nez v2, :cond_4f

    .line 78
    move v2, v3

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    array-length v2, v2

    .line 81
    :goto_50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ",ntHash.length="

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 91
    if-nez v2, :cond_5d

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    array-length v3, v2

    .line 95
    :goto_5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, ",capabilities="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, ",accountName="

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, ",primaryDomain="

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, ",NATIVE_OS="

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 135
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 137
    sget-object v2, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, ",NATIVE_LANMAN="

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 149
    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 151
    sget-object v2, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    .line 153
    const-string v3, "]"

    .line 155
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 6
    array-length v2, v0

    .line 7
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 12
    array-length v0, v0

    .line 13
    add-int/2addr v0, p2

    .line 14
    goto :goto_30

    .line 15
    :cond_e
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 17
    array-length v2, v0

    .line 18
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 23
    array-length v0, v0

    .line 24
    add-int/2addr v0, p2

    .line 25
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 27
    array-length v3, v2

    .line 28
    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 33
    array-length v1, v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :goto_30
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 51
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 53
    sget-object v1, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 62
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 64
    sget-object v1, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 69
    move-result p1

    .line 70
    add-int/2addr v0, p1

    .line 71
    sub-int/2addr v0, p2

    .line 72
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 3
    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 5
    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 7
    int-to-long v0, v0

    .line 8
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 13
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 15
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 17
    iget v1, v1, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 23
    add-int/lit8 v0, v0, 0x2

    .line 25
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 27
    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 29
    const-wide/16 v1, 0x1

    .line 31
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 36
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    .line 38
    int-to-long v1, v1

    .line 39
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 42
    add-int/lit8 v0, v0, 0x4

    .line 44
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    .line 46
    if-eqz v1, :cond_35

    .line 48
    array-length v1, v1

    .line 49
    int-to-long v1, v1

    .line 50
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 53
    goto :goto_45

    .line 54
    :cond_35
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 56
    array-length v1, v1

    .line 57
    int-to-long v1, v1

    .line 58
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 61
    add-int/lit8 v0, v0, 0x2

    .line 63
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 65
    array-length v1, v1

    .line 66
    int-to-long v1, v1

    .line 67
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 70
    :goto_45
    add-int/lit8 v0, v0, 0x2

    .line 72
    add-int/lit8 v1, v0, 0x1

    .line 74
    const/4 v2, 0x0

    .line 75
    aput-byte v2, p1, v0

    .line 77
    add-int/lit8 v0, v1, 0x1

    .line 79
    aput-byte v2, p1, v1

    .line 81
    add-int/lit8 v1, v0, 0x1

    .line 83
    aput-byte v2, p1, v0

    .line 85
    add-int/lit8 v0, v1, 0x1

    .line 87
    aput-byte v2, p1, v1

    .line 89
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 91
    int-to-long v1, v1

    .line 92
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 95
    add-int/lit8 v0, v0, 0x4

    .line 97
    sub-int/2addr v0, p2

    .line 98
    return v0
.end method
