.class public abstract Ljcifs/netbios/SessionServicePacket;
.super Ljava/lang/Object;
.source "SessionServicePacket.java"


# static fields
.field public static final HEADER_LENGTH:I

.field public static final MAX_MESSAGE_SIZE:I

.field public static final NEGATIVE_SESSION_RESPONSE:I

.field public static final POSITIVE_SESSION_RESPONSE:I

.field public static final SESSION_KEEP_ALIVE:I

.field public static final SESSION_MESSAGE:I

.field public static final SESSION_REQUEST:I

.field public static final SESSION_RETARGET_RESPONSE:I


# instance fields
.field public length:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->HEADER_LENGTH:I

    const v0, 0x8d269

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->MAX_MESSAGE_SIZE:I

    const v0, 0x92d15

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->NEGATIVE_SESSION_RESPONSE:I

    const v0, 0x92d14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->POSITIVE_SESSION_RESPONSE:I

    const v0, 0x92d13

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->SESSION_KEEP_ALIVE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->SESSION_MESSAGE:I

    const v0, 0x92d17

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->SESSION_REQUEST:I

    const v0, 0x92d12

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SessionServicePacket;->SESSION_RETARGET_RESPONSE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInt2([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt4([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readLength([BI)I
    .registers 4

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1
.end method

.method public static readPacketType(Ljava/io/InputStream;[BI)I
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/SessionServicePacket;->readn(Ljava/io/InputStream;[BII)I

    move-result p0

    if-eq p0, v0, :cond_13

    const/4 p1, -0x1

    if-ne p0, p1, :cond_b

    return p1

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected EOF reading netbios session header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    goto :goto_e

    :cond_4
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public static writeInt2(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public static writeInt4(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public readHeaderWireFormat(Ljava/io/InputStream;[BI)I
    .registers 4

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    iput p3, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    aget-byte p3, p2, p1

    and-int/lit8 p3, p3, 0x1

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljcifs/netbios/SessionServicePacket;->readInt2([BI)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    const/4 p1, 0x4

    return p1
.end method

.method public abstract readTrailerWireFormat(Ljava/io/InputStream;[BI)I
.end method

.method public readWireFormat(Ljava/io/InputStream;[BI)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readHeaderWireFormat(Ljava/io/InputStream;[BI)I

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readTrailerWireFormat(Ljava/io/InputStream;[BI)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public writeHeaderWireFormat([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    iget p2, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    const/4 v1, 0x1

    const v2, 0xffff

    if-le p2, v2, :cond_11

    aput-byte v1, p1, v0

    :cond_11
    add-int/2addr v0, v1

    invoke-static {p2, p1, v0}, Ljcifs/netbios/SessionServicePacket;->writeInt2(I[BI)V

    const/4 p1, 0x4

    return p1
.end method

.method public abstract writeTrailerWireFormat([BI)I
.end method

.method public writeWireFormat([BI)I
    .registers 4

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/SessionServicePacket;->writeTrailerWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/SessionServicePacket;->writeHeaderWireFormat([BI)I

    iget p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
