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
.method public constructor <init>(Lcom/junrar/rarfile/SubBlockHeader;[B)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/SubBlockHeader;-><init>(Lcom/junrar/rarfile/SubBlockHeader;)V

    .line 4
    const-class p1, Lcom/junrar/rarfile/UnixOwnersHeader;

    .line 6
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 16
    move-result v0

    .line 17
    const v1, 0xffff

    .line 20
    and-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {p2, v0}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 27
    move-result v0

    .line 28
    and-int/2addr v0, v1

    .line 29
    iput v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 31
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 33
    const/4 v1, 0x4

    .line 34
    add-int v2, v1, v0

    .line 36
    array-length v3, p2

    .line 37
    if-ge v2, v3, :cond_32

    .line 39
    new-array v2, v0, [B

    .line 41
    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    new-instance v0, Ljava/lang/String;

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 49
    iput-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 51
    :cond_32
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 56
    add-int v2, v1, v0

    .line 58
    array-length v3, p2

    .line 59
    if-ge v2, v3, :cond_48

    .line 61
    new-array v2, v0, [B

    .line 63
    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance p1, Ljava/lang/String;

    .line 68
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 71
    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 73
    :cond_48
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupNameSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 3
    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOwnerNameSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 3
    return v0
.end method

.method public print()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/SubBlockHeader;->print()V

    .line 4
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 6
    const-string v1, "ownerNameSize: "

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 26
    const-string v1, "owner: "

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 46
    const-string v1, "groupNameSize: "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 66
    const-string v1, "group: "

    .line 68
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupNameSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 3
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setOwnerNameSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 3
    return-void
.end method
