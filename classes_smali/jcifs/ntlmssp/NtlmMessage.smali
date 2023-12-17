.class public abstract Ljcifs/ntlmssp/NtlmMessage;
.super Ljava/lang/Object;
.source "NtlmMessage.java"

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# static fields
.field public static final NTLMSSP_SIGNATURE:[B

.field private static final OEM_ENCODING:Ljava/lang/String;

.field public static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"


# instance fields
.field private flags:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    sget-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOEMEncoding()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public static readSecurityBuffer([BI)[B
    .registers 5

    invoke-static {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->readUShort([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static readULong([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUShort([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeSecurityBuffer([BII[B)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    array-length v1, p3

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-static {p0, p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1, p2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    invoke-static {p3, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeULong([BII)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUShort([BII)V
    .registers 4

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .registers 3

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    return v0
.end method

.method public setFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p2

    or-int/2addr p1, p2

    goto :goto_f

    :cond_8
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p2

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    :goto_f
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    iput p1, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    return-void
.end method

.method public abstract toByteArray()[B
.end method
