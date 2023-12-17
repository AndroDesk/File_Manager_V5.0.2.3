.class public Lcom/micloud/midrive/infos/SyncTargetInfo;
.super Ljava/lang/Object;
.source "SyncTargetInfo.java"


# instance fields
.field private targetSyncName:Ljava/lang/String;

.field private targetSyncParentId:Ljava/lang/String;

.field private targetSyncSha1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTargetSyncName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSyncParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSyncSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetSyncName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    return-void
.end method

.method public setTargetSyncParentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    return-void
.end method

.method public setTargetSyncSha1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "SyncTargetInfo{targetSyncParentId=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncParentId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", targetSyncName=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncName:Ljava/lang/String;

    const-string v3, ", targetSyncSha1=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTargetInfo;->targetSyncSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
