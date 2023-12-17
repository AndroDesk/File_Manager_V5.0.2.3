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
.method public constructor <init>(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->groupId:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getFolderItemCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    .line 3
    return v0
.end method

.method public getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    return-object v0
.end method

.method public getTargetRevision()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTransferId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setFolderItemCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    .line 3
    return-void
.end method

.method public setStatus(Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    return-void
.end method

.method public setTargetRevision(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "SyncTotalFileInfo{cloudFileInfo="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", localFileInfo="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", targetFileInfo="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", localFileId=\'"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 39
    const/16 v2, 0x27

    .line 41
    const-string v3, ", status="

    .line 43
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->status:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", targetRevision=\'"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetRevision:Ljava/lang/String;

    .line 58
    const-string v3, ", transferId=\'"

    .line 60
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->transferId:Ljava/lang/String;

    .line 65
    const-string v3, ", groupId=\'"

    .line 67
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->groupId:Ljava/lang/String;

    .line 72
    const-string v3, ", folderItemCount="

    .line 74
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 77
    iget v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->folderItemCount:I

    .line 79
    const/16 v2, 0x7d

    .line 81
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
