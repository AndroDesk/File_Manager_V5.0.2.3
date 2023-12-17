.class public Lcom/junrar/crc/RarCRC;
.super Ljava/lang/Object;
.source "RarCRC.java"


# static fields
.field private static final crcTab:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v1, v0, [I

    .line 5
    sput-object v1, Lcom/junrar/crc/RarCRC;->crcTab:[I

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_27

    .line 11
    move v3, v1

    .line 12
    move v4, v2

    .line 13
    :goto_c
    const/16 v5, 0x8

    .line 15
    if-ge v3, v5, :cond_20

    .line 17
    and-int/lit8 v5, v4, 0x1

    .line 19
    if-eqz v5, :cond_1b

    .line 21
    ushr-int/lit8 v4, v4, 0x1

    .line 23
    const v5, -0x12477ce0

    .line 26
    xor-int/2addr v4, v5

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    ushr-int/lit8 v4, v4, 0x1

    .line 30
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_c

    .line 33
    :cond_20
    sget-object v3, Lcom/junrar/crc/RarCRC;->crcTab:[I

    .line 35
    aput v4, v3, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_8

    .line 40
    :cond_27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static checkCrc(I[BII)I
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p2

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    if-ge v0, p3, :cond_1a

    .line 10
    sget-object v1, Lcom/junrar/crc/RarCRC;->crcTab:[I

    .line 12
    add-int v2, p2, v0

    .line 14
    aget-byte v2, p1, v2

    .line 16
    xor-int/2addr v2, p0

    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 19
    aget v1, v1, v2

    .line 21
    ushr-int/lit8 p0, p0, 0x8

    .line 23
    xor-int/2addr p0, v1

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    return p0
.end method

.method public static checkOldCrc(S[BI)S
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 5
    move-result p2

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_6
    if-ge v0, p2, :cond_18

    .line 9
    aget-byte v1, p1, v0

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    int-to-short v1, v1

    .line 14
    add-int/2addr p0, v1

    .line 15
    int-to-short p0, p0

    .line 16
    shl-int/lit8 v1, p0, 0x1

    .line 18
    ushr-int/lit8 p0, p0, 0xf

    .line 20
    or-int/2addr p0, v1

    .line 21
    int-to-short p0, p0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    return p0
.end method
