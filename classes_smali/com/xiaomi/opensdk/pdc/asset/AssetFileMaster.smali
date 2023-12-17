.class public final Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;
.super Ljava/lang/Object;
.source "AssetFileMaster.java"


# static fields
.field private static MAX_RETRY_TIME:I = 0x5

.field private static volatile sInstance:Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->sInstance:Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

    .line 3
    if-nez v0, :cond_22

    .line 5
    const-class v0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->sInstance:Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

    .line 10
    if-nez v1, :cond_1d

    .line 12
    if-eqz p0, :cond_15

    .line 14
    new-instance v1, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

    .line 16
    invoke-direct {v1, p0}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->sInstance:Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

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
    sget-object p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->sInstance:Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;

    .line 37
    return-object p0
.end method

.method private transferException(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 3
    if-eqz v0, :cond_47

    .line 5
    check-cast p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 7
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 9
    if-eqz v0, :cond_3d

    .line 11
    sget-object v1, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    aget v0, v1, v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_33

    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq v0, v1, :cond_29

    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_23

    .line 28
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 30
    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 32
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_23
    new-instance p1, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    .line 38
    invoke-direct {p1}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    .line 41
    throw p1

    .line 42
    :cond_29
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 44
    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 46
    iget p1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->errorCode:I

    .line 48
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;I)V

    .line 51
    throw v0

    .line 52
    :cond_33
    new-instance v0, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 54
    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->description:Ljava/lang/String;

    .line 56
    iget-wide v2, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->retrytime:J

    .line 58
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 61
    throw v0

    .line 62
    :cond_3d
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 64
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    :cond_47
    instance-of v0, p1, Lorg/json/JSONException;

    .line 74
    if-nez v0, :cond_4c

    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 79
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    throw v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->download(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method

.method public download(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 14

    if-eqz p4, :cond_15

    .line 1
    new-instance v4, Lq1/d;

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {v4, p4, v0, v1, p4}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->download(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lq1/f;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void

    .line 3
    :cond_15
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lq1/f;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 14

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    if-eqz p2, :cond_4f

    if-eqz p3, :cond_4f

    if-eqz p4, :cond_4f

    .line 6
    :try_start_c
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->requestDownload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 8
    iget-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getDownloadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p2

    invoke-virtual {p2, p4, p1, p5, p6}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    goto :goto_4e

    .line 10
    :cond_2c
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    move-result-wide v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p2
    :try_end_45
    .catch Lcom/xiaomi/opensdk/pdc/asset/AssetException; {:try_start_c .. :try_end_45} :catch_4a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_45} :catch_45

    :catch_45
    move-exception p1

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    goto :goto_4e

    :catch_4a
    move-exception p1

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    :goto_4e
    return-void

    .line 14
    :cond_4f
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;
    .registers 12

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p4

    .line 5
    if-nez p4, :cond_3f

    .line 7
    if-eqz p2, :cond_3f

    .line 9
    if-eqz p3, :cond_3f

    .line 11
    :try_start_a
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1b

    .line 21
    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetUtils;->getUrlEntityFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1b
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 30
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 37
    move-result-object v2

    .line 38
    iget v3, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    .line 40
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    .line 47
    move-result-wide v5

    .line 48
    move-object v0, p2

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    .line 52
    throw p2
    :try_end_34
    .catch Lcom/xiaomi/opensdk/pdc/asset/AssetException; {:try_start_a .. :try_end_34} :catch_39
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_34} :catch_34

    .line 53
    :catch_34
    move-exception p1

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    .line 57
    goto :goto_3d

    .line 58
    :catch_39
    move-exception p1

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    .line 62
    :goto_3d
    const/4 p1, 0x0

    .line 63
    return-object p1

    .line 64
    :cond_3f
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 66
    const-string p2, "参数错误，请参考API文档"

    .line 68
    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method

.method public upload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->upload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
    .registers 12

    if-eqz p3, :cond_10

    .line 2
    invoke-static {p3}, Lr1/d;->a(Ljava/io/File;)Lr1/b;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->upload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
    .registers 13

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    if-eqz p2, :cond_b7

    if-eqz p3, :cond_b7

    .line 5
    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadContext;

    invoke-direct {v0, p3, p4, p5}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    .line 6
    iget-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    const/4 p3, 0x0

    .line 7
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload()Z

    move-result p4

    if-eqz p4, :cond_78

    sget p4, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->MAX_RETRY_TIME:I

    if-ge p3, p4, :cond_78

    .line 8
    iget-object p4, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    move-result-object p4

    .line 9
    invoke-interface {p2, p1, p4}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->requestUploadAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    move-result-object p4

    .line 10
    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result p5

    if-eqz p5, :cond_5f

    .line 11
    iget-object p4, p4, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    const-string p5, "existed"

    .line 12
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_46

    .line 13
    invoke-static {p1, p4}, Lcom/xiaomi/opensdk/pdc/asset/AssetUtils;->getAssetEntityFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    move-result-object p1

    return-object p1

    .line 14
    :cond_46
    iget-object p5, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getUploadParameter(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object p4

    .line 15
    invoke-virtual {v0, p4}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    .line 16
    iget-object p4, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 17
    :cond_5f
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p4, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    .line 18
    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v4

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    move-result-wide v5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1

    .line 19
    :cond_78
    iget-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;

    move-result-object p3

    .line 20
    invoke-interface {p2, p1, p3}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->commitAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_93

    .line 22
    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->data:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/xiaomi/opensdk/pdc/asset/AssetUtils;->getAssetEntityFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    move-result-object p1

    return-object p1

    .line 23
    :cond_93
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;->code:I

    .line 24
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v4

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    move-result-wide v5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1
    :try_end_ac
    .catch Lcom/xiaomi/opensdk/pdc/asset/AssetException; {:try_start_19 .. :try_end_ac} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p1

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    goto :goto_b5

    :catch_b1
    move-exception p1

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster;->transferException(Ljava/lang/Exception;)V

    :goto_b5
    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_b7
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
