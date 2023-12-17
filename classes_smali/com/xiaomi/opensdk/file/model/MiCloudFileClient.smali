.class public final Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
.super Ljava/lang/Object;
.source "MiCloudFileClient.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;


# instance fields
.field private mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
    .registers 3

    sget-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    if-nez v0, :cond_22

    const-class v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    if-nez v1, :cond_1d

    if-eqz p0, :cond_15

    new-instance v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    invoke-direct {v1, p0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    goto :goto_1d

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    :goto_22
    sget-object p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    return-object p0
.end method

.method private transferException(Ljava/lang/Exception;)V
    .registers 8

    instance-of v0, p1, Lcn/kuaipan/android/exception/KscException;

    if-eqz v0, :cond_73

    move-object v0, p1

    check-cast v0, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {v0}, Lcn/kuaipan/android/exception/KscException;->getTransferStep()Lcn/kuaipan/android/kss/TransferStep;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    if-nez v2, :cond_68

    move-object v2, p1

    check-cast v2, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {v2}, Lcn/kuaipan/android/exception/KscException;->getSimpleMessage()Ljava/lang/String;

    move-result-object v2

    instance-of v3, p1, Lcn/kuaipan/android/exception/NetworkException;

    const-wide/32 v4, 0x493e0

    if-nez v3, :cond_5b

    instance-of v3, p1, Lcn/kuaipan/android/exception/ServerException;

    if-eqz v3, :cond_3d

    check-cast p1, Lcn/kuaipan/android/exception/ServerException;

    invoke-virtual {p1}, Lcn/kuaipan/android/exception/ServerException;->getStatusCode()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4e

    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->setStep(Ljava/lang/String;)V

    throw p1

    :cond_3d
    instance-of v3, p1, Lcn/kuaipan/android/exception/SessionExpiredException;

    if-eqz v3, :cond_4e

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    throw v1

    :cond_4e
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, v1, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    throw p1

    :cond_5b
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->setStep(Ljava/lang/String;)V

    throw p1

    :cond_68
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v0, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_73
    instance-of v0, p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    if-nez v0, :cond_78

    return-void

    :cond_78
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    move-object v1, p1

    check-cast v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    invoke-virtual {v1}, Lcn/kuaipan/android/exception/KscRuntimeException;->getErrorCode()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method

.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 8

    if-eqz p1, :cond_f

    new-instance v0, Lq1/d;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p1}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void

    :cond_f
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "downloadFile can\'t be null."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 12

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->getKssDownloadString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Z)V
    :try_end_14
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_a .. :try_end_14} :catch_1a
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    move-exception p1

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_1e

    :catch_1a
    move-exception p1

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    :goto_1e
    return-void

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot detect download sdk"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .registers 10

    new-instance v7, Lcom/xiaomi/opensdk/file/model/CommitParameter;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getCommitString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/model/CommitParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public getDownloadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;-><init>()V

    const-string v1, "storage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->setKssDownloadString(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDownloadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;-><init>()V

    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->setKssDownloadString(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .registers 10

    new-instance v7, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getKssString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFilePath()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v7
.end method

.method public getUploadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;-><init>()V

    const-string v1, "storage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "uploadId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setUploadId(Ljava/lang/String;)V

    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setKssUploadString(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .registers 5

    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadParameter;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;-><init>()V

    const-string v1, "upload_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_12
    const-string v1, "uploadId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setUploadId(Ljava/lang/String;)V

    const-string v1, "kss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setKssUploadString(Ljava/lang/String;)V

    return-object v0

    :cond_2f
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Missing necessary field : upload_id / uploadId"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    :try_end_5
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_0 .. :try_end_5} :catch_b
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p1

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method
