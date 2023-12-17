.class Ljcifs/netbios/NodeStatusRequest;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusRequest.java"


# direct methods
.method public constructor <init>(Ljcifs/netbios/Name;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 6
    const/16 p1, 0x21

    .line 8
    iput p1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 13
    iput-boolean p1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 15
    return-void
.end method


# virtual methods
.method public readBodyWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readRDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NodeStatusRequest["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 16
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 3
    iget v1, v0, Ljcifs/netbios/Name;->hexCode:I

    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Ljcifs/netbios/Name;->hexCode:I

    .line 8
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeQuestionSectionWireFormat([BI)I

    .line 11
    move-result p1

    .line 12
    iget-object p2, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    .line 14
    iput v1, p2, Ljcifs/netbios/Name;->hexCode:I

    .line 16
    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
