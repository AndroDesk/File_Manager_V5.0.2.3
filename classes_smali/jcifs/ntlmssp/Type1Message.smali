.class public Ljcifs/ntlmssp/Type1Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type1Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;


# instance fields
.field private suppliedDomain:Ljava/lang/String;

.field private suppliedWorkstation:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.client.useUnicode"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x2

    .line 12
    :goto_b
    or-int/lit16 v0, v1, 0x200

    .line 14
    sput v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    .line 16
    const-string v0, "jcifs.smb.client.domain"

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 25
    :try_start_18
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    .line 32
    move-result-object v1
    :try_end_20
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_20} :catch_20

    .line 33
    :catch_20
    sput-object v1, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 3
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 4
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    if-nez p3, :cond_14

    .line 5
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    .line 6
    :cond_14
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 8
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type1Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .line 1
    sget v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    .line 3
    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private parse([B)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/16 v1, 0x8

    .line 4
    if-lt v0, v1, :cond_4d

    .line 6
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_45

    .line 13
    const/16 v0, 0xc

    .line 15
    invoke-static {p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 18
    move-result v0

    .line 19
    and-int/lit16 v1, v0, 0x1000

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_27

    .line 24
    const/16 v1, 0x10

    .line 26
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Ljava/lang/String;

    .line 32
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move-object v3, v2

    .line 41
    :goto_28
    and-int/lit16 v1, v0, 0x2000

    .line 43
    if-eqz v1, :cond_3b

    .line 45
    const/16 v1, 0x18

    .line 47
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 50
    move-result-object p1

    .line 51
    new-instance v2, Ljava/lang/String;

    .line 53
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 60
    :cond_3b
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 63
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    .line 69
    return-void

    .line 70
    :cond_45
    new-instance p1, Ljava/io/IOException;

    .line 72
    const-string v0, "Not a Type 1 message."

    .line 74
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    aget-byte v1, p1, v0

    .line 80
    sget-object v2, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 82
    aget-byte v2, v2, v0

    .line 84
    if-ne v1, v2, :cond_58

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_58
    new-instance p1, Ljava/io/IOException;

    .line 91
    const-string v0, "Not an NTLMSSP message."

    .line 93
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toByteArray()[B
    .registers 12

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [B

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v0, :cond_28

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_28

    .line 25
    or-int/lit16 v2, v2, 0x1000

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 38
    move-result-object v4

    .line 39
    move v0, v5

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    and-int/lit16 v2, v2, -0x1001

    .line 43
    move v0, v3

    .line 44
    :goto_2b
    new-array v6, v3, [B

    .line 46
    if-eqz v1, :cond_46

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_46

    .line 54
    or-int/lit16 v0, v2, 0x2000

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 67
    move-result-object v6

    .line 68
    move v1, v0

    .line 69
    move v0, v5

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    and-int/lit16 v1, v2, -0x2001

    .line 73
    :goto_48
    const/16 v2, 0x10

    .line 75
    const/16 v7, 0x20

    .line 77
    if-eqz v0, :cond_53

    .line 79
    array-length v8, v4

    .line 80
    add-int/2addr v8, v7

    .line 81
    array-length v9, v6

    .line 82
    add-int/2addr v8, v9

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v8, v2

    .line 85
    :goto_54
    new-array v8, v8, [B

    .line 87
    sget-object v9, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 89
    const/16 v10, 0x8

    .line 91
    invoke-static {v9, v3, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-static {v8, v10, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 97
    const/16 v3, 0xc

    .line 99
    invoke-static {v8, v3, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 102
    if-eqz v0, :cond_71

    .line 104
    invoke-static {v8, v2, v7, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 107
    const/16 v0, 0x18

    .line 109
    array-length v1, v4

    .line 110
    add-int/2addr v1, v7

    .line 111
    invoke-static {v8, v0, v1, v6}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_71} :catch_72

    .line 114
    :cond_71
    return-object v8

    .line 115
    :catch_72
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "Type1Message[suppliedDomain="

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v3, "null"

    .line 18
    if-nez v0, :cond_14

    .line 20
    move-object v0, v3

    .line 21
    :cond_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v0, ",suppliedWorkstation="

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    if-nez v1, :cond_1f

    .line 31
    move-object v1, v3

    .line 32
    :cond_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, ",flags=0x"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 43
    move-result v0

    .line 44
    const/16 v1, 0x8

    .line 46
    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "]"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
