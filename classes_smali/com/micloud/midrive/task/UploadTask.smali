.class public Lcom/micloud/midrive/task/UploadTask;
.super Lcom/micloud/midrive/task/TransferBaseTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/micloud/midrive/task/TransferBaseTask<",
        "Lcom/micloud/midrive/infos/FileUploadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStartProgress:J

.field private mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

.field private mUploadRecordId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/FileUploadInfo;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/TransferBaseTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)V

    iput-wide p3, p0, Lcom/micloud/midrive/task/UploadTask;->mStartProgress:J

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/task/UploadTask;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/UploadTask;->lambda$onTransferFile$0(JJ)V

    return-void
.end method

.method private checkFile(Lcom/micloud/midrive/infos/FileUploadInfo;)V
    .registers 6

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/FileSystemUtils;->isNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-wide/16 v0, 0x0

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    const-wide v0, 0x100000000L

    cmp-long v0, v2, v0

    if-gtz v0, :cond_27

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckFileNameHelper;->validateFilename(Ljava/lang/String;)V

    return-void

    :cond_27
    new-instance p1, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    const/16 v0, 0x2b04

    invoke-direct {p1, v0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(I)V

    throw p1

    :cond_2f
    new-instance p1, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    const/16 v0, -0x2710

    invoke-direct {p1, v0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(I)V

    throw p1

    :cond_37
    new-instance p1, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    const/16 v0, 0x2afa

    invoke-direct {p1, v0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(I)V

    throw p1
.end method

.method private synthetic lambda$onTransferFile$0(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateMaxSpeed(J)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/TransferBaseTask;->postOnProgressUpdate(JJ)V

    return-void
.end method

.method private obtainFileImei(Lcom/micloud/midrive/infos/FileUploadInfo;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/micloud/midrive/utils/MimeUtils;->getMimeTypeFromMediaDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "application/octet-stream"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "vob"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    move-object v1, v2

    :cond_2f
    return-object v1
.end method

.method private recordTaskFinish()V
    .registers 4

    invoke-virtual {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/FileUploadInfo;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setFinishStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTaskEnd()V

    iget-object v1, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordEventByStopInfo(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .registers 3

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object p1

    check-cast p1, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFailedMovePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFailedMovePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_21
    invoke-direct {p0}, Lcom/micloud/midrive/task/UploadTask;->recordTaskFinish()V

    return-void
.end method

.method public onPrepare(Lcom/micloud/midrive/infos/FileUploadInfo;)V
    .registers 7

    new-instance v0, Lcom/micloud/midrive/stat/TransferTaskResultStat;

    const-string v1, "uploadTask"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTaskStart()V

    iget-object v0, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    iget-wide v1, p0, Lcom/micloud/midrive/task/UploadTask;->mStartProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setStartPos(J)V

    iget-object v0, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    iget-wide v1, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->setFileSize(J)V

    :try_start_1a
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/UploadTask;->checkFile(Lcom/micloud/midrive/infos/FileUploadInfo;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file uri path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFileItemInfo()Lcom/micloud/midrive/infos/FileItemInfo;

    move-result-object v1

    if-nez v1, :cond_77

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->createItemInfo(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/UploadTask;->obtainFileImei(Lcom/micloud/midrive/infos/FileUploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->setMimeType(Ljava/lang/String;)V

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadInfo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    :try_end_70
    .catch Lcom/micloud/midrive/task/exception/UploadCheckParamException; {:try_start_1a .. :try_end_70} :catch_73
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_70} :catch_71

    goto :goto_77

    :catch_71
    move-exception p1

    goto :goto_74

    :catch_73
    move-exception p1

    :goto_74
    invoke-static {p1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    :cond_77
    :goto_77
    return-void
.end method

.method public bridge synthetic onPrepare(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/UploadTask;->onPrepare(Lcom/micloud/midrive/infos/FileUploadInfo;)V

    return-void
.end method

.method public onTransferDone(Lcom/micloud/midrive/infos/FileUploadInfo;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/UploadTask;->mUploadRecordId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_14} :catch_80
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_2 .. :try_end_14} :catch_7e
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_2 .. :try_end_14} :catch_7c
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_2 .. :try_end_14} :catch_7a
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_2 .. :try_end_14} :catch_78
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_2 .. :try_end_14} :catch_76
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_2 .. :try_end_14} :catch_74

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "upload path dose not match local path, move!"

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_53
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/UploadTask;->mUploadRecordId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V

    :cond_73
    return-void

    :catch_74
    move-exception p1

    goto :goto_81

    :catch_76
    move-exception p1

    goto :goto_81

    :catch_78
    move-exception p1

    goto :goto_81

    :catch_7a
    move-exception p1

    goto :goto_81

    :catch_7c
    move-exception p1

    goto :goto_81

    :catch_7e
    move-exception p1

    goto :goto_81

    :catch_80
    move-exception p1

    :goto_81
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "upload finish, getSyncFileInfo error: "

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic onTransferDone(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/UploadTask;->onTransferDone(Lcom/micloud/midrive/infos/FileUploadInfo;)V

    return-void
.end method

.method public onTransferFile(Lcom/micloud/midrive/infos/FileUploadInfo;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 12

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload SFS file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v5, Lcom/android/cloud/fragment/presenter/b;

    const/16 v0, 0x11

    invoke-direct {v5, p0, v0}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferStart()V

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    iget-object v0, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Lcom/micloud/midrive/infos/FileUploadInfo;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/task/UploadTask;->mUploadRecordId:Ljava/lang/String;

    iget-object p1, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_44} :catch_56
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_1 .. :try_end_44} :catch_4c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_1 .. :try_end_44} :catch_45

    goto :goto_5f

    :catch_45
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferPause()V

    throw p1

    :catch_4c
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V

    invoke-static {p1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    goto :goto_5f

    :catch_56
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/task/UploadTask;->mTaskFinishStat:Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordTransferEnd()V

    invoke-static {p1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/InterruptedException;)V

    :goto_5f
    return-void
.end method

.method public bridge synthetic onTransferFile(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 3

    check-cast p1, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/task/UploadTask;->onTransferFile(Lcom/micloud/midrive/infos/FileUploadInfo;Lcom/micloud/midrive/server/transport/Network;)V

    return-void
.end method
