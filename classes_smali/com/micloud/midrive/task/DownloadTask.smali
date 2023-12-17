.class public Lcom/micloud/midrive/task/DownloadTask;
.super Lcom/micloud/midrive/task/TransferBaseTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/micloud/midrive/task/TransferBaseTask<",
        "Lcom/micloud/midrive/infos/FileDownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFilePath:Ljava/lang/String;

.field private final mStartProgress:J

.field private mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/FileDownloadInfo;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/TransferBaseTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)V

    iput-wide p3, p0, Lcom/micloud/midrive/task/DownloadTask;->mStartProgress:J

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/task/DownloadTask;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/DownloadTask;->lambda$onTransferFile$0(JJ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/DownloadTask;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$onTransferFile$0(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateMaxSpeed(J)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/TransferBaseTask;->postOnProgressUpdate(JJ)V

    return-void
.end method

.method private recordTaskFinish()V
    .registers 4

    invoke-virtual {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/FileDownloadInfo;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setFinishStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTaskEnd()V

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordEventByStopInfo(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    if-ne p1, v0, :cond_2b

    :try_start_16
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileIfExists(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_2b

    :catch_21
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/micloud/midrive/task/DownloadTask;->recordTaskFinish()V

    return-void
.end method

.method public onPrepare(Lcom/micloud/midrive/infos/FileDownloadInfo;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/micloud/midrive/utils/LocalPathUtils;->getLocalCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    new-instance v0, Lcom/micloud/midrive/stat/TransferTaskResultStat;

    const-string v1, "downloadTask"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTaskStart()V

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    iget-wide v1, p1, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setFileSize(J)V

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    iget-wide v1, p0, Lcom/micloud/midrive/task/DownloadTask;->mStartProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setStartPos(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "download file name: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", download path :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cache progress :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/micloud/midrive/task/DownloadTask;->mStartProgress:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPrepare(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/DownloadTask;->onPrepare(Lcom/micloud/midrive/infos/FileDownloadInfo;)V

    return-void
.end method

.method public onTransferDone(Lcom/micloud/midrive/infos/FileDownloadInfo;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_4
    iget-object v2, v0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    iget-object v3, v0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/micloud/midrive/task/BaseTask;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    sget-object v5, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v5, v6, v3}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadFilePath(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_31
    move-object v5, v2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    if-eqz v3, :cond_56

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-static {v2}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_56

    :cond_4e
    new-instance v0, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;

    const-string v2, "origin file sha1 changed."

    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    :goto_56
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_6d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start move and write back, origin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", goal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileIfExists(Ljava/io/File;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v14

    if-eqz v14, :cond_dd

    iget-object v3, v14, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v4, v14, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    new-instance v15, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v16, -0x1

    move-object v3, v15

    move-object v4, v6

    move-object v6, v7

    move-wide v7, v8

    move-wide v9, v10

    move-object v11, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v3 .. v13}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    new-instance v3, Lcom/micloud/midrive/task/DownloadTask$1;

    invoke-direct {v3, v1, v0, v15, v2}, Lcom/micloud/midrive/task/DownloadTask$1;-><init>(Lcom/micloud/midrive/task/DownloadTask;Lcom/micloud/midrive/infos/FileDownloadInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/io/File;)V

    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v0

    iget-object v2, v14, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_f4

    :cond_dd
    iget-object v0, v1, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e6} :catch_f0
    .catch Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException; {:try_start_4 .. :try_end_e6} :catch_ee
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_4 .. :try_end_e6} :catch_ec
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e6} :catch_e7

    goto :goto_f4

    :catch_e7
    move-exception v0

    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/InterruptedException;)V

    goto :goto_f4

    :catch_ec
    move-exception v0

    goto :goto_f1

    :catch_ee
    move-exception v0

    goto :goto_f1

    :catch_f0
    move-exception v0

    :goto_f1
    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    :goto_f4
    return-void
.end method

.method public bridge synthetic onTransferDone(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/DownloadTask;->onTransferDone(Lcom/micloud/midrive/infos/FileDownloadInfo;)V

    return-void
.end method

.method public onTransferFile(Lcom/micloud/midrive/infos/FileDownloadInfo;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 9

    :try_start_0
    new-instance v3, Lcom/android/cloud/fragment/presenter/b;

    const/16 v0, 0xf

    invoke-direct {v3, p0, v0}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/micloud/midrive/task/download/BaseDownloader;->createFileDownloader(Lcom/micloud/midrive/infos/FileDownloadInfo;)Lcom/micloud/midrive/task/download/BaseDownloader;

    move-result-object v0

    iget-object p1, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferStart()V

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    iget-object p1, p0, Lcom/micloud/midrive/task/DownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/micloud/midrive/task/download/BaseDownloader;->syncDownload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_25} :catch_3b
    .catch Lcom/micloud/midrive/task/download/BaseDownloader$CreateDownloaderFailedException; {:try_start_0 .. :try_end_25} :catch_31
    .catch Lcom/micloud/midrive/task/download/BaseDownloader$TransferException; {:try_start_0 .. :try_end_25} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_2d
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_44

    :catch_26
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferPause()V

    throw p1

    :catch_2d
    move-exception p1

    goto :goto_32

    :catch_2f
    move-exception p1

    goto :goto_32

    :catch_31
    move-exception p1

    :goto_32
    iget-object p2, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V

    invoke-static {p1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    goto :goto_44

    :catch_3b
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/task/DownloadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V

    invoke-static {p1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/InterruptedException;)V

    :goto_44
    return-void
.end method

.method public bridge synthetic onTransferFile(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 3

    check-cast p1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/task/DownloadTask;->onTransferFile(Lcom/micloud/midrive/infos/FileDownloadInfo;Lcom/micloud/midrive/server/transport/Network;)V

    return-void
.end method
