.class public abstract Ljcifs/netbios/SessionServicePacket;
.super Ljava/lang/Object;
.source "SessionServicePacket.java"


# static fields
.field public static final HEADER_LENGTH:I = 0x4

.field public static final MAX_MESSAGE_SIZE:I = 0x1ffff

.field public static final NEGATIVE_SESSION_RESPONSE:I = 0x83

.field public static final POSITIVE_SESSION_RESPONSE:I = 0x82

.field public static final SESSION_KEEP_ALIVE:I = 0x85

.field public static final SESSION_MESSAGE:I = 0x0

.field public static final SESSION_REQUEST:I = 0x81

.field public static final SESSION_RETARGET_RESPONSE:I = 0x84


# instance fields
.field public length:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInt2([BI)I
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-byte p0, p0, p1

    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static readInt4([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 18
    aget-byte v1, p0, v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 27
    aget-byte p0, p0, p1

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public static readLength([BI)I
    .registers 4

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 5
    aget-byte p1, p0, p1

    .line 7
    and-int/lit8 p1, p1, 0x1

    .line 9
    shl-int/lit8 p1, p1, 0x10

    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 13
    aget-byte v0, p0, v0

    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 17
    shl-int/lit8 v0, v0, 0x8

    .line 19
    add-int/2addr p1, v0

    .line 20
    aget-byte p0, p0, v1

    .line 22
    and-int/lit16 p0, p0, 0xff

    .line 24
    add-int/2addr p1, p0

    .line 25
    return p1
.end method

.method public static readPacketType(Ljava/io/InputStream;[BI)I
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/SessionServicePacket;->readn(Ljava/io/InputStream;[BII)I

    .line 5
    move-result p0

    .line 6
    if-eq p0, v0, :cond_13

    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p0, p1, :cond_b

    .line 11
    return p1

    .line 12
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 14
    const-string p1, "unexpected EOF reading netbios session header"

    .line 16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 20
    :cond_13
    aget-byte p0, p1, p2

    .line 22
    and-int/lit16 p0, p0, 0xff

    .line 24
    return p0
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-lt v0, p3, :cond_4

    .line 4
    goto :goto_e

    .line 5
    :cond_4
    add-int v1, p2, v0

    .line 7
    sub-int v2, p3, v0

    .line 9
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_f

    .line 15
    :goto_e
    return v0

    .line 16
    :cond_f
    add-int/2addr v0, v1

    .line 17
    goto :goto_1
.end method

.method public static writeInt2(I[BI)V
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x8

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, v0

    .line 15
    return-void
.end method

.method public static writeInt4(I[BI)V
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    add-int/lit8 p2, v0, 0x1

    .line 12
    shr-int/lit8 v1, p0, 0x10

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p1, v0

    .line 19
    add-int/lit8 v0, p2, 0x1

    .line 21
    shr-int/lit8 v1, p0, 0x8

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p1, p2

    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p1, v0

    .line 33
    return-void
.end method


# virtual methods
.method public readHeaderWireFormat(Ljava/io/InputStream;[BI)I
    .registers 4

    .line 1
    add-int/lit8 p1, p3, 0x1

    .line 3
    aget-byte p3, p2, p3

    .line 5
    and-int/lit16 p3, p3, 0xff

    .line 7
    iput p3, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    .line 9
    aget-byte p3, p2, p1

    .line 11
    and-int/lit8 p3, p3, 0x1

    .line 13
    shl-int/lit8 p3, p3, 0x10

    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-static {p2, p1}, Ljcifs/netbios/SessionServicePacket;->readInt2([BI)I

    .line 20
    move-result p1

    .line 21
    add-int/2addr p1, p3

    .line 22
    iput p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 24
    const/4 p1, 0x4

    .line 25
    return p1
.end method

.method public abstract readTrailerWireFormat(Ljava/io/InputStream;[BI)I
.end method

.method public readWireFormat(Ljava/io/InputStream;[BI)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readHeaderWireFormat(Ljava/io/InputStream;[BI)I

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readTrailerWireFormat(Ljava/io/InputStream;[BI)I

    .line 7
    move-result p1

    .line 8
    add-int/lit8 p1, p1, 0x4

    .line 10
    return p1
.end method

.method public writeHeaderWireFormat([BI)I
    .registers 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    iget v1, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p2

    .line 8
    iget p2, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 10
    const/4 v1, 0x1

    .line 11
    const v2, 0xffff

    .line 14
    if-le p2, v2, :cond_11

    .line 16
    aput-byte v1, p1, v0

    .line 18
    :cond_11
    add-int/2addr v0, v1

    .line 19
    invoke-static {p2, p1, v0}, Ljcifs/netbios/SessionServicePacket;->writeInt2(I[BI)V

    .line 22
    const/4 p1, 0x4

    .line 23
    return p1
.end method

.method public abstract writeTrailerWireFormat([BI)I
.end method

.method public writeWireFormat([BI)I
    .registers 4

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/SessionServicePacket;->writeTrailerWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 9
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/SessionServicePacket;->writeHeaderWireFormat([BI)I

    .line 12
    iget p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 14
    add-int/lit8 p1, p1, 0x4

    .line 16
    return p1
.end method
