.class public Lcom/junrar/rarfile/UnixOwnersHeader;
.super Lcom/junrar/rarfile/SubBlockHeader;
.source "UnixOwnersHeader.java"


# instance fields
.field private group:Ljava/lang/String;

.field private groupNameSize:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private owner:Ljava/lang/String;

.field private ownerNameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;)V

    const-class p1, Lcom/junrar/rarfile/UnixOwnersHeader;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    const/4 v1, 0x4

    add-int v2, v1, v0

    array-length v3, p2

    if-ge v2, v3, :cond_32

    new-array v2, v0, [B

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    :cond_32
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    add-int v2, v1, v0

    array-length v3, p2

    if-ge v2, v3, :cond_48

    new-array v2, v0, [B

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    :cond_48
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameSize()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNameSize()I
    .registers 2

    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return v0
.end method

.method public print()V
    .registers 4

    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "ownerNameSize: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "owner: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "groupNameSize: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    const-string v1, "group: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-void
.end method

.method public setGroupNameSize(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-void
.end method

.method public setOwnerNameSize(I)V
    .registers 2

    iput p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return-void
.end method
