.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
.source "DownloadRequest.java"


# static fields
.field private static final CONN_RANGE_PROPERTY:Ljava/lang/String; = "RANGE"

.field private static final CONN_RANGE_VALUE_FORMAT:Ljava/lang/String; = "bytes=%d-"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mCkey:Ljava/lang/String;

.field private mFileSha1:Ljava/lang/String;

.field private mNeedCheckSha1:Z

.field private mRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mBaseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mCkey:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mRetryTimes:I

    iput-boolean p4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mNeedCheckSha1:Z

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The download requset parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;

    move-result-object p1

    return-object p1
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)[B
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Z)[B
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p4, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12a

    if-eqz p5, :cond_17

    :try_start_c
    iget-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    invoke-virtual {p0, p1, p5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getTemporaryDownloadData(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object p5
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p2

    move-object p5, v0

    goto/16 :goto_12d

    :cond_17
    move-object p5, v0

    :goto_18
    const/4 v3, 0x1

    if-eqz p5, :cond_33

    :try_start_1b
    const-string v4, "RANGE"

    const-string v5, "bytes=%d-"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_33
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object p5, v4

    :goto_39
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, 0x2

    if-eq v4, v5, :cond_7d

    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_50

    const/16 v5, 0xce

    if-ne v4, v5, :cond_50

    goto :goto_7d

    :cond_50
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {p2, v4, v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2

    :cond_5c
    const-string p2, "download:The responsed message is %s, code is %d"

    new-array p3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    new-instance p2, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7d
    :goto_7d
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mCkey:Ljava/lang/String;

    if-eqz v4, :cond_9a

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mCkey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newRC4Cipher([BI)Ljavax/crypto/Cipher;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v0, v4

    goto :goto_9e

    :cond_9a
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_9e
    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_a2
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_ad

    invoke-virtual {p5, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a2

    :cond_ad
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-boolean v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mNeedCheckSha1:Z

    if-eqz v5, :cond_109

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getDataSha1Digest([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c5

    goto :goto_109

    :cond_c5
    iget v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mRetryTimes:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_101

    add-int/2addr v4, v3

    iput v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mRetryTimes:I

    const-string v5, "download:Retry %s time to download file because of mismatch sha1"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->download(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_e2
    .catchall {:try_start_1b .. :try_end_e2} :catchall_128

    :try_start_e2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_ea
    :try_start_ea
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    if-lez p3, :cond_f5

    iget-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->saveTemporaryDownloadedData(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :cond_f5
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f8} :catch_f9

    goto :goto_fd

    :catch_f9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_fd
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_101
    :try_start_101
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;

    const-string p3, "The download data sha1 is not consistant with server sha1"

    invoke-direct {p2, p3}, Lcom/xiaomi/micloudsdk/exception/RichmediaServerFailureException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_128

    :cond_109
    :goto_109
    :try_start_109
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_10d

    goto :goto_111

    :catch_10d
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_111
    :try_start_111
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    if-lez p2, :cond_11c

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->saveTemporaryDownloadedData(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :cond_11c
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_11f} :catch_120

    goto :goto_124

    :catch_120
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v4

    :catchall_128
    move-exception p2

    goto :goto_12d

    :catchall_12a
    move-exception p2

    move-object p5, v0

    move-object v1, p5

    :goto_12d
    if-eqz v0, :cond_137

    :try_start_12f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_133

    goto :goto_137

    :catch_133
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_137
    :goto_137
    if-eqz p5, :cond_14c

    :try_start_139
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    if-lez p3, :cond_144

    iget-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mFileSha1:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->saveTemporaryDownloadedData(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :cond_144
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_147} :catch_148

    goto :goto_14c

    :catch_148
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14c
    :goto_14c
    if-eqz v1, :cond_151

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_151
    throw p2
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/DownloadRequest;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "GET"

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
