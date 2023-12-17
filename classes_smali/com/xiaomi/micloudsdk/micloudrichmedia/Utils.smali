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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    return-void

    .line 7
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The userId and authtoken should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$102(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;

    .line 3
    if-nez v0, :cond_18

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 7
    invoke-static {p1, v0}, Lv1/d;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lv1/b;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;
    :try_end_c
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_4 .. :try_end_c} :catch_d

    .line 13
    goto :goto_18

    .line 14
    :catch_d
    move-exception p1

    .line 15
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 20
    move-result p1

    .line 21
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(I)V

    .line 24
    throw p2

    .line 25
    :cond_18
    :goto_18
    new-instance p1, Lv1/d;

    .line 27
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mProxyHelper:Lv1/b;

    .line 31
    const/4 v1, 0x0

    .line 32
    :try_start_1f
    new-instance v2, Lu1/a;

    .line 34
    invoke-direct {v2}, Lu1/a;-><init>()V

    .line 37
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_28} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_60
    .catchall {:try_start_1f .. :try_end_28} :catchall_5c

    .line 41
    :try_start_28
    new-instance v3, Lorg/json/JSONObject;

    .line 43
    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v3}, Lu1/a;->b(Lorg/json/JSONObject;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31
    .catchall {:try_start_28 .. :try_end_30} :catchall_5c

    .line 49
    goto :goto_35

    .line 50
    :catch_31
    move-exception p2

    .line 51
    :try_start_32
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_35
    new-instance p2, Lv1/a;

    .line 56
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    .line 59
    move-result-object v3

    .line 60
    invoke-direct {p2, v3, v0}, Lv1/a;-><init>(Lorg/apache/http/client/HttpClient;Lv1/b;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3e} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_60
    .catchall {:try_start_32 .. :try_end_3e} :catchall_5c

    .line 63
    :try_start_3e
    invoke-static {p1}, Lv1/d;->b(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, v2, p1}, Lv1/a;->b(Lu1/a;Lcn/kuaipan/kss/KssDef$NetState;)V

    .line 70
    new-instance p1, Lv1/c;

    .line 72
    invoke-direct {p1}, Lv1/c;-><init>()V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4a} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_61
    .catchall {:try_start_3e .. :try_end_4a} :catchall_7d

    .line 75
    :try_start_4a
    invoke-virtual {p1, p3}, Lv1/c;->c(Ljava/io/File;)V

    .line 78
    invoke-virtual {p2, p1}, Lv1/a;->a(Lv1/c;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 81
    move-result-object p3
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_51} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_58
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    .line 82
    invoke-virtual {p1}, Lv1/c;->b()V

    .line 85
    goto :goto_75

    .line 86
    :catchall_55
    move-exception p3

    .line 87
    move-object v1, p1

    .line 88
    goto :goto_7f

    .line 89
    :catch_58
    move-object v1, p1

    .line 90
    goto :goto_61

    .line 91
    :catch_5a
    move-object v1, p1

    .line 92
    goto :goto_6c

    .line 93
    :catchall_5c
    move-exception p1

    .line 94
    move-object p3, p1

    .line 95
    move-object p2, v1

    .line 96
    goto :goto_7f

    .line 97
    :catch_60
    move-object p2, v1

    .line 98
    :catch_61
    :goto_61
    :try_start_61
    sget-object p3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_7d

    .line 100
    if-eqz v1, :cond_68

    .line 102
    invoke-virtual {v1}, Lv1/c;->b()V

    .line 105
    :cond_68
    if-eqz p2, :cond_78

    .line 107
    goto :goto_75

    .line 108
    :catch_6b
    move-object p2, v1

    .line 109
    :catch_6c
    :goto_6c
    :try_start_6c
    sget-object p3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_7d

    .line 111
    if-eqz v1, :cond_73

    .line 113
    invoke-virtual {v1}, Lv1/c;->b()V

    .line 116
    :cond_73
    if-eqz p2, :cond_78

    .line 118
    :goto_75
    invoke-virtual {p2}, Lv1/a;->c()V

    .line 121
    :cond_78
    invoke-static {p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;->getResult(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :catchall_7d
    move-exception p1

    .line 127
    move-object p3, p1

    .line 128
    :goto_7f
    if-eqz v1, :cond_84

    .line 130
    invoke-virtual {v1}, Lv1/c;->b()V

    .line 133
    :cond_84
    if-eqz p2, :cond_89

    .line 135
    invoke-virtual {p2}, Lv1/a;->c()V

    .line 138
    :cond_89
    throw p3
.end method

.method private downloadFromMfs(Lorg/json/JSONObject;)[B
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    if-eqz p2, :cond_25

    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    if-eqz p2, :cond_25

    .line 4
    new-instance p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;

    iget-object v0, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->ckey:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
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

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    const/4 v0, -0x1

    .line 10
    if-nez p0, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method private getChunkSize(Landroid/content/Context;)I
    .registers 5

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 12
    move-result-object v1

    .line 13
    const v2, 0xc800

    .line 16
    if-eqz v1, :cond_28

    .line 18
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_28

    .line 24
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_21

    .line 30
    const p1, 0x19000

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->isWifi(Landroid/content/Context;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_28

    .line 40
    return v2

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_30

    .line 48
    return p1

    .line 49
    :cond_30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 55
    if-ne v1, v0, :cond_39

    .line 57
    return v2

    .line 58
    :cond_39
    return p1
.end method

.method public static getCookies(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "serviceToken="

    .line 1
    invoke-static {p0, p2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "; cUserId="

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadFileInfo(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadFileInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 6

    .line 2
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "downloadurl"

    move-object v0, p2

    move-object p2, p1

    goto :goto_13

    :cond_b
    const-string p2, "mfs"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tmpUrl"

    .line 4
    :goto_13
    new-instance v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    if-eqz p2, :cond_39

    .line 5
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->tmpUrl:Ljava/lang/String;

    const-string v0, "ckey"

    .line 6
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->ckey:Ljava/lang/String;

    const-string v0, "fileId"

    .line 7
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileId:Ljava/lang/String;

    const-string p1, "fileSha1"

    .line 8
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->fileSha1:Ljava/lang/String;

    :cond_39
    return-object v1
.end method

.method private getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 12
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_74

    .line 20
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    .line 23
    move-result-object v0

    .line 24
    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    .line 26
    if-nez v1, :cond_68

    .line 28
    iget-object v2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 30
    if-eqz v2, :cond_68

    .line 32
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 35
    move-result p2

    .line 36
    const-string v1, "data"

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz p2, :cond_35

    .line 41
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 43
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 50
    move-result-object p2

    .line 51
    const-string v0, "shareId"

    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    move-result-object p2

    .line 60
    const-string v0, "fileId"

    .line 62
    :goto_3d
    const/4 v1, 0x0

    .line 63
    if-eqz p2, :cond_59

    .line 65
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4b

    .line 75
    return-object p2

    .line 76
    :cond_4b
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    .line 78
    new-array p2, v2, [Ljava/lang/Object;

    .line 80
    const-string v0, "The local fileId is not accord with server fileId"

    .line 82
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p1

    .line 90
    :cond_59
    const/4 p2, 0x1

    .line 91
    new-array p2, p2, [Ljava/lang/Object;

    .line 93
    aput-object p1, p2, v2

    .line 95
    const-string p1, "The local fileId %s unable to obtain the download"

    .line 97
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 104
    return-object v1

    .line 105
    :cond_68
    const/16 p2, 0x2718

    .line 107
    if-ne v1, p2, :cond_74

    .line 109
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    .line 111
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    .line 113
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1

    .line 117
    :cond_74
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    .line 119
    const-string v0, "Cloud service error on getDownloadUrl for "

    .line 121
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p2
.end method

.method private static isWifi(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getActiveNetworkType(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private preDownload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_37

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_37

    .line 13
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isSupported(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_25

    .line 19
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance p1, Landroid/accounts/NetworkErrorException;

    .line 32
    const-string p2, "Network is not connected"

    .line 34
    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1

    .line 38
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    const/4 v1, 0x0

    .line 44
    aput-object p2, v0, v1

    .line 46
    const-string p2, "The type %s is not supported"

    .line 48
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string p2, "The download parameters should not be null"

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method private registerConnectivityReceiver()V
    .registers 4

    .line 1
    const-string v0, "Register network connectivity changed receiver"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 8
    if-nez v0, :cond_11

    .line 10
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    .line 16
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 18
    :cond_11
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 30
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .registers 3

    .line 1
    const-string v0, "Unregister network connectivity changed receiver"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 8
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mNetworkConnectivityReceiver:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
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

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    .line 6
    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_129

    .line 13
    iget v7, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    .line 15
    if-eqz v7, :cond_2c

    .line 17
    const-string v2, "Current chunk size is:"

    .line 19
    const-string v3, " the "

    .line 21
    invoke-static {v2, v7, v3}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    .line 28
    move-result v3

    .line 29
    div-int/2addr v3, v7

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " chunk"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 45
    :cond_2c
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    .line 48
    move-result v2

    .line 49
    invoke-virtual {p1, v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isLastChunk(I)Z

    .line 52
    move-result v3

    .line 53
    new-instance v10, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;

    .line 55
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    .line 58
    move-result v8

    .line 59
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    .line 61
    move-object v4, v10

    .line 62
    move-object v5, p1

    .line 63
    move v6, v3

    .line 64
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V

    .line 67
    if-eqz p2, :cond_55

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_55

    .line 75
    const-string v4, ","

    .line 77
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    const-string v5, "shareTo"

    .line 83
    invoke-virtual {v10, v5, v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    .line 86
    :cond_55
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 90
    iget-object v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    .line 92
    invoke-virtual {v10, v4, v5, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_121

    .line 98
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    .line 101
    move-result-object v4

    .line 102
    iget v5, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    .line 104
    const v6, 0x13882

    .line 107
    if-eq v5, v6, :cond_6d

    .line 109
    move v1, v0

    .line 110
    :cond_6d
    if-nez v5, :cond_ab

    .line 112
    if-eqz v2, :cond_a2

    .line 114
    if-nez v3, :cond_a2

    .line 116
    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 118
    const-string v3, "tmpid"

    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    .line 127
    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 129
    const-string v3, "_hostingserver"

    .line 131
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    .line 137
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_9a

    .line 145
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_9a

    .line 153
    goto/16 :goto_2

    .line 155
    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    const-string p2, "Server error: The first chunk\'s response does not contain the tempid or hosting server"

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p1

    .line 163
    :cond_a2
    if-eqz v3, :cond_2

    .line 165
    iget-object p1, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 167
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :cond_ab
    const v2, 0x13885

    .line 175
    if-ne v5, v2, :cond_b5

    .line 177
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->resetOffset()V

    .line 180
    goto/16 :goto_2

    .line 182
    :cond_b5
    if-ne v5, v6, :cond_c9

    .line 184
    const/4 v2, 0x3

    .line 185
    if-eq v1, v2, :cond_129

    .line 187
    const-wide/16 v2, 0x1388

    .line 189
    :try_start_bc
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_c3

    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 194
    goto/16 :goto_2

    .line 196
    :catch_c3
    move-exception v2

    .line 197
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    goto/16 :goto_2

    .line 202
    :cond_c9
    const v2, 0x13881

    .line 205
    if-eq v5, v2, :cond_119

    .line 207
    const v2, 0x13883

    .line 210
    if-eq v5, v2, :cond_102

    .line 212
    const v2, 0x13884

    .line 215
    if-eq v5, v2, :cond_e6

    .line 217
    const/16 v2, 0x2718

    .line 219
    if-eq v5, v2, :cond_de

    .line 221
    goto/16 :goto_2

    .line 223
    :cond_de
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    .line 225
    iget-object p2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    .line 227
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    .line 230
    throw p1

    .line 231
    :cond_e6
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/FileTooLargeException;

    .line 233
    const-string v0, "The file size:"

    .line 235
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 242
    move-result p1

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string p1, " exceeds the limit"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/FileTooLargeException;-><init>(Ljava/lang/String;)V

    .line 258
    throw p2

    .line 259
    :cond_102
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException;

    .line 261
    const-string v0, "Can\'t write file at offset:"

    .line 263
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getOffset()I

    .line 270
    move-result p1

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException;-><init>(Ljava/lang/String;)V

    .line 281
    throw p2

    .line 282
    :cond_119
    new-instance p1, Ljava/io/IOException;

    .line 284
    const-string p2, "The file digest error"

    .line 286
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 289
    throw p1

    .line 290
    :cond_121
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    .line 292
    const-string p2, "Cloud service fails when upload file"

    .line 294
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    .line 297
    throw p1

    .line 298
    :cond_129
    new-instance p1, Ljava/io/IOException;

    .line 300
    const-string p2, "Read file error"

    .line 302
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 305
    throw p1
.end method


# virtual methods
.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 6

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->preDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_3
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_c

    .line 3
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :cond_c
    const-string v0, "mfs"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2b

    :cond_1b
    const-string p3, "kss"

    .line 5
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28

    .line 6
    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    return-object p1

    .line 7
    :cond_28
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Unsupported:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    .line 8
    :cond_2b
    :goto_2b
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    .line 9
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 10
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 12
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_3c
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_3 .. :try_end_3c} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3c} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3c} :catch_44
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :catch_44
    move-exception p1

    .line 15
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4b
    move-exception p1

    .line 16
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_52
    move-exception p1

    .line 17
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public download2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->preDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    :try_start_4
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getDownloadUrl2(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_b

    return-object v0

    :cond_b
    const-string v1, "mfs"

    .line 20
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 21
    invoke-direct {p0, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromMfs(Lorg/json/JSONObject;)[B

    move-result-object p1

    return-object p1

    :cond_18
    const-string v1, "kss"

    .line 22
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 23
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

    .line 24
    invoke-direct {p0, p1, p3, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->downloadFromKss(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    .line 25
    sget-object p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_45
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_4 .. :try_end_45} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_45} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_45} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_45} :catch_75

    if-ne p1, p2, :cond_79

    .line 26
    :try_start_47
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_64

    .line 27
    :try_start_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array p2, p2, [B

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_62

    .line 29
    :try_start_55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 31
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

    .line 32
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 33
    :cond_6b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 35
    :cond_74
    throw p2
    :try_end_75
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_55 .. :try_end_75} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_55 .. :try_end_75} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_55 .. :try_end_75} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_55 .. :try_end_75} :catch_75

    :catch_75
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_79
    return-object v0

    :catch_7a
    move-exception p1

    .line 37
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_81
    move-exception p1

    .line 38
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_88
    move-exception p1

    .line 39
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public downloadFromPublicUrl(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3b

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3b

    .line 14
    new-instance v2, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;

    .line 16
    invoke-direct {v2, p1, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_12
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 21
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 23
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Z)[B

    .line 30
    move-result-object p1
    :try_end_1e
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_12 .. :try_end_1e} :catch_34
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_1e} :catch_2d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_1e} :catch_26
    .catch Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException; {:try_start_12 .. :try_end_1e} :catch_1f

    .line 31
    return-object p1

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    new-instance p2, Ljava/io/IOException;

    .line 35
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    throw p2

    .line 39
    :catch_26
    move-exception p1

    .line 40
    new-instance p2, Ljava/io/IOException;

    .line 42
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    throw p2

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    new-instance p2, Ljava/io/IOException;

    .line 49
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    throw p2

    .line 53
    :catch_34
    move-exception p1

    .line 54
    new-instance p2, Ljava/io/IOException;

    .line 56
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    throw p2

    .line 60
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

    .line 1
    const-string v0, "Current chunk size is:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUrl:Ljava/lang/String;

    .line 23
    invoke-direct {v0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V

    .line 26
    if-eqz p2, :cond_2c

    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2c

    .line 34
    const-string v1, ","

    .line 36
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    const-string v1, "shareTo"

    .line 42
    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    .line 45
    :cond_2c
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 49
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_74

    .line 57
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    .line 60
    move-result-object p2

    .line 61
    iget v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    .line 63
    if-nez v0, :cond_68

    .line 65
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_61

    .line 75
    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 77
    const-string v1, "tmpid"

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->setTempId(Ljava/lang/String;)V

    .line 87
    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 89
    const-string v1, "_hostingserver"

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->setHostingServer(Ljava/lang/String;)V

    .line 98
    :cond_61
    iget-object p1, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 100
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_68
    const/16 p1, 0x2718

    .line 107
    if-ne v0, p1, :cond_74

    .line 109
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;

    .line 111
    iget-object p2, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    .line 113
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/CloudParameterError;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1

    .line 117
    :cond_74
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    .line 119
    const-string p2, "Cloud service error in check file exits"

    .line 121
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p1
.end method

.method public updateToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mUserId:Ljava/lang/String;

    .line 13
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCookie:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mExtAuthToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string v0, "The authtoken should not be null"

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
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

    .line 1
    if-nez p1, :cond_9

    .line 3
    const-string p1, "The file should not be null"

    .line 5
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getChunkSize(Landroid/content/Context;)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->mCurrentUploadChunk:I

    .line 18
    if-eqz v0, :cond_8b

    .line 20
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->registerConnectivityReceiver()V

    .line 23
    :try_start_16
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->open()V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->getFileId(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4a

    .line 32
    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fileId:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->shareId:Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_4a

    .line 48
    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, "The file already exist:"

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_43} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException; {:try_start_16 .. :try_end_43} :catch_6d
    .catchall {:try_start_16 .. :try_end_43} :catchall_6b

    .line 68
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    .line 71
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    .line 74
    return-object v0

    .line 75
    :cond_4a
    :try_start_4a
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->uploadFile(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_76

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v1, "The file upload success:"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_64} :catch_72
    .catch Lcom/xiaomi/micloudsdk/exception/InvalidWritePositionException; {:try_start_4a .. :try_end_64} :catch_6d
    .catchall {:try_start_4a .. :try_end_64} :catchall_6b

    .line 101
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    .line 104
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    .line 107
    return-object p2

    .line 108
    :catchall_6b
    move-exception p2

    .line 109
    goto :goto_84

    .line 110
    :catch_6d
    move-exception p2

    .line 111
    :try_start_6e
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    goto :goto_76

    .line 115
    :catch_72
    move-exception p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_6b

    .line 119
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    .line 122
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    .line 125
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    .line 127
    const-string p2, "Cloud server fails when upload files"

    .line 129
    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1

    .line 133
    :goto_84
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->close()V

    .line 136
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->unregisterConnectivityReceiver()V

    .line 139
    throw p2

    .line 140
    :cond_8b
    new-instance p1, Landroid/accounts/NetworkErrorException;

    .line 142
    const-string p2, "Network is not connected"

    .line 144
    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p1
.end method
