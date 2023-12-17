.class public Ljcifs/ntlmssp/Type2Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type2Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_TARGET_INFORMATION:[B


# instance fields
.field private challenge:[B

.field private context:[B

.field private target:Ljava/lang/String;

.field private targetInformation:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "jcifs.smb.client.useUnicode"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eqz v0, :cond_c

    .line 11
    move v0, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v2

    .line 14
    :goto_d
    or-int/lit16 v0, v0, 0x200

    .line 16
    sput v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    .line 18
    const/4 v0, 0x0

    .line 19
    const-string v3, "jcifs.smb.client.domain"

    .line 21
    invoke-static {v3, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 27
    const/4 v3, 0x0

    .line 28
    new-array v4, v3, [B

    .line 30
    const-string v5, "UTF-16LE"

    .line 32
    if-eqz v0, :cond_25

    .line 34
    :try_start_21
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 37
    move-result-object v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    .line 38
    :catch_25
    :cond_25
    array-length v0, v4

    .line 39
    new-array v6, v3, [B

    .line 41
    :try_start_28
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    .line 48
    move-result-object v7
    :try_end_30
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_30} :catch_36

    .line 49
    if-eqz v7, :cond_36

    .line 51
    :try_start_32
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 54
    move-result-object v6
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    .line 55
    :catch_36
    :cond_36
    array-length v5, v6

    .line 56
    if-lez v0, :cond_3c

    .line 58
    add-int/lit8 v7, v0, 0x4

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v7, v3

    .line 62
    :goto_3d
    if-lez v5, :cond_42

    .line 64
    add-int/lit8 v8, v5, 0x4

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v8, v3

    .line 68
    :goto_43
    add-int/2addr v7, v8

    .line 69
    const/4 v8, 0x4

    .line 70
    add-int/2addr v7, v8

    .line 71
    new-array v7, v7, [B

    .line 73
    if-lez v0, :cond_55

    .line 75
    invoke-static {v7, v3, v2}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 78
    invoke-static {v7, v2, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 81
    invoke-static {v4, v3, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    add-int/2addr v8, v0

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v8, v3

    .line 87
    :goto_56
    if-lez v5, :cond_63

    .line 89
    invoke-static {v7, v8, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 92
    add-int/2addr v8, v2

    .line 93
    invoke-static {v7, v8, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 96
    add-int/2addr v8, v2

    .line 97
    invoke-static {v6, v3, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_63
    sput-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 8
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 9
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    .line 10
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_15
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .registers 6

    .line 3
    invoke-static {p1}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_13

    if-nez p3, :cond_13

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    :cond_13
    invoke-direct {p0, v0, p2, p3}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type2Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .line 1
    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I
    .registers 2

    if-nez p0, :cond_5

    .line 2
    sget p0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return p0

    .line 3
    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x2

    :goto_10
    or-int/lit16 v0, v0, 0x200

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_20

    .line 4
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    const p0, 0x10004

    or-int/2addr v0, p0

    :cond_20
    return v0
.end method

.method public static getDefaultTargetInformation()[B
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    .line 3
    return-object v0
.end method

.method private parse([B)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x8

    .line 5
    if-lt v1, v2, :cond_85

    .line 7
    invoke-static {p1, v2}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x2

    .line 12
    if-ne v1, v3, :cond_7d

    .line 14
    const/16 v1, 0x14

    .line 16
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0xc

    .line 26
    invoke-static {p1, v4}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 29
    move-result-object v4

    .line 30
    array-length v5, v4

    .line 31
    if-eqz v5, :cond_30

    .line 33
    new-instance v3, Ljava/lang/String;

    .line 35
    and-int/lit8 v1, v1, 0x1

    .line 37
    if-eqz v1, :cond_29

    .line 39
    const-string v1, "UTF-16LE"

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    :goto_2d
    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 49
    :cond_30
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    .line 52
    const/16 v1, 0x18

    .line 54
    move v3, v1

    .line 55
    :goto_36
    const/16 v4, 0x20

    .line 57
    if-lt v3, v4, :cond_3b

    .line 59
    goto :goto_47

    .line 60
    :cond_3b
    aget-byte v5, p1, v3

    .line 62
    if-eqz v5, :cond_7a

    .line 64
    new-array v3, v2, [B

    .line 66
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 72
    :goto_47
    const/16 v1, 0x10

    .line 74
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 77
    move-result v1

    .line 78
    if-eq v1, v4, :cond_79

    .line 80
    array-length v3, p1

    .line 81
    if-ne v3, v4, :cond_53

    .line 83
    goto :goto_79

    .line 84
    :cond_53
    move v3, v4

    .line 85
    :goto_54
    const/16 v5, 0x28

    .line 87
    if-lt v3, v5, :cond_59

    .line 89
    goto :goto_65

    .line 90
    :cond_59
    aget-byte v6, p1, v3

    .line 92
    if-eqz v6, :cond_76

    .line 94
    new-array v3, v2, [B

    .line 96
    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setContext([B)V

    .line 102
    :goto_65
    if-eq v1, v5, :cond_75

    .line 104
    array-length v0, p1

    .line 105
    if-ne v0, v5, :cond_6b

    .line 107
    goto :goto_75

    .line 108
    :cond_6b
    invoke-static {p1, v5}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 111
    move-result-object p1

    .line 112
    array-length v0, p1

    .line 113
    if-eqz v0, :cond_75

    .line 115
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    .line 118
    :cond_75
    :goto_75
    return-void

    .line 119
    :cond_76
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_54

    .line 122
    :cond_79
    :goto_79
    return-void

    .line 123
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_36

    .line 126
    :cond_7d
    new-instance p1, Ljava/io/IOException;

    .line 128
    const-string v0, "Not a Type 2 message."

    .line 130
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1

    .line 134
    :cond_85
    aget-byte v2, p1, v1

    .line 136
    sget-object v3, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 138
    aget-byte v3, v3, v1

    .line 140
    if-ne v2, v3, :cond_91

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto/16 :goto_2

    .line 146
    :cond_91
    new-instance p1, Ljava/io/IOException;

    .line 148
    const-string v0, "Not an NTLMSSP message."

    .line 150
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p1
.end method


# virtual methods
.method public getChallenge()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    .line 3
    return-object v0
.end method

.method public getContext()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    .line 3
    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTargetInformation()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    .line 3
    return-object v0
.end method

.method public setChallenge([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    .line 3
    return-void
.end method

.method public setContext([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    .line 3
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTargetInformation([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    .line 3
    return-void
.end method

.method public toByteArray()[B
    .registers 13

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    new-array v6, v5, [B

    .line 24
    and-int/lit8 v7, v4, 0x4

    .line 26
    if-eqz v7, :cond_3e

    .line 28
    if-eqz v0, :cond_3c

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_3c

    .line 36
    and-int/lit8 v6, v4, 0x1

    .line 38
    if-eqz v6, :cond_2e

    .line 40
    const-string v6, "UTF-16LE"

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 45
    move-result-object v0

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 58
    move-result-object v0

    .line 59
    :goto_3a
    move-object v6, v0

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    and-int/lit8 v4, v4, -0x5

    .line 63
    :cond_3e
    :goto_3e
    const/16 v0, 0x8

    .line 65
    if-eqz v3, :cond_49

    .line 67
    const/high16 v7, 0x800000

    .line 69
    or-int/2addr v4, v7

    .line 70
    if-nez v2, :cond_49

    .line 72
    new-array v2, v0, [B

    .line 74
    :cond_49
    const/16 v7, 0x28

    .line 76
    const/16 v8, 0x20

    .line 78
    if-eqz v2, :cond_51

    .line 80
    move v9, v7

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v9, v8

    .line 83
    :goto_52
    if-eqz v3, :cond_56

    .line 85
    add-int/lit8 v9, v9, 0x8

    .line 87
    :cond_56
    array-length v10, v6

    .line 88
    add-int/2addr v10, v9

    .line 89
    if-eqz v3, :cond_5c

    .line 91
    array-length v11, v3

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v11, v5

    .line 94
    :goto_5d
    add-int/2addr v10, v11

    .line 95
    new-array v10, v10, [B

    .line 97
    sget-object v11, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 99
    invoke-static {v11, v5, v10, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    const/4 v11, 0x2

    .line 103
    invoke-static {v10, v0, v11}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 106
    const/16 v11, 0xc

    .line 108
    invoke-static {v10, v11, v9, v6}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 111
    const/16 v11, 0x14

    .line 113
    invoke-static {v10, v11, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 116
    if-eqz v1, :cond_76

    .line 118
    goto :goto_78

    .line 119
    :cond_76
    new-array v1, v0, [B

    .line 121
    :goto_78
    const/16 v4, 0x18

    .line 123
    invoke-static {v1, v5, v10, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    if-eqz v2, :cond_82

    .line 128
    invoke-static {v2, v5, v10, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_82
    if-eqz v3, :cond_89

    .line 133
    array-length v0, v6

    .line 134
    add-int/2addr v9, v0

    .line 135
    invoke-static {v10, v7, v9, v3}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_89} :catch_8a

    .line 138
    :cond_89
    return-object v10

    .line 139
    :catch_8a
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    const-string v5, "Type2Message[target="

    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, ",challenge="

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "null"

    .line 34
    const-string v5, " bytes>"

    .line 36
    const-string v6, "<"

    .line 38
    if-nez v1, :cond_29

    .line 40
    move-object v1, v0

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    array-length v1, v1

    .line 48
    invoke-static {v7, v1, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    :goto_33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ",context="

    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    if-nez v2, :cond_3f

    .line 62
    move-object v1, v0

    .line 63
    goto :goto_49

    .line 64
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    array-length v2, v2

    .line 70
    invoke-static {v1, v2, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    :goto_49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ",targetInformation="

    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-nez v3, :cond_54

    .line 84
    goto :goto_5e

    .line 85
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    array-length v1, v3

    .line 91
    invoke-static {v0, v1, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    :goto_5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, ",flags=0x"

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 106
    move-result v0

    .line 107
    const/16 v1, 0x8

    .line 109
    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "]"

    .line 118
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
