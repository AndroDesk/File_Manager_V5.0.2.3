.class public Lcom/junrar/crc/RarCRC;
.super Ljava/lang/Object;
.source "RarCRC.java"


# static fields
.field private static final crcTab:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/junrar/crc/RarCRC;->crcTab:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_27

    move v3, v1

    move v4, v2

    :goto_c
    const/16 v5, 0x8

    if-ge v3, v5, :cond_20

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1b

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_1d

    :cond_1b
    ushr-int/lit8 v4, v4, 0x1

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    sget-object v3, Lcom/junrar/crc/RarCRC;->crcTab:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCrc(I[BII)I
    .registers 7

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p3, :cond_1a

    sget-object v1, Lcom/junrar/crc/RarCRC;->crcTab:[I

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v2, p0

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    ushr-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    return p0
.end method

.method public static checkOldCrc(S[BI)S
    .registers 5

    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_18

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    add-int/2addr p0, v1

    int-to-short p0, p0

    shl-int/lit8 v1, p0, 0x1

    ushr-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v1

    int-to-short p0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return p0
.end method
