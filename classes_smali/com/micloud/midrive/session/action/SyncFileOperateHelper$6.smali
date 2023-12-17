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
.method public constructor <init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 5
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 14
    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 20
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 22
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v1, v0, [Ljava/lang/Object;

    .line 28
    const-string v2, "fileDeleteLocal clearLocalFileInfo result: "

    .line 30
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v2

    .line 34
    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v2, v1, v3

    .line 46
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 51
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 53
    if-eqz v1, :cond_59

    .line 55
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    iput-boolean v1, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    const-string v1, "fileDeleteLocal disk delete result: "

    .line 69
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v1

    .line 73
    iget-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v0, v3

    .line 84
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 90
    :cond_59
    return-void
.end method
