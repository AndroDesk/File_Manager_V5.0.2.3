.class public Lcom/micloud/midrive/task/ForegroundDownloadTask;
.super Landroid/os/AsyncTask;
.source "ForegroundDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/ForegroundDownloadTask$DiskFullException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isSuccess:Z

.field private mCacheFilePath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFileId:Ljava/lang/String;

.field private taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/task/ForegroundDownloadTask;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->lambda$doInBackground$0(Lcom/micloud/midrive/task/ForegroundDownloadTask;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/task/ForegroundDownloadTask;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 3
    return p1
.end method

.method private static synthetic lambda$doInBackground$0(Lcom/micloud/midrive/task/ForegroundDownloadTask;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Long;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    aput-object p2, v0, p1

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 29

    move-object/from16 v7, p0

    .line 2
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v5

    .line 3
    iget-object v0, v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v0, :cond_23

    .line 4
    iput-boolean v9, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 5
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    new-instance v1, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;

    const-string v2, "cloud file does not exists."

    invoke-direct {v1, v2}, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    iput-object v0, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    return-object v8

    .line 6
    :cond_23
    iget-wide v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->isDiskFullAfterDownload(J)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7
    iput-boolean v9, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 8
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    new-instance v1, Lcom/micloud/midrive/task/ForegroundDownloadTask$DiskFullException;

    const-string v2, "disk is not enough"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/task/ForegroundDownloadTask$DiskFullException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    iput-object v0, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    return-object v8

    .line 9
    :cond_3c
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/micloud/midrive/utils/LocalPathUtils;->getLocalCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 10
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11
    iget-object v3, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-static {v3}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "download fileId: "

    .line 13
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 14
    iget-object v4, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", download path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 15
    :try_start_7f
    new-instance v13, Lcom/android/cloud/fragment/presenter/b;

    const/16 v2, 0x10

    invoke-direct {v13, v7, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 16
    new-instance v10, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v10, v2}, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;-><init>([Ljava/lang/String;)V

    .line 17
    iget-object v11, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v12

    const/4 v15, 0x0

    move-object v14, v0

    invoke-virtual/range {v10 .. v15}, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->syncDownload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;Ljava/lang/Object;Z)V

    .line 18
    invoke-static {v0}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 20
    iput-boolean v9, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 21
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    new-instance v1, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;

    const-string v2, "file sha1 does not match."

    invoke-direct {v1, v2}, Lcom/micloud/midrive/task/DownloadTask$CheckSha1FailedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    iput-object v0, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    return-object v8

    .line 22
    :cond_bb
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    iget-object v3, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v2, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v4

    sget-object v6, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v2, v4, v6, v10, v3}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadFilePath(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_fa

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_fa

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_fa
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start move and write back, origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", goal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 31
    invoke-static {v6}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileIfExists(Ljava/io/File;)V

    .line 32
    new-instance v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v1, v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v10, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v25, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v20, v10

    move-object/from16 v24, v0

    invoke-direct/range {v16 .. v26}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    .line 34
    new-instance v4, Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v0, v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-direct {v4, v1, v2, v0}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;-><init>(Lcom/micloud/midrive/task/ForegroundDownloadTask;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/io/File;)V

    .line 36
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v1

    iget-object v2, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 37
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mFileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0
    :try_end_168
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_168} :catch_17f
    .catch Lcom/micloud/midrive/task/download/BaseDownloader$TransferException; {:try_start_7f .. :try_end_168} :catch_16f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_168} :catch_16d
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_7f .. :try_end_168} :catch_16b
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_7f .. :try_end_168} :catch_169

    return-object v0

    :catch_169
    move-exception v0

    goto :goto_170

    :catch_16b
    move-exception v0

    goto :goto_170

    :catch_16d
    move-exception v0

    goto :goto_170

    :catch_16f
    move-exception v0

    .line 38
    :goto_170
    iget-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 39
    iput-boolean v9, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 40
    new-instance v1, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    invoke-direct {v1, v0}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    iput-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    goto :goto_18e

    :catch_17f
    move-exception v0

    .line 41
    iget-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 42
    iput-boolean v9, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 43
    new-instance v1, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;

    invoke-direct {v1, v0}, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    iput-object v1, v7, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    :goto_18e
    return-object v8
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTaskException()Lcom/micloud/midrive/task/BaseTask$TaskException;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->taskException:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 3
    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->isSuccess:Z

    .line 3
    return v0
.end method

.method public onCancelled()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "download task canceled, path: "

    .line 7
    aput-object v2, v0, v1

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask;->mCacheFilePath:Ljava/lang/String;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 24
    :cond_17
    return-void
.end method
