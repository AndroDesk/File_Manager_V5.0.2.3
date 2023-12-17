.class public final Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
.super Ljava/lang/Object;
.source "MiCloudFileClient.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;


# instance fields
.field private mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    .line 6
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    .line 11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 3
    if-nez v0, :cond_22

    .line 5
    const-class v0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 10
    if-nez v1, :cond_1d

    .line 12
    if-eqz p0, :cond_15

    .line 14
    new-instance v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 16
    invoke-direct {v1, p0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "context can\'t be null"

    .line 26
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1d
    :goto_1d
    monitor-exit v0

    .line 31
    goto :goto_22

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    .line 34
    throw p0

    .line 35
    :cond_22
    :goto_22
    sget-object p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->sInstance:Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    .line 37
    return-object p0
.end method

.method private transferException(Ljava/lang/Exception;)V
    .registers 8

    .line 1
    instance-of v0, p1, Lcn/kuaipan/android/exception/KscException;

    .line 3
    if-eqz v0, :cond_73

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcn/kuaipan/android/exception/KscException;

    .line 8
    invoke-virtual {v0}, Lcn/kuaipan/android/exception/KscException;->getTransferStep()Lcn/kuaipan/android/kss/TransferStep;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 18
    if-nez v2, :cond_68

    .line 20
    move-object v2, p1

    .line 21
    check-cast v2, Lcn/kuaipan/android/exception/KscException;

    .line 23
    invoke-virtual {v2}, Lcn/kuaipan/android/exception/KscException;->getSimpleMessage()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    instance-of v3, p1, Lcn/kuaipan/android/exception/NetworkException;

    .line 29
    const-wide/32 v4, 0x493e0

    .line 32
    if-nez v3, :cond_5b

    .line 34
    instance-of v3, p1, Lcn/kuaipan/android/exception/ServerException;

    .line 36
    if-eqz v3, :cond_3d

    .line 38
    check-cast p1, Lcn/kuaipan/android/exception/ServerException;

    .line 40
    invoke-virtual {p1}, Lcn/kuaipan/android/exception/ServerException;->getStatusCode()I

    .line 43
    move-result p1

    .line 44
    div-int/lit8 p1, p1, 0x64

    .line 46
    const/4 v3, 0x5

    .line 47
    if-ne p1, v3, :cond_4e

    .line 49
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 51
    invoke-direct {p1, v1, v2, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;J)V

    .line 54
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->setStep(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_3d
    instance-of v3, p1, Lcn/kuaipan/android/exception/SessionExpiredException;

    .line 64
    if-eqz v3, :cond_4e

    .line 66
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 68
    invoke-direct {v1, p1, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    .line 78
    throw v1

    .line 79
    :cond_4e
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 81
    invoke-direct {p1, v1, v2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    .line 91
    throw p1

    .line 92
    :cond_5b
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 94
    invoke-direct {p1, v1, v2, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;J)V

    .line 97
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->setStep(Ljava/lang/String;)V

    .line 104
    throw p1

    .line 105
    :cond_68
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 107
    new-instance v0, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;

    .line 109
    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/TransferStopByCallerException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    throw p1

    .line 116
    :cond_73
    instance-of v0, p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 118
    if-nez v0, :cond_78

    .line 120
    return-void

    .line 121
    :cond_78
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 123
    move-object v1, p1

    .line 124
    check-cast v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 126
    invoke-virtual {v1}, Lcn/kuaipan/android/exception/KscRuntimeException;->getErrorCode()I

    .line 129
    move-result v1

    .line 130
    invoke-direct {v0, p1, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;I)V

    .line 133
    throw v0
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method

.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 8

    if-eqz p1, :cond_f

    .line 1
    new-instance v0, Lq1/d;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p1}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    .line 2
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void

    .line 3
    :cond_f
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "downloadFile can\'t be null."

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 12

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->getKssDownloadString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6
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

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    :goto_1e
    return-void

    .line 9
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot detect download sdk"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .registers 10

    .line 1
    new-instance v7, Lcom/xiaomi/opensdk/file/model/CommitParameter;

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getCommitString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadId()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    .line 18
    move-result-wide v5

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/model/CommitParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    return-object v7
.end method

.method public getDownloadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;-><init>()V

    .line 6
    const-string v1, "storage"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object p1

    .line 12
    const-string v1, "kss"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->setKssDownloadString(Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

.method public getDownloadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;-><init>()V

    .line 6
    const-string v1, "kss"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->setKssDownloadString(Ljava/lang/String;)V

    .line 19
    return-object v0
.end method

.method public getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .registers 10

    .line 1
    new-instance v7, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getKssString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getSha1()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFileSize()J

    .line 14
    move-result-wide v4

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getFilePath()Ljava/lang/String;

    .line 18
    move-result-object v6

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    return-object v7
.end method

.method public getUploadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;-><init>()V

    .line 6
    const-string v1, "storage"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object p1

    .line 12
    const-string v1, "uploadId"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setUploadId(Ljava/lang/String;)V

    .line 21
    const-string v1, "kss"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setKssUploadString(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public getUploadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;-><init>()V

    .line 6
    const-string v1, "upload_id"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_12

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    const-string v1, "uploadId"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2f

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    :goto_1e
    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setUploadId(Ljava/lang/String;)V

    .line 34
    const-string v1, "kss"

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->setKssUploadString(Ljava/lang/String;)V

    .line 47
    return-object v0

    .line 48
    :cond_2f
    new-instance p1, Lorg/json/JSONException;

    .line 50
    const-string v0, "Missing necessary field : upload_id / uploadId"

    .line 52
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->mKssMasterRef:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    :try_end_5
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_0 .. :try_end_5} :catch_b
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    goto :goto_f

    .line 7
    :catch_6
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    .line 11
    goto :goto_f

    .line 12
    :catch_b
    move-exception p1

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->transferException(Ljava/lang/Exception;)V

    .line 16
    :goto_f
    return-void
.end method
