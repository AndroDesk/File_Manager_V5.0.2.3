.class Ljcifs/netbios/SessionRetargetResponsePacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SessionRetargetResponsePacket.java"


# instance fields
.field private retargetAddress:Ljcifs/netbios/NbtAddress;

.field private retargetPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x84

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    return-void
.end method


# virtual methods
.method public readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .registers 7

    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    if-ne p1, v0, :cond_22

    invoke-static {p2, p3}, Ljcifs/netbios/SessionServicePacket;->readInt4([BI)I

    move-result p1

    add-int/lit8 p3, p3, 0x4

    new-instance v0, Ljcifs/netbios/NbtAddress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    iput-object v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetAddress:Ljcifs/netbios/NbtAddress;

    invoke-static {p2, p3}, Ljcifs/netbios/SessionServicePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetPort:I

    iget p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    return p1

    :cond_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unexpected EOF reading netbios retarget session response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTrailerWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
