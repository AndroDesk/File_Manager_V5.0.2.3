.class Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;
.source "CheckRequest.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/CheckRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/ulrequest"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/digest"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded"

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "type"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHexDigest()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "digest"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ext"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    return-object v0
.end method
