.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;,
        Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookie:Ljava/lang/String;

.field private mCurrentUploadChunk:I

.field private mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

.field private mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

.field private mProxyHelper:Lv1/b;

.field private mUrl:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The userId and authtoken should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$102(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    return p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;

    if-nez v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-static {p1, v0}, Lv1/d;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lv1/b;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;
    :try_end_c
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p1

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(I)V

    throw p2

    :cond_18
    :goto_18
    new-instance p1, Lv1/d;

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;

    const/4 v1, 0x0

    :try_start_1f
    new-instance v2, Lu1/a;

    invoke-direct {v2}, Lu1/a;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_28} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_60
    .catchall {:try_start_1f .. :try_end_28} :catchall_5c

    :try_start_28
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lu1/a;->b(Lorg/json/JSONObject;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31
    .catchall {:try_start_28 .. :try_end_30} :catchall_5c

    goto :goto_35

    :catch_31
    move-exception p2

    :try_start_32
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_35
    new-instance p2, Lv1/a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-direct {p2, v3, v0}, Lv1/a;-><init>(Lorg/apache/http/client/HttpClient;Lv1/b;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3e} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_60
    .catchall {:try_start_32 .. :try_end_3e} :catchall_5c

    :try_start_3e
    invoke-static {p1}, Lv1/d;->b(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lv1/a;->b(Lu1/a;Lcn/kuaipan/kss/KssDef$NetState;)V

    new-instance p1, Lv1/c;

    invoke-direct {p1}, Lv1/c;-><init>()V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4a} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_61
    .catchall {:try_start_3e .. :try_end_4a} :catchall_7d

    :try_start_4a
    invoke-virtual {p1, p3}, Lv1/c;->c(Ljava/io/File;)V

    invoke-virtual {p2, p1}, Lv1/a;->a(Lv1/c;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p3
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_51} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_58
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    invoke-virtual {p1}, Lv1/c;->b()V

    goto :goto_75

    :catchall_55
    move-exception p3

    move-object v1, p1

    goto :goto_7f

    :catch_58
    move-object v1, p1

    goto :goto_61

    :catch_5a
    move-object v1, p1

    goto :goto_6c

    :catchall_5c
    move-exception p1

    move-object p3, p1

    move-object p2, v1

    goto :goto_7f

    :catch_60
    move-object p2, v1

    :catch_61
    :goto_61
    :try_start_61
    sget-object p3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_7d

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lv1/c;->b()V

    :cond_68
    if-eqz p2, :cond_78

    goto :goto_75

    :catch_6b
    move-object p2, v1

    :catch_6c
    :goto_6c
    :try_start_6c
    sget-object p3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_7d

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lv1/c;->b()V

    :cond_73
    if-eqz p2, :cond_78

    :goto_75
    invoke-virtual {p2}, Lv1/a;->c()V

    :cond_78
    invoke-static {p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;->getResult(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    return-object p1

    :catchall_7d
    move-exception p1

    move-object p3, p1

    :goto_7f
    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lv1/c;->b()V

    :cond_84
    if-eqz p2, :cond_89

    invoke-virtual {p2}, Lv1/a;->c()V

    :cond_89
    throw p3
.end method

.method private downloadFromMfs(Lorg/json/JSONObject;)[B
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    if-eqz p2, :cond_25

    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    if-eqz p2, :cond_25

    new-instance p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;

    iget-object v0, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->ckey:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getActiveNetworkType(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, -0x1

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0
.end method

.method private getChunkSize(Landroid/content/Context;)I
    .registers 5

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const v2, 0xc800

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-nez v1, :cond_21

    const p1, 0x19000

    return p1

    :cond_21
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->isWifi(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    return v2

    :cond_28
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_30

    return p1

    :cond_30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_39

    return v2

    :cond_39
    return p1
.end method

.method public static getCookies(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "serviceToken="

    invoke-static {p0, p2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "; cUserId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadFileInfo(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 6

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "downloadurl"

    move-object v0, p2

    move-object p2, p1

    goto :goto_13

    :cond_b
    const-string p2, "mfs"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tmpUrl"

    :goto_13
    new-instance v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    if-eqz p2, :cond_39

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    const-string v0, "ckey"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->ckey:Ljava/lang/String;

    const-string v0, "fileId"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileId:Ljava/lang/String;

    const-string p1, "fileSha1"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    :cond_39
    return-object v1
.end method

.method private getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object v0

    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    if-nez v1, :cond_68

    iget-object v2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    if-eqz v2, :cond_68

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "data"

    const/4 v2, 0x0

    if-eqz p2, :cond_35

    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "shareId"

    goto :goto_3d

    :cond_35
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "fileId"

    :goto_3d
    const/4 v1, 0x0

    if-eqz p2, :cond_59

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4b

    return-object p2

    :cond_4b
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "The local fileId is not accord with server fileId"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "The local fileId %s unable to obtain the download"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    return-object v1

    :cond_68
    const/16 p2, 0x2718

    if-ne v1, p2, :cond_74

    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    const-string v0, "Cloud service error on getDownloadUrl for "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static isWifi(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private preDownload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    if-eqz p1, :cond_1d

    return-void

    :cond_1d
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Network is not connected"

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The type %s is not supported"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The download parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private registerConnectivityReceiver()V
    .registers 4

    const-string v0, "Register network connectivity changed receiver"

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    if-nez v0, :cond_11

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    :cond_11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .registers 3

    const-string v0, "Unregister network connectivity changed receiver"

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private uploadFile(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_129

    iget v7, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    if-eqz v7, :cond_2c

    const-string v2, "Current chunk size is:"

    const-string v3, " the "

    invoke-static {v2, v7, v3}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    move-result v3

    div-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chunk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    move-result v2

    invoke-virtual {p1, v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isLastChunk(I)Z

    move-result v3

    new-instance v10, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    move-result v8

    iget-object v9, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    move-object v4, v10

    move-object v5, p1

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V

    if-eqz p2, :cond_55

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, ","

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shareTo"

    invoke-virtual {v10, v5, v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    :cond_55
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    invoke-virtual {v10, v4, v5, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_121

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object v4

    iget v5, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    const v6, 0x13882

    if-eq v5, v6, :cond_6d

    move v1, v0

    :cond_6d
    if-nez v5, :cond_ab

    if-eqz v2, :cond_a2

    if-nez v3, :cond_a2

    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    const-string v3, "tmpid"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    const-string v3, "_hostingserver"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto/16 :goto_2

    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Server error: The first chunk\'s response does not contain the tempid or hosting server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a2
    if-eqz v3, :cond_2

    iget-object p1, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1

    return-object p1

    :cond_ab
    const v2, 0x13885

    if-ne v5, v2, :cond_b5

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->resetOffset()V

    goto/16 :goto_2

    :cond_b5
    if-ne v5, v6, :cond_c9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_129

    const-wide/16 v2, 0x1388

    :try_start_bc
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_c3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_c3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_c9
    const v2, 0x13881

    if-eq v5, v2, :cond_119

    const v2, 0x13883

    if-eq v5, v2, :cond_102

    const v2, 0x13884

    if-eq v5, v2, :cond_e6

    const/16 v2, 0x2718

    if-eq v5, v2, :cond_de

    goto/16 :goto_2

    :cond_de
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    iget-object p2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e6
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/FileTooLargeException;

    const-string v0, "The file size:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds the limit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/FileTooLargeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_102
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException;

    const-string v0, "Can\'t write file at offset:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_119
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The file digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_121
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    const-string p2, "Cloud service fails when upload file"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_129
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Read file error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 6

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->preDownload(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_c

    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :cond_c
    const-string v0, "mfs"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2b

    :cond_1b
    const-string p3, "kss"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28

    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    return-object p1

    :cond_28
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Unsupported:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :cond_2b
    :goto_2b
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_3c
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_3 .. :try_end_3c} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3c} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3c} :catch_44
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :catch_44
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4b
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_52
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->preDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_b

    return-object v0

    :cond_b
    const-string v1, "mfs"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;)[B

    move-result-object p1

    return-object p1

    :cond_18
    const-string v1, "kss"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_45
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_4 .. :try_end_45} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_45} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_45} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_45} :catch_75

    if-ne p1, p2, :cond_79

    :try_start_47
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_64

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_62

    :try_start_55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_61
    return-object p2

    :catchall_62
    move-exception p2

    goto :goto_66

    :catchall_64
    move-exception p2

    move-object p1, v0

    :goto_66
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_74
    throw p2
    :try_end_75
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_55 .. :try_end_75} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_55 .. :try_end_75} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_55 .. :try_end_75} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_55 .. :try_end_75} :catch_75

    :catch_75
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_79
    return-object v0

    :catch_7a
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_81
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_88
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public downloadFromPublicUrl(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v2, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;

    invoke-direct {v2, p1, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Z)[B

    move-result-object p1
    :try_end_1e
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_12 .. :try_end_1e} :catch_34
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_1e} :catch_2d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_1e} :catch_26
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_26
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2d
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_34
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3b
    return-object v1
.end method

.method public getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;"
        }
    .end annotation

    const-string v0, "Current chunk size is:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "shareTo"

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    :cond_2c
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_74

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object p2

    iget v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    if-nez v0, :cond_68

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    const-string v1, "tmpid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->setTempId(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    const-string v1, "_hostingserver"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->setHostingServer(Ljava/lang/String;)V

    :cond_61
    iget-object p1, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p1

    return-object p1

    :cond_68
    const/16 p1, 0x2718

    if-ne v0, p1, :cond_74

    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    const-string p2, "Cloud service error in check file exits"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 5

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The authtoken should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;"
        }
    .end annotation

    if-nez p1, :cond_9

    const-string p1, "The file should not be null"

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    if-eqz v0, :cond_8b

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->registerConnectivityReceiver()V

    :try_start_16
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->open()V

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->shareId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file already exist:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_43} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException; {:try_start_16 .. :try_end_43} :catch_6d
    .catchall {:try_start_16 .. :try_end_43} :catchall_6b

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    return-object v0

    :cond_4a
    :try_start_4a
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->uploadFile(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-result-object p2

    if-eqz p2, :cond_76

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file upload success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_64} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException; {:try_start_4a .. :try_end_64} :catch_6d
    .catchall {:try_start_4a .. :try_end_64} :catchall_6b

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    return-object p2

    :catchall_6b
    move-exception p2

    goto :goto_84

    :catch_6d
    move-exception p2

    :try_start_6e
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_76

    :catch_72
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_6b

    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    const-string p2, "Cloud server fails when upload files"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_84
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    throw p2

    :cond_8b
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Network is not connected"

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
