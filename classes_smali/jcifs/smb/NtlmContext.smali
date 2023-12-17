.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;
.source "NtlmContext.java"


# instance fields
.field public auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field public isEstablished:Z

.field public log:Ljcifs/util/LogStream;

.field public netbiosName:Ljava/lang/String;

.field public ntlmsspFlags:I

.field public serverChallenge:[B

.field public signingKey:[B

.field public state:I

.field public workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 10
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 12
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 17
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 19
    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 21
    or-int/lit8 p1, p1, 0x4

    .line 23
    const/high16 v0, 0x80000

    .line 25
    or-int/2addr p1, v0

    .line 26
    const/high16 v0, 0x20000000

    .line 28
    or-int/2addr p1, v0

    .line 29
    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 31
    if-eqz p2, :cond_26

    .line 33
    const p2, 0x40008010

    .line 36
    or-int/2addr p1, p2

    .line 37
    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 39
    :cond_26
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 51
    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .registers 8

    .line 1
    const/16 v0, 0x3a

    .line 3
    :goto_2
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, v0, 0x2

    .line 9
    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 12
    move-result v2

    .line 13
    add-int/lit8 v0, v0, 0x4

    .line 15
    if-eqz v1, :cond_22

    .line 17
    add-int v3, v0, v2

    .line 19
    array-length v4, p1

    .line 20
    if-le v3, v4, :cond_16

    .line 22
    goto :goto_22

    .line 23
    :cond_16
    if-ne v1, p2, :cond_20

    .line 25
    :try_start_18
    new-instance p2, Ljava/lang/String;

    .line 27
    const-string v1, "UTF-16LE"

    .line 29
    invoke-direct {p2, p1, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1f} :catch_22

    .line 32
    return-object p2

    .line 33
    :cond_20
    move v0, v3

    .line 34
    goto :goto_2

    .line 35
    :catch_22
    :cond_22
    :goto_22
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getServerChallenge()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 3
    return-object v0
.end method

.method public getSigningKey()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 3
    return-object v0
.end method

.method public initSecContext([BII)[B
    .registers 15

    .line 1
    iget p2, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 v0, 0x6

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p2, v2, :cond_8c

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne p2, v3, :cond_84

    .line 12
    :try_start_b
    new-instance v5, Ljcifs/ntlmssp/Type2Message;

    .line 14
    invoke-direct {v5, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    .line 17
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 19
    if-lt p2, v1, :cond_23

    .line 21
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 23
    invoke-virtual {p2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 26
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 28
    if-lt p2, v0, :cond_23

    .line 30
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 32
    array-length v3, p1

    .line 33
    invoke-static {p2, p1, p3, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 36
    :cond_23
    invoke-virtual {v5}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 42
    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 44
    invoke-virtual {v5}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 47
    move-result p2

    .line 48
    and-int/2addr p1, p2

    .line 49
    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 51
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    .line 53
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 55
    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 61
    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 67
    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    .line 70
    move-result-object v8

    .line 71
    iget-object v9, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 73
    iget v10, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 75
    move-object v4, p1

    .line 76
    invoke-direct/range {v4 .. v10}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    .line 82
    move-result-object p2

    .line 83
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 85
    if-lt v3, v1, :cond_65

    .line 87
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 89
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 92
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 94
    if-lt v1, v0, :cond_65

    .line 96
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 98
    array-length v1, p2

    .line 99
    invoke-static {v0, p2, p3, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 102
    :cond_65
    iget p3, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 104
    and-int/lit8 p3, p3, 0x10

    .line 106
    if-eqz p3, :cond_71

    .line 108
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 114
    :cond_71
    iput-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 116
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 118
    add-int/2addr p1, v2

    .line 119
    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79

    .line 121
    goto :goto_b7

    .line 122
    :catch_79
    move-exception p1

    .line 123
    new-instance p2, Ljcifs/smb/SmbException;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    throw p2

    .line 133
    :cond_84
    new-instance p1, Ljcifs/smb/SmbException;

    .line 135
    const-string p2, "Invalid state"

    .line 137
    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1

    .line 141
    :cond_8c
    new-instance p1, Ljcifs/ntlmssp/Type1Message;

    .line 143
    iget p2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 145
    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 147
    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    iget-object v4, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 153
    invoke-direct {p1, p2, v3, v4}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    .line 159
    move-result-object p2

    .line 160
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 162
    if-lt v3, v1, :cond_b2

    .line 164
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 166
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 169
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 171
    if-lt p1, v0, :cond_b2

    .line 173
    iget-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 175
    array-length v0, p2

    .line 176
    invoke-static {p1, p2, p3, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 179
    :cond_b2
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 181
    add-int/2addr p1, v2

    .line 182
    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 184
    :goto_b7
    return-object p2
.end method

.method public isEstablished()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "NtlmContext[auth="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",ntlmsspFlags=0x"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 20
    const/16 v2, 0x8

    .line 22
    const-string v3, ",workstation="

    .line 24
    invoke-static {v1, v2, v0, v3}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ",isEstablished="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ",state="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 49
    const-string v2, ",serverChallenge="

    .line 51
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 57
    const-string v2, "null"

    .line 59
    const/4 v3, 0x0

    .line 60
    if-nez v1, :cond_4e

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    goto :goto_67

    .line 79
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 90
    array-length v4, v0

    .line 91
    mul-int/lit8 v4, v4, 0x2

    .line 93
    invoke-static {v0, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v0, ",signingKey="

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 124
    if-nez v1, :cond_8e

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    goto :goto_a7

    .line 143
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 154
    array-length v2, v0

    .line 155
    mul-int/lit8 v2, v2, 0x2

    .line 157
    invoke-static {v0, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    :goto_a7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v0, "]"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    return-object v0
.end method
