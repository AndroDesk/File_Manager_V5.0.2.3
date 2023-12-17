.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$currentTimestamp:J

.field public final synthetic val$deleteOriginFile:Z

.field public final synthetic val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

.field public final synthetic val$newName:Ljava/lang/String;

.field public final synthetic val$newPath:Ljava/lang/String;

.field public final synthetic val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

.field public final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$deleteOriginFile:Z

    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    iput-object p3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iput-object p4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newName:Ljava/lang/String;

    iput-wide p7, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$currentTimestamp:J

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$deleteOriginFile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v4, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-wide v7, v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fileMoveOrCopy txMove file: "

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBOperationResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v3, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    iput-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy disk move result: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    goto/16 :goto_14f

    :cond_8b
    new-instance v0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v7

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v9

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-wide v12, v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setParentId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setPath(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setName(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$currentTimestamp:J

    invoke-virtual {v0, v3, v4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setModifyTime(J)V

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileMoveOrCopy new localFileInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "fileMoveOrCopy insertLocalFileInfo result: "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy disk copy result: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :cond_14f
    :goto_14f
    return-void
.end method
