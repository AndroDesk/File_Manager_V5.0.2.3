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
.method public constructor <init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newFilePath:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newFilePath:Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    .line 18
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 20
    iget-wide v5, v1, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 22
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 32
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v2, v1, [Ljava/lang/Object;

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v4, "fileRename txRename DBOperationResponse: "

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x0

    .line 56
    aput-object v3, v2, v4

    .line 58
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 61
    iget-boolean v2, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 63
    iput-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 65
    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 71
    iget-boolean v0, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 73
    if-eqz v0, :cond_70

    .line 75
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 77
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 79
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;->val$newName:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/DiskFileOperator;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 91
    new-array v0, v1, [Ljava/lang/Object;

    .line 93
    const-string v1, "fileRename disk rename result: "

    .line 95
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v1

    .line 99
    iget-boolean v2, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    aput-object v1, v0, v4

    .line 110
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 113
    :cond_70
    return-void
.end method
