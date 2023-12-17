.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
.source "DownloadUrlRequest.java"


# instance fields
.field public mFileId:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mFileId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mType:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mType:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_18

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "/dlrequest"

    .line 20
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_18
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    const-string p2, "Content-Type"

    .line 9
    const-string p3, "application/x-www-form-urlencoded"

    .line 11
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_d
    return-object p1
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "GET"

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 8
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mType:Ljava/lang/String;

    .line 10
    const-string v3, "UTF-8"

    .line 12
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const-string v4, "type"

    .line 18
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mType:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_30

    .line 32
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 34
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mFileId:Ljava/lang/String;

    .line 36
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string v2, "shareId"

    .line 42
    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_40

    .line 49
    :cond_30
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 51
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadUrlRequest;->mFileId:Ljava/lang/String;

    .line 53
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string v2, "fileId"

    .line 59
    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_40
    return-object v0
.end method

.method public bridge synthetic getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
