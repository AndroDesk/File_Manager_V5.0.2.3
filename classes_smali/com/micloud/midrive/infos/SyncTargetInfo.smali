.class public Lcom/micloud/midrive/infos/SyncTargetInfo;
.super Ljava/lang/Object;
.source "SyncTargetInfo.java"


# instance fields
.field private targetSyncName:Ljava/lang/String;

.field private targetSyncParentId:Ljava/lang/String;

.field private targetSyncSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getTargetSyncName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTargetSyncParentId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTargetSyncSha1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setTargetSyncName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTargetSyncParentId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTargetSyncSha1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "SyncTargetInfo{targetSyncParentId=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", targetSyncName=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    .line 18
    const-string v3, ", targetSyncSha1=\'"

    .line 20
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const/16 v1, 0x7d

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
