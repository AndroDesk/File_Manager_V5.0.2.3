.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDelete(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

.field public final synthetic val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/stat/FileOperationResultStat;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 5
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 3
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_29

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 11
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 14
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 17
    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 20
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 22
    invoke-interface {v0, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 28
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 30
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 33
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 35
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 41
    goto :goto_73

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 44
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 47
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 50
    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 53
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 55
    invoke-interface {v0, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 58
    move-result-object v0

    .line 59
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 61
    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 64
    const/4 v3, 0x2

    .line 65
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    const-string v4, "fileDelete txDelete file: "

    .line 69
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v4

    .line 73
    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    aput-object v4, v3, v2

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v5, "DBOperationResponse: "

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 101
    aput-object v4, v3, v1

    .line 103
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 106
    iget-boolean v3, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 108
    iput-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 110
    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 116
    :goto_73
    iget-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 118
    if-eqz v0, :cond_a0

    .line 120
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 122
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 124
    if-eqz v0, :cond_a0

    .line 126
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 136
    new-array v0, v1, [Ljava/lang/Object;

    .line 138
    const-string v1, "fileDelete disk delete result: "

    .line 140
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object v1

    .line 144
    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    aput-object v1, v0, v2

    .line 155
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 161
    :cond_a0
    return-void
.end method
