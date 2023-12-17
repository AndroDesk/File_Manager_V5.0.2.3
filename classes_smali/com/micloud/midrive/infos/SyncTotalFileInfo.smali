.class public Lcom/micloud/midrive/infos/SyncTotalFileInfo;
.super Ljava/lang/Object;
.source "SyncTotalFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    }
.end annotation


# instance fields
.field public final cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

.field private folderItemCount:I

.field public final groupId:Ljava/lang/String;

.field public final localFileId:Ljava/lang/String;

.field public final localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

.field private status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public final targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

.field private targetRevision:Ljava/lang/String;

.field private transferId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    iput-object p4, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    iput-object p5, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->groupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFolderItemCount()I
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    return v0
.end method

.method public getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object v0
.end method

.method public getTargetRevision()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderItemCount(I)V
    .registers 2

    iput p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    return-void
.end method

.method public setStatus(Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-void
.end method

.method public setTargetRevision(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    return-void
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "SyncTotalFileInfo{cloudFileInfo="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localFileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localFileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", status="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetRevision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    const-string v3, ", transferId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    const-string v3, ", groupId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->groupId:Ljava/lang/String;

    const-string v3, ", folderItemCount="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
