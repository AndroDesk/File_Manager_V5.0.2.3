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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/stat/FileOperationResultStat;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    goto :goto_73

    :cond_29
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fileDelete txDelete file: "

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBOperationResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v3, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    iput-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    :goto_73
    iget-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fileDelete disk delete result: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    :cond_a0
    return-void
.end method
