.class public Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.super Ljava/lang/Object;
.source "KssMasterRef.java"

# interfaces
.implements Lp1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDownloader:Lcn/kuaipan/android/kss/download/a;

.field private final mTaskStore:Lr1/l;

.field private final mTransmitter:Lm1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "KssMasterRef"

    .line 6
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    .line 10
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;-><init>()V

    .line 13
    new-instance v1, Lr1/l;

    .line 15
    invoke-direct {v1, p1, v0}, Lr1/l;-><init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V

    .line 18
    iput-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 20
    new-instance v0, Lm1/g;

    .line 22
    invoke-direct {v0, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTransmitter:Lm1/g;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1, p1}, Lm1/g;->g(ILjava/lang/String;)V

    .line 35
    new-instance p1, Lcn/kuaipan/android/kss/download/a;

    .line 37
    invoke-direct {p1, v0}, Lcn/kuaipan/android/kss/download/a;-><init>(Lm1/g;)V

    .line 40
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    .line 42
    return-void
.end method

.method private deleteUploadInfo(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object p1, v2, v3

    .line 18
    invoke-virtual {v0, v1, v2}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private static getUploadHash(Ljava/lang/String;Ljava/lang/String;Lr1/k;)I
    .registers 4

    .line 1
    if-nez p2, :cond_5

    .line 3
    const-string p2, ""

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object p2, p2, Lr1/k;->b:Ljava/lang/String;

    .line 8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, ":"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method private getUploadInfo(Lr1/k;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lr1/e;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0, p3}, Lr1/l;->a(I)Lr1/e;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    if-nez v0, :cond_61

    .line 13
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_56

    .line 19
    :try_start_12
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 25
    invoke-static {v1, v2}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    .line 28
    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1c} :catch_4c

    .line 29
    new-instance v2, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    .line 31
    invoke-direct {v2, v1}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V

    .line 34
    new-instance v1, Lr1/e;

    .line 36
    invoke-direct {v1, p1, v2}, Lr1/e;-><init>(Lr1/k;Lp1/e;)V

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->getUploadId()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, v1, Lr1/e;->e:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 47
    if-eqz p1, :cond_4a

    .line 49
    iget-object p1, p1, Lr1/l;->d:Lr1/l$a;

    .line 51
    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p3

    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object p3, v0, v2

    .line 61
    const/4 p3, 0x1

    .line 62
    aput-object v1, v0, p3

    .line 64
    new-instance p3, Lr1/i;

    .line 66
    invoke-direct {p3}, Lr1/i;-><init>()V

    .line 69
    const/4 v3, 0x2

    .line 70
    aput-object p3, v0, v3

    .line 72
    invoke-virtual {p1, v2, v0}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4a
    move-object v0, v1

    .line 76
    goto :goto_61

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 80
    const-string p3, "getUploadInfo failed"

    .line 82
    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 85
    move-result-object p1

    .line 86
    throw p1

    .line 87
    :cond_56
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 89
    const p2, 0x7a123

    .line 92
    const-string p3, "uploadParam null"

    .line 94
    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 97
    throw p1

    .line 98
    :cond_61
    :goto_61
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getMaxChunkSize()J

    .line 101
    move-result-wide p1

    .line 102
    iput-wide p1, v0, Lr1/e;->g:J

    .line 104
    const-string p1, "KssUploadInfo Return:"

    .line 106
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object p1

    .line 110
    iget-object p2, v0, Lr1/e;->e:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    const-string p2, "KssMasterRef"

    .line 121
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p0}, Ls1/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-object p0, v0, v1

    .line 18
    const/4 p0, 0x2

    .line 19
    const-string v1, "0.9.0a"

    .line 21
    aput-object v1, v0, p0

    .line 23
    const-string p0, "KssRC4/1.0 %s/%s S3SDK/%s"

    .line 25
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public cleanDownload(Ljava/io/File;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Lq1/b;->a(Ljava/io/File;)Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    return-void
.end method

.method public download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Z)V
    .registers 12

    .line 1
    if-eqz p1, :cond_57

    .line 3
    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    .line 5
    invoke-direct {v3, p0, p3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 8
    :try_start_7
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 11
    move-result-object p2

    .line 12
    sget-object p3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 14
    invoke-static {p2, p3}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    .line 17
    move-result-object p2
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_4d

    .line 18
    new-instance v5, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    .line 20
    invoke-direct {v5, p2}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;-><init>(Ljava/util/Map;)V

    .line 23
    invoke-interface {v5}, Lp1/c;->getStatus()I

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_3b

    .line 29
    invoke-interface {v5}, Lp1/c;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_31

    .line 39
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    .line 41
    const p2, 0x7acd8

    .line 44
    const-string p4, "server did not return \'stat\' field."

    .line 46
    invoke-direct {p1, p2, p4, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    new-instance p2, Lcn/kuaipan/android/exception/ServerMsgException;

    .line 52
    const/16 p4, 0xc8

    .line 54
    const-string p5, "Failed on requestDownload"

    .line 56
    invoke-direct {p2, p4, p1, p5, p3}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 59
    throw p2

    .line 60
    :cond_3b
    if-nez p4, :cond_3f

    .line 62
    const/4 p2, 0x0

    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    new-instance p2, Lm1/j$a;

    .line 66
    invoke-direct {p2, p4}, Lm1/j$a;-><init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    .line 69
    :goto_44
    move-object v4, p2

    .line 70
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    .line 72
    move-object v1, p1

    .line 73
    move v2, p5

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/download/a;->b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V

    .line 77
    return-void

    .line 78
    :catch_4d
    move-exception p1

    .line 79
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 81
    const-string p3, "download failed"

    .line 83
    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 86
    move-result-object p1

    .line 87
    throw p1

    .line 88
    :cond_57
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 90
    const p2, 0x7a123

    .line 93
    const-string p3, "downloadFile can\'t be null."

    .line 95
    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 98
    throw p1
.end method

.method public hasStoredUploadInfo(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_13

    .line 7
    :cond_6
    invoke-virtual {v0, p1}, Lr1/l;->a(I)Lr1/e;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p1

    .line 20
    :goto_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getLocalFile()Lr1/d;

    .line 4
    move-result-object v6

    .line 5
    invoke-virtual {v6}, Lr1/d;->d()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_12c

    .line 11
    new-instance v7, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getListener()Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v7, p0, v0}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 20
    const/4 v8, 0x0

    .line 21
    :try_start_14
    invoke-virtual {v6}, Lr1/d;->b()Ljava/io/InputStream;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, v6, Lr1/d;->b:Ljava/lang/String;

    .line 27
    invoke-static {v0, v1}, Lr1/k;->b(Ljava/io/InputStream;Ljava/lang/String;)Lr1/k;

    .line 30
    move-result-object v9
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_124

    .line 31
    iget-object v0, v6, Lr1/d;->b:Ljava/lang/String;

    .line 33
    iget-object v1, v6, Lr1/d;->a:Ljava/lang/String;

    .line 35
    invoke-static {v0, v1, v9}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadHash(Ljava/lang/String;Ljava/lang/String;Lr1/k;)I

    .line 38
    move-result v10

    .line 39
    invoke-virtual {p0, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->hasStoredUploadInfo(I)Z

    .line 42
    move-result v0

    .line 43
    const/4 v11, 0x1

    .line 44
    if-nez v0, :cond_59

    .line 46
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_59

    .line 52
    invoke-virtual {p1, v11}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 55
    invoke-virtual {v9}, Lr1/k;->a()Lorg/json/JSONArray;

    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_3d

    .line 61
    goto :goto_50

    .line 62
    :cond_3d
    new-instance v1, Lorg/json/JSONObject;

    .line 64
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_42
    const-string v2, "block_infos"

    .line 69
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    move-result-object v8
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    .line 76
    goto :goto_50

    .line 77
    :catchall_4c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v8

    .line 81
    :goto_50
    invoke-virtual {p1, v8}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setKssString(Ljava/lang/String;)V

    .line 84
    iget-object v0, v9, Lr1/k;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    .line 89
    return-void

    .line 90
    :cond_59
    move-object v0, v8

    .line 91
    :goto_5a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_11e

    .line 97
    if-nez v0, :cond_66

    .line 99
    invoke-direct {p0, v9, p1, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadInfo(Lr1/k;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lr1/e;

    .line 102
    move-result-object v0

    .line 103
    :cond_66
    move-object v12, v0

    .line 104
    if-nez v12, :cond_75

    .line 106
    iget-wide v0, v6, Lr1/d;->c:J

    .line 108
    invoke-virtual {v7, v0, v1}, Lm1/c$a;->setSendTotal(J)V

    .line 111
    iget-wide v0, v6, Lr1/d;->c:J

    .line 113
    invoke-virtual {v7, v0, v1}, Lm1/c$a;->setSendPos(J)V

    .line 116
    goto/16 :goto_fc

    .line 118
    :cond_75
    iget-boolean v0, v12, Lr1/e;->f:Z

    .line 120
    if-eqz v0, :cond_80

    .line 122
    invoke-virtual {p1, v11}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 125
    invoke-virtual {p1, v8}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    .line 128
    return-void

    .line 129
    :cond_80
    iget-object v0, v12, Lr1/e;->c:Lp1/e;

    .line 131
    const/4 v1, 0x0

    .line 132
    if-eqz v0, :cond_8d

    .line 134
    invoke-interface {v0}, Lp1/e;->isCompleted()Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_8d

    .line 140
    move v0, v11

    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    move v0, v1

    .line 143
    :goto_8e
    if-eqz v0, :cond_fd

    .line 145
    iget-wide v2, v6, Lr1/d;->c:J

    .line 147
    invoke-virtual {v7, v2, v3}, Lm1/c$a;->setSendTotal(J)V

    .line 150
    iget-wide v2, v6, Lr1/d;->c:J

    .line 152
    invoke-virtual {v7, v2, v3}, Lm1/c$a;->setSendPos(J)V

    .line 155
    invoke-direct {p0, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->deleteUploadInfo(I)V

    .line 158
    invoke-virtual {p1, v1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    .line 161
    :try_start_a0
    new-instance v0, Lorg/json/JSONObject;

    .line 163
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v2, "file_meta"

    .line 168
    iget-object v3, v12, Lr1/e;->c:Lp1/e;

    .line 170
    invoke-interface {v3}, Lp1/e;->getFileMeta()Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v2, v12, Lr1/e;->c:Lp1/e;

    .line 179
    invoke-interface {v2}, Lp1/e;->getBlockCount()I

    .line 182
    move-result v2

    .line 183
    new-instance v3, Lorg/json/JSONArray;

    .line 185
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 188
    iget-object v4, v12, Lr1/e;->c:Lp1/e;

    .line 190
    if-eqz v4, :cond_db

    .line 192
    if-lez v2, :cond_db

    .line 194
    :goto_c1
    if-ge v1, v2, :cond_db

    .line 196
    new-instance v4, Lorg/json/JSONObject;

    .line 198
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v5, "commit_meta"

    .line 203
    iget-object v6, v12, Lr1/e;->c:Lp1/e;

    .line 205
    invoke-interface {v6, v1}, Lp1/e;->getBlock(I)Lp1/e$a;

    .line 208
    move-result-object v6

    .line 209
    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 219
    goto :goto_c1

    .line 220
    :cond_db
    const-string v1, "commit_metas"

    .line 222
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_e0} :catch_e2

    .line 225
    move-object v8, v0

    .line 226
    goto :goto_e9

    .line 227
    :catch_e2
    const-string v0, "KssUploadInfo"

    .line 229
    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_e9
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setCommitString(Ljava/lang/String;)V

    .line 241
    iget-object v0, v12, Lr1/e;->e:Ljava/lang/String;

    .line 243
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadId(Ljava/lang/String;)V

    .line 246
    iget-object v0, v12, Lr1/e;->b:Lr1/k;

    .line 248
    iget-object v0, v0, Lr1/k;->b:Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    .line 253
    :goto_fc
    return-void

    .line 254
    :cond_fd
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getStopper()Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    .line 257
    move-result-object v0

    .line 258
    if-nez v0, :cond_105

    .line 260
    move-object v3, v8

    .line 261
    goto :goto_10b

    .line 262
    :cond_105
    new-instance v1, Lm1/j$a;

    .line 264
    invoke-direct {v1, v0}, Lm1/j$a;-><init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    .line 267
    move-object v3, v1

    .line 268
    :goto_10b
    new-instance v0, Lr1/f;

    .line 270
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTransmitter:Lm1/g;

    .line 272
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    .line 274
    invoke-direct {v0, v1, v2}, Lr1/f;-><init>(Lm1/g;Lr1/l;)V

    .line 277
    move-object v1, v6

    .line 278
    move-object v2, v7

    .line 279
    move v4, v10

    .line 280
    move-object v5, v12

    .line 281
    invoke-virtual/range {v0 .. v5}, Lr1/f;->d(Lr1/d;Lm1/c;Lm1/j$a;ILr1/e;)V

    .line 284
    move-object v0, v12

    .line 285
    goto/16 :goto_5a

    .line 287
    :cond_11e
    new-instance p1, Ljava/lang/InterruptedException;

    .line 289
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 292
    throw p1

    .line 293
    :catch_124
    move-exception p1

    .line 294
    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    .line 296
    invoke-static {p1, v8, v0}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 299
    move-result-object p1

    .line 300
    throw p1

    .line 301
    :cond_12c
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 303
    const v0, 0x7a123

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    iget-object v2, v6, Lr1/d;->b:Ljava/lang/String;

    .line 313
    const-string v3, " is not a exist file."

    .line 315
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v1

    .line 319
    invoke-direct {p1, v0, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 322
    throw p1
.end method
