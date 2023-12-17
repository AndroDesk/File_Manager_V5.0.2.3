.class public Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;,
        Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;
    }
.end annotation


# static fields
.field private static sClient:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->sClient:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    return-object v0
.end method

.method public static download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "TT;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->downloadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V

    return-void
.end method

.method private static downloadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "TT;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;-><init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V

    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, La/b;->f:Z

    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$3;

    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$3;-><init>()V

    sput-object v0, La/b;->g:Lm1/j;

    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;-><init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;)V

    new-instance p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

    invoke-direct {p0, v1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;-><init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;)V

    sput-object p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->sClient:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    return-void
.end method

.method private static transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V
    .registers 7

    new-instance v0, Lcom/micloud/midrive/server/transport/RetryControl;

    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/RetryControl;-><init>()V

    :goto_5
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->loopForRetry()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    :try_start_12
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->getRetryCountDown()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;->doAction(I)V

    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->done()V
    :try_end_1c
    .catch Lcom/xiaomi/opensdk/exception/UnretriableException; {:try_start_12 .. :try_end_1c} :catch_32
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_12 .. :try_end_1c} :catch_24
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_5

    :catch_1d
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_24
    move-exception v1

    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/exception/RetriableException;->getRetryTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    goto :goto_5

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_45

    :cond_40
    instance-of v3, v2, Lcn/kuaipan/android/exception/SessionExpiredException;

    if-eqz v3, :cond_45

    move-object v1, v2

    :cond_45
    :goto_45
    nop

    instance-of v2, v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    if-eqz v2, :cond_57

    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    iget-wide v3, v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    goto :goto_5

    :cond_57
    instance-of v2, v1, Lcn/kuaipan/android/exception/SessionExpiredException;

    if-eqz v2, :cond_6b

    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcn/kuaipan/android/exception/SessionExpiredException;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    goto :goto_5

    :cond_6b
    instance-of p0, v1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    if-nez p0, :cond_83

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;

    if-eqz p0, :cond_7d

    new-instance p0, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;-><init>()V

    throw p0

    :cond_7d
    new-instance p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p0, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_83
    check-cast v1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    throw v1

    :cond_86
    return-void
.end method

.method public static upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "TT;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->uploadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V

    return-void
.end method

.method private static uploadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "TT;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;-><init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V

    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V

    return-void
.end method
