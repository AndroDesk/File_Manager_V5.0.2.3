.class public Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;
.super Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiCloudFileMasterRequestor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<",
        "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getCommitUploadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    .line 4
    invoke-interface {v1, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->getCommitUploadParams(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->getUploadId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uploadId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "kss"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "file_meta"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "commit_metas"

    .line 10
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-object v0
.end method

.method public bridge synthetic getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getCommitUploadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getCommitUploadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .registers 3

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    iget-object p2, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->getCommitUploadURL(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getCommitUploadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequestDownloadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;

    .line 3
    iget-object v0, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {v0, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;->getRequestDownloadParams(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getRequestDownloadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRequestDownloadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)Ljava/lang/String;
    .registers 2

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;

    .line 3
    iget-object p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    invoke-interface {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;->getRequestDownloadURL()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getRequestDownloadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequestUploadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    .line 4
    invoke-interface {v1, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->getRequestUploadParams(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->getFileSHA1()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sha1"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->getKssString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kss"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getRequestUploadParams(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRequestUploadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .registers 3

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    iget-object p2, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->getRequestUploadURL(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->getRequestUploadURL(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleCommitUploadResult(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
    .registers 5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    :try_start_3
    iget-object v1, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget v0, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {v1, v0, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->onCommitUploadResponse(ILorg/json/JSONObject;)V
    :try_end_a
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_3 .. :try_end_a} :catch_21
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_3 .. :try_end_a} :catch_16
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_3 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 4
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_16
    move-exception p1

    .line 5
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_21
    move-exception p1

    .line 6
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->handleCommitUploadResult(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    move-result-object p1

    return-object p1
.end method

.method public handleRequestDownloadResultJson(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Z
    .registers 4

    .line 2
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;

    .line 3
    :try_start_2
    iget-object v0, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    iget p1, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;->onRequestDownloadResponse(ILorg/json/JSONObject;)V
    :try_end_9
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_2 .. :try_end_9} :catch_21
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_2 .. :try_end_9} :catch_16
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_2 .. :try_end_9} :catch_b

    const/4 p1, 0x1

    return p1

    :catch_b
    move-exception p1

    .line 4
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_16
    move-exception p1

    .line 5
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_21
    move-exception p1

    .line 6
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->handleRequestDownloadResultJson(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public handleRequestUploadResultJson(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
    .registers 5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 3
    :try_start_3
    iget-object v1, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    iget v0, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    invoke-interface {v1, v0, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->onRequestUploadResponse(ILorg/json/JSONObject;)Z

    move-result p2
    :try_end_b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_3 .. :try_end_b} :catch_26
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_3 .. :try_end_b} :catch_1b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_3 .. :try_end_b} :catch_10

    if-eqz p2, :cond_e

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1

    :catch_10
    move-exception p1

    .line 4
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1b
    move-exception p1

    .line 5
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_26
    move-exception p1

    .line 6
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;->wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->handleRequestUploadResultJson(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    move-result-object p1

    return-object p1
.end method
