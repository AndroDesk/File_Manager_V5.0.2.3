.class Ljcifs/netbios/NodeStatusRequest;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusRequest.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    const/16 p1, 0x21

    iput p1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    iput-boolean p1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

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

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NodeStatusRequest["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .registers 6

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iget v1, v0, Ljcifs/netbios/Name;->hexCode:I

    const/4 v2, 0x0

    iput v2, v0, Ljcifs/netbios/Name;->hexCode:I

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeQuestionSectionWireFormat([BI)I

    move-result p1

    iget-object p2, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iput v1, p2, Ljcifs/netbios/Name;->hexCode:I

    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
