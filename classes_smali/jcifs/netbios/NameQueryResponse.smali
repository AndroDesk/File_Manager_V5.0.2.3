.class Ljcifs/netbios/NameQueryResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "NameQueryResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 4
    new-instance v0, Ljcifs/netbios/Name;

    .line 6
    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    .line 9
    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 11
    return-void
.end method


# virtual methods
.method public readBodyWireFormat([BI)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readResourceRecordWireFormat([BI)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public readRDataWireFormat([BI)I
    .registers 8

    .line 1
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_36

    .line 6
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_36

    .line 11
    :cond_a
    aget-byte v0, p1, p2

    .line 13
    and-int/lit16 v2, v0, 0x80

    .line 15
    const/16 v3, 0x80

    .line 17
    if-ne v2, v3, :cond_13

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_13
    and-int/lit8 v0, v0, 0x60

    .line 22
    shr-int/lit8 v0, v0, 0x5

    .line 24
    add-int/lit8 p2, p2, 0x2

    .line 26
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2d

    .line 32
    iget-object p2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 34
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    .line 36
    new-instance v3, Ljcifs/netbios/NbtAddress;

    .line 38
    iget-object v4, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 40
    invoke-direct {v3, v4, p1, v1, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    .line 43
    aput-object v3, p2, v2

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    iget-object p1, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 48
    iget p2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    .line 50
    const/4 v0, 0x0

    .line 51
    aput-object v0, p1, p2

    .line 53
    :goto_34
    const/4 p1, 0x6

    .line 54
    return p1

    .line 55
    :cond_36
    :goto_36
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NameQueryResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",addrEntry="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "]"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
