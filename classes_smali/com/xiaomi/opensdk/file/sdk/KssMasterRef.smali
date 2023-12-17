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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KssMasterRef"

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;-><init>()V

    new-instance v1, Lr1/l;

    invoke-direct {v1, p1, v0}, Lr1/l;-><init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V

    iput-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    new-instance v0, Lm1/g;

    invoke-direct {v0, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTransmitter:Lm1/g;

    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lm1/g;->g(ILjava/lang/String;)V

    new-instance p1, Lcn/kuaipan/android/kss/download/a;

    invoke-direct {p1, v0}, Lcn/kuaipan/android/kss/download/a;-><init>(Lm1/g;)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    return-void
.end method

.method private deleteUploadInfo(I)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lr1/l;->d:Lr1/l$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getUploadHash(Ljava/lang/String;Ljava/lang/String;Lr1/k;)I
    .registers 4

    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_7

    :cond_5
    iget-object p2, p2, Lr1/k;->b:Ljava/lang/String;

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private getUploadInfo(Lr1/k;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lr1/e;
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p3}, Lr1/l;->a(I)Lr1/e;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_61

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object v0

    if-eqz v0, :cond_56

    :try_start_12
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v1, v2}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1c} :catch_4c

    new-instance v2, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    invoke-direct {v2, v1}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V

    new-instance v1, Lr1/e;

    invoke-direct {v1, p1, v2}, Lr1/e;-><init>(Lr1/k;Lp1/e;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadParameter;->getUploadId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lr1/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    if-eqz p1, :cond_4a

    iget-object p1, p1, Lr1/l;->d:Lr1/l$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 p3, 0x1

    aput-object v1, v0, p3

    new-instance p3, Lr1/i;

    invoke-direct {p3}, Lr1/i;-><init>()V

    const/4 v3, 0x2

    aput-object p3, v0, v3

    invoke-virtual {p1, v2, v0}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    move-object v0, v1

    goto :goto_61

    :catch_4c
    move-exception p1

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "getUploadInfo failed"

    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_56
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p2, 0x7a123

    const-string p3, "uploadParam null"

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_61
    :goto_61
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getMaxChunkSize()J

    move-result-wide p1

    iput-wide p1, v0, Lr1/e;->g:J

    const-string p1, "KssUploadInfo Return:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, Lr1/e;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KssMasterRef"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Ls1/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "0.9.0a"

    aput-object v1, v0, p0

    const-string p0, "KssRC4/1.0 %s/%s S3SDK/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanDownload(Ljava/io/File;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lq1/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Z)V
    .registers 12

    if-eqz p1, :cond_57

    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-direct {v3, p0, p3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    :try_start_7
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    sget-object p3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {p2, p3}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object p2
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_4d

    new-instance v5, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    invoke-direct {v5, p2}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;-><init>(Ljava/util/Map;)V

    invoke-interface {v5}, Lp1/c;->getStatus()I

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {v5}, Lp1/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_31

    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const p2, 0x7acd8

    const-string p4, "server did not return \'stat\' field."

    invoke-direct {p1, p2, p4, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :cond_31
    new-instance p2, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 p4, 0xc8

    const-string p5, "Failed on requestDownload"

    invoke-direct {p2, p4, p1, p5, p3}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :cond_3b
    if-nez p4, :cond_3f

    const/4 p2, 0x0

    goto :goto_44

    :cond_3f
    new-instance p2, Lm1/j$a;

    invoke-direct {p2, p4}, Lm1/j$a;-><init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    :goto_44
    move-object v4, p2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mDownloader:Lcn/kuaipan/android/kss/download/a;

    move-object v1, p1

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/download/a;->b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V

    return-void

    :catch_4d
    move-exception p1

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "download failed"

    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_57
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p2, 0x7a123

    const-string p3, "downloadFile can\'t be null."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public hasStoredUploadInfo(I)Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_13

    :cond_6
    invoke-virtual {v0, p1}, Lr1/l;->a(I)Lr1/e;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V
    .registers 15

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getLocalFile()Lr1/d;

    move-result-object v6

    invoke-virtual {v6}, Lr1/d;->d()Z

    move-result v0

    if-nez v0, :cond_12c

    new-instance v7, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getListener()Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    const/4 v8, 0x0

    :try_start_14
    invoke-virtual {v6}, Lr1/d;->b()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, v6, Lr1/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lr1/k;->b(Ljava/io/InputStream;Ljava/lang/String;)Lr1/k;

    move-result-object v9
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_124

    iget-object v0, v6, Lr1/d;->b:Ljava/lang/String;

    iget-object v1, v6, Lr1/d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v9}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadHash(Ljava/lang/String;Ljava/lang/String;Lr1/k;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->hasStoredUploadInfo(I)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_59

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object v0

    if-nez v0, :cond_59

    invoke-virtual {p1, v11}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    invoke-virtual {v9}, Lr1/k;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_50

    :cond_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_42
    const-string v2, "block_infos"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_50
    invoke-virtual {p1, v8}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setKssString(Ljava/lang/String;)V

    iget-object v0, v9, Lr1/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    return-void

    :cond_59
    move-object v0, v8

    :goto_5a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_11e

    if-nez v0, :cond_66

    invoke-direct {p0, v9, p1, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->getUploadInfo(Lr1/k;Lcom/xiaomi/opensdk/file/model/UploadContext;I)Lr1/e;

    move-result-object v0

    :cond_66
    move-object v12, v0

    if-nez v12, :cond_75

    iget-wide v0, v6, Lr1/d;->c:J

    invoke-virtual {v7, v0, v1}, Lm1/c$a;->setSendTotal(J)V

    iget-wide v0, v6, Lr1/d;->c:J

    invoke-virtual {v7, v0, v1}, Lm1/c$a;->setSendPos(J)V

    goto/16 :goto_fc

    :cond_75
    iget-boolean v0, v12, Lr1/e;->f:Z

    if-eqz v0, :cond_80

    invoke-virtual {p1, v11}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    invoke-virtual {p1, v8}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    return-void

    :cond_80
    iget-object v0, v12, Lr1/e;->c:Lp1/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    invoke-interface {v0}, Lp1/e;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v11

    goto :goto_8e

    :cond_8d
    move v0, v1

    :goto_8e
    if-eqz v0, :cond_fd

    iget-wide v2, v6, Lr1/d;->c:J

    invoke-virtual {v7, v2, v3}, Lm1/c$a;->setSendTotal(J)V

    iget-wide v2, v6, Lr1/d;->c:J

    invoke-virtual {v7, v2, v3}, Lm1/c$a;->setSendPos(J)V

    invoke-direct {p0, v10}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->deleteUploadInfo(I)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setNeedRequestUpload(Z)V

    :try_start_a0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "file_meta"

    iget-object v3, v12, Lr1/e;->c:Lp1/e;

    invoke-interface {v3}, Lp1/e;->getFileMeta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v12, Lr1/e;->c:Lp1/e;

    invoke-interface {v2}, Lp1/e;->getBlockCount()I

    move-result v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v12, Lr1/e;->c:Lp1/e;

    if-eqz v4, :cond_db

    if-lez v2, :cond_db

    :goto_c1
    if-ge v1, v2, :cond_db

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "commit_meta"

    iget-object v6, v12, Lr1/e;->c:Lp1/e;

    invoke-interface {v6, v1}, Lp1/e;->getBlock(I)Lp1/e$a;

    move-result-object v6

    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    :cond_db
    const-string v1, "commit_metas"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_e0} :catch_e2

    move-object v8, v0

    goto :goto_e9

    :catch_e2
    const-string v0, "KssUploadInfo"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e9
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setCommitString(Ljava/lang/String;)V

    iget-object v0, v12, Lr1/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadId(Ljava/lang/String;)V

    iget-object v0, v12, Lr1/e;->b:Lr1/k;

    iget-object v0, v0, Lr1/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setSha1(Ljava/lang/String;)V

    :goto_fc
    return-void

    :cond_fd
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/model/UploadContext;->getStopper()Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    move-result-object v0

    if-nez v0, :cond_105

    move-object v3, v8

    goto :goto_10b

    :cond_105
    new-instance v1, Lm1/j$a;

    invoke-direct {v1, v0}, Lm1/j$a;-><init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    move-object v3, v1

    :goto_10b
    new-instance v0, Lr1/f;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTransmitter:Lm1/g;

    iget-object v2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->mTaskStore:Lr1/l;

    invoke-direct {v0, v1, v2}, Lr1/f;-><init>(Lm1/g;Lr1/l;)V

    move-object v1, v6

    move-object v2, v7

    move v4, v10

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lr1/f;->d(Lr1/d;Lm1/c;Lm1/j$a;ILr1/e;)V

    move-object v0, v12

    goto/16 :goto_5a

    :cond_11e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :catch_124
    move-exception p1

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {p1, v8, v0}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_12c
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v0, 0x7a123

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lr1/d;->b:Ljava/lang/String;

    const-string v3, " is not a exist file."

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
