.class public Lcom/micloud/midrive/utils/TransferPathUtils;
.super Ljava/lang/Object;
.source "TransferPathUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 5
    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 7
    invoke-static {v1, v2}, Lcom/micloud/midrive/utils/TransferPathUtils;->getDownloadTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v6

    .line 11
    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 13
    iget-object v4, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 15
    iget-object v5, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 17
    iget-object v7, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 19
    iget-wide v10, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v12

    .line 25
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getBigThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v14

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x0

    .line 35
    move-object v3, v1

    .line 36
    move/from16 v9, p1

    .line 38
    invoke-direct/range {v3 .. v16}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 41
    return-object v1
.end method

.method public static generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;
    .registers 16

    .line 1
    new-instance v12, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 3
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 22
    move-result-wide v7

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    move-object v0, v12

    .line 26
    move-object v4, p0

    .line 27
    move v9, p2

    .line 28
    invoke-direct/range {v0 .. v11}, Lcom/micloud/midrive/infos/FileUploadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 31
    return-object v12
.end method

.method public static getDownloadTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 24
    invoke-static {v0, p0, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
