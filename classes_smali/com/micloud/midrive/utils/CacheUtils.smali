.class public Lcom/micloud/midrive/utils/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "private constructor of CacheUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToCachedFileInfo(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;
    .registers 17

    new-instance v14, Lcom/micloud/midrive/infos/CachedFileInfo;

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSha1()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    iget-object v6, v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    move-result-wide v7

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v13

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/micloud/midrive/infos/CachedFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    return-object v14
.end method

.method public static getCacheFileType(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    instance-of v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;

    if-eqz v0, :cond_17

    check-cast p0, Lcom/micloud/midrive/infos/FileDownloadInfo;

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    if-eqz v0, :cond_d

    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_d
    iget-boolean p0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_14
    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_17
    instance-of v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;

    if-eqz v0, :cond_24

    check-cast p0, Lcom/micloud/midrive/infos/FileUploadInfo;

    iget-boolean p0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    if-nez p0, :cond_24

    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not reach here!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDoneFileCacheTypeForUI(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_7
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not reach here!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
