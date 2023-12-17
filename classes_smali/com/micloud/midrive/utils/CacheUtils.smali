.class public Lcom/micloud/midrive/utils/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of CacheUtils"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static convertToCachedFileInfo(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;
    .registers 17

    .line 1
    new-instance v14, Lcom/micloud/midrive/infos/CachedFileInfo;

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSha1()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getPath()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    move-object v0, p0

    .line 24
    iget-object v6, v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    .line 29
    move-result-wide v7

    .line 30
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 33
    move-result-wide v9

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v11

    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getThumbnailUrl()Ljava/lang/String;

    .line 41
    move-result-object v13

    .line 42
    move-object v0, v14

    .line 43
    invoke-direct/range {v0 .. v13}, Lcom/micloud/midrive/infos/CachedFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 46
    return-object v14
.end method

.method public static getCacheFileType(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    check-cast p0, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 7
    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    .line 9
    if-eqz v0, :cond_d

    .line 11
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 13
    return-object p0

    .line 14
    :cond_d
    iget-boolean p0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    .line 16
    if-eqz p0, :cond_14

    .line 18
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 20
    return-object p0

    .line 21
    :cond_14
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 23
    return-object p0

    .line 24
    :cond_17
    instance-of v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 26
    if-eqz v0, :cond_24

    .line 28
    check-cast p0, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 30
    iget-boolean p0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    .line 32
    if-nez p0, :cond_24

    .line 34
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 36
    return-object p0

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v0, "Should not reach here!"

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
.end method

.method public static getDoneFileCacheTypeForUI(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    if-ne p0, v0, :cond_7

    .line 5
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 7
    return-object p0

    .line 8
    :cond_7
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v0, "Should not reach here!"

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
.end method
