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

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    const/4 v0, 0x0

    const-string v3, "jcifs.smb.client.domain"

    invoke-static {v3, v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [B

    const-string v5, "UTF-16LE"

    if-eqz v0, :cond_25

    :try_start_21
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    array-length v0, v4

    new-array v6, v3, [B

    :try_start_28
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v7
    :try_end_30
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_30} :catch_36

    if-eqz v7, :cond_36

    :try_start_32
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    array-length v5, v6

    if-lez v0, :cond_3c

    add-int/lit8 v7, v0, 0x4

    goto :goto_3d

    :cond_3c
    move v7, v3

    :goto_3d
    if-lez v5, :cond_42

    add-int/lit8 v8, v5, 0x4

    goto :goto_43

    :cond_42
    move v8, v3

    :goto_43
    add-int/2addr v7, v8

    const/4 v8, 0x4

    add-int/2addr v7, v8

    new-array v7, v7, [B

    if-lez v0, :cond_55

    invoke-static {v7, v3, v2}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    invoke-static {v7, v2, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    invoke-static {v4, v3, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v0

    goto :goto_56

    :cond_55
    move v8, v3

    :goto_56
    if-lez v5, :cond_63

    invoke-static {v7, v8, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/2addr v8, v2

    invoke-static {v7, v8, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/2addr v8, v2

    invoke-static {v6, v3, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_63
    sput-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_15
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_13

    if-nez p3, :cond_13

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    :cond_13
    invoke-direct {p0, v0, p2, p3}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type2Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I
    .registers 2

    if-nez p0, :cond_5

    sget p0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return p0

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

    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-object v0
.end method

.method private parse([B)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-lt v1, v2, :cond_85

    invoke-static {p1, v2}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7d

    const/16 v1, 0x14

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {p1, v4}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_30

    new-instance v3, Ljava/lang/String;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    const-string v1, "UTF-16LE"

    goto :goto_2d

    :cond_29
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_30
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    const/16 v1, 0x18

    move v3, v1

    :goto_36
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3b

    goto :goto_47

    :cond_3b
    aget-byte v5, p1, v3

    if-eqz v5, :cond_7a

    new-array v3, v2, [B

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    :goto_47
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    if-eq v1, v4, :cond_79

    array-length v3, p1

    if-ne v3, v4, :cond_53

    goto :goto_79

    :cond_53
    move v3, v4

    :goto_54
    const/16 v5, 0x28

    if-lt v3, v5, :cond_59

    goto :goto_65

    :cond_59
    aget-byte v6, p1, v3

    if-eqz v6, :cond_76

    new-array v3, v2, [B

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setContext([B)V

    :goto_65
    if-eq v1, v5, :cond_75

    array-length v0, p1

    if-ne v0, v5, :cond_6b

    goto :goto_75

    :cond_6b
    invoke-static {p1, v5}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_75

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_75
    :goto_75
    return-void

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_79
    :goto_79
    return-void

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_7d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 2 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    aget-byte v2, p1, v1

    sget-object v3, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_91

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_91
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChallenge()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-object v0
.end method

.method public getContext()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInformation()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-object v0
.end method

.method public setChallenge([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-void
.end method

.method public setContext([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetInformation([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-void
.end method

.method public toByteArray()[B
    .registers 13

    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    new-array v6, v5, [B

    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_3e

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3c

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2e

    const-string v6, "UTF-16LE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3a

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_3a
    move-object v6, v0

    goto :goto_3e

    :cond_3c
    and-int/lit8 v4, v4, -0x5

    :cond_3e
    :goto_3e
    const/16 v0, 0x8

    if-eqz v3, :cond_49

    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    if-nez v2, :cond_49

    new-array v2, v0, [B

    :cond_49
    const/16 v7, 0x28

    const/16 v8, 0x20

    if-eqz v2, :cond_51

    move v9, v7

    goto :goto_52

    :cond_51
    move v9, v8

    :goto_52
    if-eqz v3, :cond_56

    add-int/lit8 v9, v9, 0x8

    :cond_56
    array-length v10, v6

    add-int/2addr v10, v9

    if-eqz v3, :cond_5c

    array-length v11, v3

    goto :goto_5d

    :cond_5c
    move v11, v5

    :goto_5d
    add-int/2addr v10, v11

    new-array v10, v10, [B

    sget-object v11, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    invoke-static {v11, v5, v10, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x2

    invoke-static {v10, v0, v11}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    const/16 v11, 0xc

    invoke-static {v10, v11, v9, v6}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    const/16 v11, 0x14

    invoke-static {v10, v11, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    if-eqz v1, :cond_76

    goto :goto_78

    :cond_76
    new-array v1, v0, [B

    :goto_78
    const/16 v4, 0x18

    invoke-static {v1, v5, v10, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_82

    invoke-static {v2, v5, v10, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_82
    if-eqz v3, :cond_89

    array-length v0, v6

    add-int/2addr v9, v0

    invoke-static {v10, v7, v9, v3}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_89} :catch_8a

    :cond_89
    return-object v10

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Type2Message[target="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",challenge="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    const-string v5, " bytes>"

    const-string v6, "<"

    if-nez v1, :cond_29

    move-object v1, v0

    goto :goto_33

    :cond_29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-static {v7, v1, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",context="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3f

    move-object v1, v0

    goto :goto_49

    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-static {v1, v2, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",targetInformation="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_54

    goto :goto_5e

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v3

    invoke-static {v0, v1, v5}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
