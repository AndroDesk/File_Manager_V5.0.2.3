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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->sClient:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    .line 3
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

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->downloadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V

    .line 4
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

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;

    .line 3
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;-><init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V

    .line 6
    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V

    .line 9
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, La/b;->f:Z

    .line 4
    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$3;

    .line 6
    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$3;-><init>()V

    .line 9
    sput-object v0, La/b;->g:Lm1/j;

    .line 11
    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;

    .line 13
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v1, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 18
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;-><init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;)V

    .line 21
    new-instance p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;-><init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;)V

    .line 26
    sput-object p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->sClient:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    .line 28
    return-void
.end method

.method private static transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/RetryControl;

    .line 3
    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/RetryControl;-><init>()V

    .line 6
    :goto_5
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->loopForRetry()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_86

    .line 12
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    .line 19
    :try_start_12
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->getRetryCountDown()I

    .line 22
    move-result v1

    .line 23
    invoke-interface {p1, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;->doAction(I)V

    .line 26
    invoke-virtual {v0}, Lcom/micloud/midrive/server/transport/RetryControl;->done()V
    :try_end_1c
    .catch Lcom/xiaomi/opensdk/exception/UnretriableException; {:try_start_12 .. :try_end_1c} :catch_32
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_12 .. :try_end_1c} :catch_24
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_5

    .line 30
    :catch_1d
    move-exception p0

    .line 31
    new-instance p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 33
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw p1

    .line 37
    :catch_24
    move-exception v1

    .line 38
    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 40
    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/exception/RetriableException;->getRetryTime()J

    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    .line 50
    goto :goto_5

    .line 51
    :catch_32
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    move-result-object v2

    .line 56
    instance-of v3, v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    .line 58
    if-eqz v3, :cond_40

    .line 60
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    move-result-object v1

    .line 64
    goto :goto_45

    .line 65
    :cond_40
    instance-of v3, v2, Lcn/kuaipan/android/exception/SessionExpiredException;

    .line 67
    if-eqz v3, :cond_45

    .line 69
    move-object v1, v2

    .line 70
    :cond_45
    :goto_45
    nop

    .line 71
    instance-of v2, v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    .line 73
    if-eqz v2, :cond_57

    .line 75
    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 77
    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    check-cast v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    .line 82
    iget-wide v3, v1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    .line 84
    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    .line 87
    goto :goto_5

    .line 88
    :cond_57
    instance-of v2, v1, Lcn/kuaipan/android/exception/SessionExpiredException;

    .line 90
    if-eqz v2, :cond_6b

    .line 92
    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 94
    invoke-direct {v2, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    check-cast v1, Lcn/kuaipan/android/exception/SessionExpiredException;

    .line 99
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-wide/16 v3, 0x1388

    .line 104
    invoke-virtual {v0, v2, v3, v4}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    .line 107
    goto :goto_5

    .line 108
    :cond_6b
    instance-of p0, v1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 110
    if-nez p0, :cond_83

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 115
    move-result-object p0

    .line 116
    instance-of p0, p0, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;

    .line 118
    if-eqz p0, :cond_7d

    .line 120
    new-instance p0, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    .line 122
    invoke-direct {p0}, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;-><init>()V

    .line 125
    throw p0

    .line 126
    :cond_7d
    new-instance p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 128
    invoke-direct {p0, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 131
    throw p0

    .line 132
    :cond_83
    check-cast v1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 134
    throw v1

    .line 135
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

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->uploadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V

    .line 4
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

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;

    .line 3
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;-><init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V

    .line 6
    invoke-static {p1, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->transfer(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;)V

    .line 9
    return-void
.end method
