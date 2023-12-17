.class public Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;
.super Ljava/lang/Object;
.source "MiCloudFileMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;)Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    return-object p0
.end method

.method private download(Lq1/f;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMasterInjector;->checkDownloadConditions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_34

    :try_start_a
    invoke-interface {p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;->getDownloadJSONObject()Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_23

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getDownloadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/DownloadParameter;

    move-result-object p4

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/DownloadParameter;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_23} :catch_24

    :cond_23
    return-void

    :catch_24
    move-exception p1

    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-virtual {p1}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    throw p2

    :cond_34
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "Upload is forbidden by injector"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private upload(Ljava/lang/Object;Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/d;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMasterInjector;->checkUploadConditions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    new-instance v0, Lcom/xiaomi/opensdk/file/model/UploadContext;

    invoke-direct {v0, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const/4 p3, 0x0

    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload()Z

    move-result p4

    if-eqz p4, :cond_5e

    const/4 p4, 0x5

    if-ge p3, p4, :cond_5e

    iget-object p4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getRequestUploadParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    move-result-object p4

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v1, p1, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lorg/json/JSONObject;

    move-result-object p4

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {v1, p1, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5d

    const-string v1, "data"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getUploadParameterForSFS(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/model/UploadParameter;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/xiaomi/opensdk/file/model/UploadContext;->setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V

    iget-object p4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->upload(Lcom/xiaomi/opensdk/file/model/UploadContext;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_5d
    return-object v1

    :cond_5e
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    iget-object p3, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/model/MiCloudFileClient;->getCommitParameter(Lcom/xiaomi/opensdk/file/model/UploadContext;)Lcom/xiaomi/opensdk/file/model/CommitParameter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->commitUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lorg/json/JSONObject;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->mRequestor:Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_76} :catch_77

    return-object p1

    :catch_77
    move-exception p1

    new-instance p3, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p3, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/TransferStep;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;->setStep(Ljava/lang/String;)V

    throw p3

    :cond_85
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "Upload is forbidden by injector"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V
    .registers 8

    if-eqz p1, :cond_f

    new-instance v0, Lq1/d;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p1}, Lq1/d;-><init>(Ljava/io/File;JLjava/io/File;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    return-void

    :cond_f
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method

.method public download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;-><init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    return-void
.end method

.method public download(Ljava/lang/Object;Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq1/a;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/lang/Object;Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method

.method public download(Ljava/lang/Object;Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq1/a;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$2;-><init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    return-void
.end method

.method public download(Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V
    .registers 6

    if-eqz p1, :cond_b

    new-instance v0, Lq1/e;

    invoke-direct {v0, p1}, Lq1/e;-><init>(Lq1/a;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Lq1/f;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    return-void

    :cond_b
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")TT;"
        }
    .end annotation

    invoke-static {p2}, Lr1/d;->a(Ljava/io/File;)Lr1/b;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/Object;Lr1/j;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/j;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Lr1/j;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/Object;Lr1/j;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/j;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_c

    new-instance v0, Lr1/c;

    invoke-direct {v0, p2}, Lr1/c;-><init>(Lr1/j;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
