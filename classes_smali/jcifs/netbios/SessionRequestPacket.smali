.class public Ljcifs/netbios/SessionRequestPacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SessionRequestPacket.java"


# instance fields
.field private calledName:Ljcifs/netbios/Name;

.field private callingName:Ljcifs/netbios/Name;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    .line 2
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 3
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x81

    .line 5
    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    .line 6
    iput-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 7
    iput-object p2, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method public readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 6
    move-result p1

    .line 7
    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    .line 9
    if-ne p1, v0, :cond_1a

    .line 11
    iget-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 13
    invoke-virtual {p1, p2, p3}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    .line 16
    move-result p1

    .line 17
    add-int/2addr p1, p3

    .line 18
    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    .line 20
    invoke-virtual {v0, p2, p1}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    .line 23
    move-result p2

    .line 24
    add-int/2addr p2, p1

    .line 25
    sub-int/2addr p2, p3

    .line 26
    return p2

    .line 27
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    .line 29
    const-string p2, "invalid session request wire format"

    .line 31
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public writeTrailerWireFormat([BI)I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    iget-object v1, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    .line 10
    invoke-virtual {v1, p1, v0}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    .line 13
    move-result p1

    .line 14
    add-int/2addr p1, v0

    .line 15
    sub-int/2addr p1, p2

    .line 16
    return p1
.end method
