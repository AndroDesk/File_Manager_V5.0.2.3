.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDeleteLocal(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
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

.method public constructor <init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileDeleteLocal clearLocalFileInfo result: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "fileDeleteLocal disk delete result: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    :cond_59
    return-void
.end method
