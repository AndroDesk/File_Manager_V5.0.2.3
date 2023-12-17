.class public interface abstract Lcom/micloud/midrive/cache/manager/ISyncDataManager;
.super Ljava/lang/Object;
.source "ISyncDataManager.java"


# virtual methods
.method public abstract addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
.end method

.method public abstract checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearData(Landroid/content/Context;)V
.end method

.method public abstract clearLocalFileInfo(Ljava/lang/String;)Z
.end method

.method public abstract firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
.end method

.method public abstract firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
.end method

.method public abstract insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
.end method

.method public abstract insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
.end method

.method public abstract insertOrUpdateCloudFiles(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract queryAllFileCount()I
.end method

.method public abstract queryAllModifiedLocalFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllSyncFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryGroupId(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLatestCountFiles(IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
.end method

.method public abstract queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
.end method

.method public abstract removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
.end method

.method public abstract searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
.end method

.method public abstract syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
.end method

.method public abstract syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
.end method

.method public abstract tryUpdateSyncedStatus()Z
.end method

.method public abstract txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
.end method

.method public abstract txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
.end method

.method public abstract txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
.end method

.method public abstract txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
.end method

.method public abstract txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
.end method

.method public abstract txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
.end method

.method public abstract txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
.end method

.method public abstract txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
.end method

.method public abstract updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
.end method

.method public abstract updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
.end method

.method public abstract updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
.end method

.method public abstract updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
.end method

.method public abstract updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
.end method
