.class Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;
.source "CheckRequest.java"


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V

    .line 3
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1c

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "/ulrequest"

    .line 24
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "/digest"

    .line 40
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 10
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "UTF-8"

    .line 16
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    const-string v4, "type"

    .line 22
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 30
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 32
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHexDigest()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v4, "digest"

    .line 42
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 50
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4f

    .line 60
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 62
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 64
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getExt()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    const-string v2, "ext"

    .line 74
    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4f
    return-object v0
.end method
