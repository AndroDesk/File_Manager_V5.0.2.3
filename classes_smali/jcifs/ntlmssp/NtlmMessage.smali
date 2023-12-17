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

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x4e

    .line 8
    aput-byte v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    const/16 v2, 0x54

    .line 13
    aput-byte v2, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    const/16 v2, 0x4c

    .line 18
    aput-byte v2, v0, v1

    .line 20
    const/4 v1, 0x3

    .line 21
    const/16 v2, 0x4d

    .line 23
    aput-byte v2, v0, v1

    .line 25
    const/4 v1, 0x4

    .line 26
    const/16 v2, 0x53

    .line 28
    aput-byte v2, v0, v1

    .line 30
    const/4 v1, 0x5

    .line 31
    aput-byte v2, v0, v1

    .line 33
    const/4 v1, 0x6

    .line 34
    const/16 v2, 0x50

    .line 36
    aput-byte v2, v0, v1

    .line 38
    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 40
    sget-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 42
    sput-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOEMEncoding()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static readSecurityBuffer([BI)[B
    .registers 5

    .line 1
    invoke-static {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->readUShort([BI)I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 p1, p1, 0x4

    .line 7
    invoke-static {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 10
    move-result p1

    .line 11
    new-array v1, v0, [B

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-object v1
.end method

.method public static readULong([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 16
    aget-byte v1, p0, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 25
    aget-byte p0, p0, p1

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static readUShort([BI)I
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-byte p0, p0, p1

    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static writeSecurityBuffer([BII[B)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_5

    .line 4
    array-length v1, p3

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v1, v0

    .line 7
    :goto_6
    if-nez v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {p0, p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 13
    add-int/lit8 v2, p1, 0x2

    .line 15
    invoke-static {p0, v2, v1}, Ljcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 18
    add-int/lit8 p1, p1, 0x4

    .line 20
    invoke-static {p0, p1, p2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 23
    invoke-static {p3, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method

.method public static writeULong([BII)V
    .registers 5

    .line 1
    and-int/lit16 v0, p2, 0xff

    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 8
    shr-int/lit8 v1, p2, 0x8

    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, p0, v0

    .line 15
    add-int/lit8 v0, p1, 0x2

    .line 17
    shr-int/lit8 v1, p2, 0x10

    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 21
    int-to-byte v1, v1

    .line 22
    aput-byte v1, p0, v0

    .line 24
    add-int/lit8 p1, p1, 0x3

    .line 26
    shr-int/lit8 p2, p2, 0x18

    .line 28
    and-int/lit16 p2, p2, 0xff

    .line 30
    int-to-byte p2, p2

    .line 31
    aput-byte p2, p0, p1

    .line 33
    return-void
.end method

.method public static writeUShort([BII)V
    .registers 4

    .line 1
    and-int/lit16 v0, p2, 0xff

    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    shr-int/lit8 p2, p2, 0x8

    .line 10
    and-int/lit16 p2, p2, 0xff

    .line 12
    int-to-byte p2, p2

    .line 13
    aput-byte p2, p0, p1

    .line 15
    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public getFlags()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    .line 3
    return v0
.end method

.method public setFlag(IZ)V
    .registers 3

    .line 1
    if-eqz p2, :cond_8

    .line 3
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 6
    move-result p2

    .line 7
    or-int/2addr p1, p2

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 12
    move-result p2

    .line 13
    xor-int/lit8 p1, p1, -0x1

    .line 15
    and-int/2addr p1, p2

    .line 16
    :goto_f
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 19
    return-void
.end method

.method public setFlags(I)V
    .registers 2

    .line 1
    iput p1, p0, Ljcifs/ntlmssp/NtlmMessage;->flags:I

    .line 3
    return-void
.end method

.method public abstract toByteArray()[B
.end method
