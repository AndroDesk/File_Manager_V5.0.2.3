.class Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;
.source "UploadChunkRequest.java"


# static fields
.field private static final BUFFER_SIZE:I

.field private static final TAG:Ljava/lang/String; = "UploadChunkRequest"


# instance fields
.field private mChunkLength:I

.field private mCkeyHint:Ljava/lang/String;

.field private mIsLastChunk:Z

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x93996

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V

    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mIsLastChunk:Z

    iput p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mOffset:I

    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "/upload"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_17
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "/more"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_25
    :goto_25
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string p2, "Connection"

    const-string p3, "Keep-Alive"

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string p3, "multipart/form-data;boundary=*****"

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object p1
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 8
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

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-static {p1, v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ckeyhint"

    invoke-direct {v1, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    :cond_41
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getTempId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHostingServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getTempId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "tmpid"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHostingServer()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_hostingserver"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mOffset:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "offset"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mIsLastChunk:Z

    const-string v2, "st"

    if-eqz v1, :cond_ce

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "2"

    invoke-static {p1, v4, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ext"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHexDigest()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "digest"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    :cond_ce
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "1"

    invoke-static {p1, v4, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_dc
    return-object v0

    :cond_dd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The tempid or hosting server should not be null for the non first chunk or mixin2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_103
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_ed
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_23} :catch_da
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_23} :catch_c7
    .catchall {:try_start_1 .. :try_end_23} :catchall_c3

    if-nez p1, :cond_2b

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a
    return-object v0

    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_c0
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_37} :catch_bd
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2b .. :try_end_37} :catch_ba
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2b .. :try_end_37} :catch_b7
    .catchall {:try_start_2b .. :try_end_37} :catchall_b4

    :try_start_37
    const-string v2, "--*****\r\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    iget v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    invoke-virtual {v4, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getData(I)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeStream(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n--*****--\r\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_7c

    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_70} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_70} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_37 .. :try_end_70} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_37 .. :try_end_70} :catch_ab
    .catchall {:try_start_37 .. :try_end_70} :catchall_121

    :try_start_70
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_78
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p3

    :cond_7c
    :try_start_7c
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result p2

    if-nez p2, :cond_a5

    const-string p2, "The responsed message is %s, code is %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_9a} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_9a} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7c .. :try_end_9a} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7c .. :try_end_9a} :catch_ab
    .catchall {:try_start_7c .. :try_end_9a} :catchall_121

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9f

    goto/16 :goto_ff

    :catch_9f
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_ff

    :cond_a5
    :try_start_a5
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {p2, v2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_ab} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a5 .. :try_end_ab} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a5 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_121

    :catch_ab
    move-exception p2

    goto :goto_ca

    :catch_ad
    move-exception p2

    goto :goto_dd

    :catch_af
    move-exception p2

    goto :goto_f0

    :catch_b1
    move-exception p2

    goto/16 :goto_106

    :catchall_b4
    move-exception p2

    goto/16 :goto_123

    :catch_b7
    move-exception p2

    move-object v1, v0

    goto :goto_ca

    :catch_ba
    move-exception p2

    move-object v1, v0

    goto :goto_dd

    :catch_bd
    move-exception p2

    move-object v1, v0

    goto :goto_f0

    :catch_c0
    move-exception p2

    move-object v1, v0

    goto :goto_106

    :catchall_c3
    move-exception p2

    move-object p1, v0

    goto/16 :goto_123

    :catch_c7
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_ca
    :try_start_ca
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_121

    if-eqz v1, :cond_d7

    :try_start_cf
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_d7

    :catch_d3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d7
    :goto_d7
    if-eqz p1, :cond_120

    goto :goto_ff

    :catch_da
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_dd
    :try_start_dd
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_121

    if-eqz v1, :cond_ea

    :try_start_e2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ea
    :goto_ea
    if-eqz p1, :cond_120

    goto :goto_ff

    :catch_ed
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_f0
    :try_start_f0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_121

    if-eqz v1, :cond_fd

    :try_start_f5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_fd

    :catch_f9
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_fd
    :goto_fd
    if-eqz p1, :cond_120

    :goto_ff
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_120

    :catch_103
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_106
    :try_start_106
    const-string p3, "UploadChunkRequest"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_106 .. :try_end_113} :catchall_121

    if-eqz v1, :cond_11d

    :try_start_115
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_11d

    :catch_119
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11d
    :goto_11d
    if-eqz p1, :cond_120

    goto :goto_ff

    :cond_120
    :goto_120
    return-object v0

    :catchall_121
    move-exception p2

    move-object v0, v1

    :goto_123
    if-eqz v0, :cond_12d

    :try_start_125
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_12d

    :catch_129
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12d
    :goto_12d
    if-eqz p1, :cond_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_132
    throw p2
.end method

.method public sendDataInRedirect(Ljava/net/HttpURLConnection;)V
    .registers 6

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "--*****\r\n"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result p1

    if-ne v1, p1, :cond_31

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    goto :goto_3a

    :cond_31
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    :goto_3a
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getData(I)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeStream(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    const-string p1, "\r\n--*****--\r\n"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
