.class Ljcifs/netbios/SessionRetargetResponsePacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SessionRetargetResponsePacket.java"


# instance fields
.field private retargetAddress:Ljcifs/netbios/NbtAddress;

.field private retargetPort:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    .line 4
    const/16 v0, 0x84

    .line 6
    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    .line 8
    const/4 v0, 0x6

    .line 9
    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 11
    return-void
.end method


# virtual methods
.method public readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .registers 7

    .line 1
    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 6
    move-result p1

    .line 7
    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 9
    if-ne p1, v0, :cond_22

    .line 11
    invoke-static {p2, p3}, Ljcifs/netbios/SessionServicePacket;->readInt4([BI)I

    .line 14
    move-result p1

    .line 15
    add-int/lit8 p3, p3, 0x4

    .line 17
    new-instance v0, Ljcifs/netbios/NbtAddress;

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, p1, v2, v2}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    .line 24
    iput-object v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetAddress:Ljcifs/netbios/NbtAddress;

    .line 26
    invoke-static {p2, p3}, Ljcifs/netbios/SessionServicePacket;->readInt2([BI)I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetPort:I

    .line 32
    iget p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 34
    return p1

    .line 35
    :cond_22
    new-instance p1, Ljava/io/IOException;

    .line 37
    const-string p2, "unexpected EOF reading netbios retarget session response"

    .line 39
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public writeTrailerWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
