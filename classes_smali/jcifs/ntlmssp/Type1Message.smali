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

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    or-int/lit16 v0, v1, 0x200

    sput v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    :try_start_18
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_20} :catch_20

    :catch_20
    sput-object v1, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

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

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    if-nez p3, :cond_14

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    :cond_14
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type1Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    sget v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method private parse([B)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_4d

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v3, v2

    :goto_28
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3b

    const/16 v1, 0x18

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object p1

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3b
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void

    :cond_45
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 1 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_58

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_58
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .registers 12

    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [B

    const/4 v5, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_28

    or-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move v0, v5

    goto :goto_2b

    :cond_28
    and-int/lit16 v2, v2, -0x1001

    move v0, v3

    :goto_2b
    new-array v6, v3, [B

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_46

    or-int/lit16 v0, v2, 0x2000

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move v1, v0

    move v0, v5

    goto :goto_48

    :cond_46
    and-int/lit16 v1, v2, -0x2001

    :goto_48
    const/16 v2, 0x10

    const/16 v7, 0x20

    if-eqz v0, :cond_53

    array-length v8, v4

    add-int/2addr v8, v7

    array-length v9, v6

    add-int/2addr v8, v9

    goto :goto_54

    :cond_53
    move v8, v2

    :goto_54
    new-array v8, v8, [B

    sget-object v9, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    const/16 v10, 0x8

    invoke-static {v9, v3, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v10, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    const/16 v3, 0xc

    invoke-static {v8, v3, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    if-eqz v0, :cond_71

    invoke-static {v8, v2, v7, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    const/16 v0, 0x18

    array-length v1, v4

    add-int/2addr v1, v7

    invoke-static {v8, v0, v1, v6}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_71} :catch_72

    :cond_71
    return-object v8

    :catch_72
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type1Message[suppliedDomain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "null"

    if-nez v0, :cond_14

    move-object v0, v3

    :cond_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",suppliedWorkstation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1f

    move-object v1, v3

    :cond_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
