.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$newFilePath:Ljava/lang/String;

.field public final synthetic val$newName:Ljava/lang/String;

.field public final synthetic val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

.field public final synthetic val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iput-object p3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-wide v5, v1, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileRename txRename DBOperationResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    iput-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/DiskFileOperator;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fileRename disk rename result: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :cond_70
    return-void
.end method
