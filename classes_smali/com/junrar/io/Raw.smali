.class public Lcom/junrar/io/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static incShortLittleEndian([BII)V
    .registers 6

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v1, v0, 0xff

    .line 5
    and-int/lit16 v2, p2, 0xff

    .line 7
    add-int/2addr v1, v2

    .line 8
    ushr-int/lit8 v1, v1, 0x8

    .line 10
    add-int/2addr v0, v2

    .line 11
    int-to-byte v0, v0

    .line 12
    aput-byte v0, p0, p1

    .line 14
    if-gtz v1, :cond_15

    .line 16
    const v0, 0xff00

    .line 19
    and-int/2addr v0, p2

    .line 20
    if-eqz v0, :cond_22

    .line 22
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 24
    aget-byte v0, p0, p1

    .line 26
    ushr-int/lit8 p2, p2, 0x8

    .line 28
    and-int/lit16 p2, p2, 0xff

    .line 30
    add-int/2addr p2, v1

    .line 31
    add-int/2addr p2, v0

    .line 32
    int-to-byte p2, p2

    .line 33
    aput-byte p2, p0, p1

    .line 35
    :cond_22
    return-void
.end method

.method public static readIntBigEndian([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    or-int/lit8 v0, v0, 0x0

    .line 7
    shl-int/lit8 v0, v0, 0x8

    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 11
    aget-byte v1, p0, v1

    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 15
    or-int/2addr v0, v1

    .line 16
    shl-int/lit8 v0, v0, 0x8

    .line 18
    add-int/lit8 v1, p1, 0x2

    .line 20
    aget-byte v1, p0, v1

    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 24
    or-int/2addr v0, v1

    .line 25
    shl-int/lit8 v0, v0, 0x8

    .line 27
    add-int/lit8 p1, p1, 0x3

    .line 29
    aget-byte p0, p0, p1

    .line 31
    and-int/lit16 p0, p0, 0xff

    .line 33
    or-int/2addr p0, v0

    .line 34
    return p0
.end method

.method public static readIntLittleEndian([BI)I
    .registers 4

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 3
    aget-byte v0, p0, v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 7
    shl-int/lit8 v0, v0, 0x18

    .line 9
    add-int/lit8 v1, p1, 0x2

    .line 11
    aget-byte v1, p0, v1

    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 15
    shl-int/lit8 v1, v1, 0x10

    .line 17
    or-int/2addr v0, v1

    .line 18
    add-int/lit8 v1, p1, 0x1

    .line 20
    aget-byte v1, p0, v1

    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 24
    shl-int/lit8 v1, v1, 0x8

    .line 26
    or-int/2addr v0, v1

    .line 27
    aget-byte p0, p0, p1

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static readShortLittleEndian([BI)S
    .registers 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 3
    aget-byte v0, p0, v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 7
    add-int/lit8 v0, v0, 0x0

    .line 9
    int-to-short v0, v0

    .line 10
    shl-int/lit8 v0, v0, 0x8

    .line 12
    int-to-short v0, v0

    .line 13
    aget-byte p0, p0, p1

    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 17
    add-int/2addr v0, p0

    .line 18
    int-to-short p0, v0

    .line 19
    return p0
.end method

.method public static writeIntBigEndian([BII)V
    .registers 5

    .line 1
    ushr-int/lit8 v0, p2, 0x18

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-byte v0, v0

    .line 6
    aput-byte v0, p0, p1

    .line 8
    add-int/lit8 v0, p1, 0x1

    .line 10
    ushr-int/lit8 v1, p2, 0x10

    .line 12
    and-int/lit16 v1, v1, 0xff

    .line 14
    int-to-byte v1, v1

    .line 15
    aput-byte v1, p0, v0

    .line 17
    add-int/lit8 v0, p1, 0x2

    .line 19
    ushr-int/lit8 v1, p2, 0x8

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 23
    int-to-byte v1, v1

    .line 24
    aput-byte v1, p0, v0

    .line 26
    add-int/lit8 p1, p1, 0x3

    .line 28
    and-int/lit16 p2, p2, 0xff

    .line 30
    int-to-byte p2, p2

    .line 31
    aput-byte p2, p0, p1

    .line 33
    return-void
.end method

.method public static writeIntLittleEndian([BII)V
    .registers 5

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 3
    ushr-int/lit8 v1, p2, 0x18

    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p0, v0

    .line 8
    add-int/lit8 v0, p1, 0x2

    .line 10
    ushr-int/lit8 v1, p2, 0x10

    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, p0, v0

    .line 15
    add-int/lit8 v0, p1, 0x1

    .line 17
    ushr-int/lit8 v1, p2, 0x8

    .line 19
    int-to-byte v1, v1

    .line 20
    aput-byte v1, p0, v0

    .line 22
    and-int/lit16 p2, p2, 0xff

    .line 24
    int-to-byte p2, p2

    .line 25
    aput-byte p2, p0, p1

    .line 27
    return-void
.end method

.method public static writeShortLittleEndian([BIS)V
    .registers 5

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 3
    ushr-int/lit8 v1, p2, 0x8

    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p0, v0

    .line 8
    and-int/lit16 p2, p2, 0xff

    .line 10
    int-to-byte p2, p2

    .line 11
    aput-byte p2, p0, p1

    .line 13
    return-void
.end method
