.class Ljcifs/smb/SmbComTreeConnectAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComTreeConnectAndX.java"


# static fields
.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z

.field private static batchLimits:[B


# instance fields
.field private disconnectTid:Z

.field private password:[B

.field private passwordLength:I

.field public path:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Ljcifs/smb/SmbSession;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    .line 10
    const/16 v0, 0x9

    .line 12
    new-array v0, v0, [B

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-byte v1, v0, v2

    .line 17
    aput-byte v1, v0, v1

    .line 19
    const/4 v3, 0x2

    .line 20
    aput-byte v1, v0, v3

    .line 22
    const/4 v4, 0x3

    .line 23
    aput-byte v1, v0, v4

    .line 25
    const/4 v5, 0x4

    .line 26
    aput-byte v1, v0, v5

    .line 28
    const/4 v6, 0x5

    .line 29
    aput-byte v1, v0, v6

    .line 31
    const/4 v7, 0x6

    .line 32
    aput-byte v1, v0, v7

    .line 34
    const/4 v8, 0x7

    .line 35
    aput-byte v1, v0, v8

    .line 37
    sput-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 39
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    .line 41
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_36

    .line 47
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 49
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 52
    move-result v0

    .line 53
    aput-byte v0, v1, v2

    .line 55
    :cond_36
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    .line 57
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_46

    .line 63
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 65
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 68
    move-result v0

    .line 69
    aput-byte v0, v1, v3

    .line 71
    :cond_46
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    .line 73
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_56

    .line 79
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 81
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 84
    move-result v0

    .line 85
    aput-byte v0, v1, v4

    .line 87
    :cond_56
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    .line 89
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_66

    .line 95
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 97
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 100
    move-result v0

    .line 101
    aput-byte v0, v1, v5

    .line 103
    :cond_66
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    .line 105
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_76

    .line 111
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 113
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 116
    move-result v0

    .line 117
    aput-byte v0, v1, v6

    .line 119
    :cond_76
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    .line 121
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_86

    .line 127
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 129
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 132
    move-result v0

    .line 133
    aput-byte v0, v1, v7

    .line 135
    :cond_86
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    .line 137
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_96

    .line 143
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 145
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 148
    move-result v0

    .line 149
    aput-byte v0, v1, v8

    .line 151
    :cond_96
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    .line 153
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_a8

    .line 159
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 161
    const/16 v2, 0x8

    .line 163
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 166
    move-result v0

    .line 167
    aput-byte v0, v1, v2

    .line 169
    :cond_a8
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V
    .registers 5

    .line 1
    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 7
    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 9
    iput-object p2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 13
    const/16 p1, 0x75

    .line 15
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 17
    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 5

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 3
    if-eqz p1, :cond_45

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_3f

    .line 8
    const/4 v0, 0x6

    .line 9
    if-eq p1, v0, :cond_39

    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq p1, v1, :cond_34

    .line 14
    const/16 v0, 0x8

    .line 16
    if-eq p1, v0, :cond_2f

    .line 18
    const/16 v0, 0x10

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq p1, v0, :cond_2a

    .line 23
    const/16 v0, 0x25

    .line 25
    if-eq p1, v0, :cond_25

    .line 27
    const/16 v0, 0x2d

    .line 29
    if-eq p1, v0, :cond_1f

    .line 31
    return v2

    .line 32
    :cond_1f
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 34
    const/4 v0, 0x5

    .line 35
    aget-byte p1, p1, v0

    .line 37
    return p1

    .line 38
    :cond_25
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 40
    aget-byte p1, p1, v1

    .line 42
    return p1

    .line 43
    :cond_2a
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 45
    aget-byte p1, p1, v2

    .line 47
    return p1

    .line 48
    :cond_2f
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 50
    aget-byte p1, p1, v0

    .line 52
    return p1

    .line 53
    :cond_34
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 55
    aget-byte p1, p1, v0

    .line 57
    return p1

    .line 58
    :cond_39
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 60
    const/4 v0, 0x3

    .line 61
    aget-byte p1, p1, v0

    .line 63
    return p1

    .line 64
    :cond_3f
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 66
    const/4 v0, 0x4

    .line 67
    aget-byte p1, p1, v0

    .line 69
    return p1

    .line 70
    :cond_45
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    .line 72
    const/4 v0, 0x2

    .line 73
    aget-byte p1, p1, v0

    .line 75
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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComTreeConnectAndX["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",disconnectTid="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",passwordLength="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",password="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 44
    iget v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v2, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ",path="

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ",service="

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 71
    const-string v3, "]"

    .line 73
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 80
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 3
    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 5
    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 7
    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_24

    .line 12
    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 14
    iget-boolean v1, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 16
    if-nez v1, :cond_19

    .line 18
    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_24

    .line 26
    :cond_19
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 28
    iget v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 30
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 35
    add-int/2addr v0, p2

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    add-int/lit8 v0, p2, 0x1

    .line 39
    aput-byte v2, p1, p2

    .line 41
    :goto_28
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :try_start_2f
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 50
    const-string v3, "ASCII"

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 55
    move-result-object v1

    .line 56
    iget-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    move-result v3

    .line 62
    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_40} :catch_4d

    .line 65
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 70
    move-result v1

    .line 71
    add-int/2addr v1, v0

    .line 72
    add-int/lit8 v0, v1, 0x1

    .line 74
    aput-byte v2, p1, v1

    .line 76
    sub-int/2addr v0, p2

    .line 77
    return v0

    .line 78
    :catch_4d
    return v2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 3
    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 5
    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 7
    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_5a

    .line 13
    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 15
    iget-boolean v1, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 17
    if-nez v1, :cond_1a

    .line 19
    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_5a

    .line 27
    :cond_1a
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 29
    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 31
    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 33
    iget-boolean v4, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 35
    if-eqz v4, :cond_32

    .line 37
    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 39
    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 41
    invoke-virtual {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 47
    array-length v0, v0

    .line 48
    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 50
    goto :goto_5c

    .line 51
    :cond_32
    sget-boolean v1, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    .line 53
    if-nez v1, :cond_52

    .line 55
    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 57
    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, v3

    .line 64
    mul-int/lit8 v0, v0, 0x2

    .line 66
    new-array v0, v0, [B

    .line 68
    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 70
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 72
    iget-object v1, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 74
    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v1, v0, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 79
    move-result v0

    .line 80
    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 82
    goto :goto_5c

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    const-string p2, "Plain text passwords are disabled"

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1

    .line 91
    :cond_5a
    iput v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 93
    :goto_5c
    add-int/lit8 v0, p2, 0x1

    .line 95
    iget-boolean v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 97
    aput-byte v1, p1, p2

    .line 99
    add-int/lit8 p2, v0, 0x1

    .line 101
    aput-byte v2, p1, v0

    .line 103
    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 105
    int-to-long v0, v0

    .line 106
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 109
    const/4 p1, 0x4

    .line 110
    return p1
.end method
