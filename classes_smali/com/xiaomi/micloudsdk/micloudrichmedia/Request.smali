.class abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field public static final CHUNK_SIZE_MOBILE:I = 0xc800

.field public static final CHUNK_SIZE_WIFI:I = 0x19000

.field public static final HTTP_REQUEST_DELAY_MS:I = 0x1388

.field public static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "MiCloudSDKRequest"

.field public static final USER_FULL_URL:Ljava/lang/String;


# instance fields
.field private final mExtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    const-string v2, "/mic/file/v2/user/full"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->USER_FULL_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x1

    if-lez p4, :cond_39

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->sendDataInRedirect(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_12

    goto :goto_39

    :cond_12
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result p2

    if-nez p2, :cond_33

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "The responsed message is %s, code is %d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_33
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {p2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2

    :cond_39
    :goto_39
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    :try_start_60
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v1, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->decodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_68} :catch_82

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    invoke-static {p1, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    add-int/2addr p4, v0

    invoke-virtual {p0, v1, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_81
    return-object p1

    :catch_82
    move-exception p2

    const-string p3, "IllegalArgumentException Response:"

    const-string p4, " url:"

    invoke-static {p3, v1, p4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Request"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p2

    :cond_9c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "empty response is invalid."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->USER_FULL_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    :cond_c
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->shouldUpdateHost()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The connection url is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :try_start_27
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_32
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_32} :catch_8a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_7b

    const/16 v0, 0x7530

    :try_start_34
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "Cookie"

    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    const-string p2, "User-Agent"

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_6d

    const-string p2, "X-XIAOMI-REDIRECT-COUNT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    const-string p2, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string p3, "true"

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_74} :catch_78
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_74} :catch_75

    goto :goto_8f

    :catch_75
    move-exception p2

    move-object v1, p1

    goto :goto_7c

    :catch_78
    move-exception p2

    move-object v1, p1

    goto :goto_8b

    :catch_7b
    move-exception p2

    :goto_7c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiCloudSDKRequest"

    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :catch_8a
    move-exception p2

    :goto_8b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8e
    move-object p1, v1

    :goto_8f
    return-object p1
.end method

.method public abstract getHttpMethod()Ljava/lang/String;
.end method

.method public abstract getParams(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
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

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParams(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p1, v2, v5}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_44
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_65
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "signature"

    invoke-direct {v2, p2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_16

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s?%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method public getTemporaryDownloadData(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 9

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_92

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "getTemporaryDownloadData:The temporary downloaded file %s exist"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    :try_start_31
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_6f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_65
    .catchall {:try_start_31 .. :try_end_36} :catchall_63

    :try_start_36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_59
    .catchall {:try_start_36 .. :try_end_3b} :catchall_57

    const/16 p2, 0x400

    :try_start_3d
    new-array p2, p2, [B

    :goto_3f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3f

    :cond_4a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_4d} :catch_55
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_53
    .catchall {:try_start_3d .. :try_end_4d} :catchall_57

    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_7c

    :catch_51
    move-exception p1

    goto :goto_79

    :catch_53
    move-exception p2

    goto :goto_69

    :catch_55
    move-exception p2

    goto :goto_73

    :catchall_57
    move-exception p2

    goto :goto_81

    :catch_59
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_69

    :catch_5e
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_73

    :catchall_63
    move-exception p1

    goto :goto_84

    :catch_65
    move-exception p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    :goto_69
    :try_start_69
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_7c

    goto :goto_4d

    :catch_6f
    move-exception p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    :goto_73
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_57

    if-eqz p1, :cond_7c

    goto :goto_4d

    :goto_79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7c
    :goto_7c
    move-object p2, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_92

    :goto_81
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_84
    if-eqz p2, :cond_8e

    :try_start_86
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1

    :cond_92
    :goto_92
    return-object p2
.end method

.method public request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_a6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1c} :catch_9b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_1c} :catch_93
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_1c} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1c} :catch_67
    .catchall {:try_start_3 .. :try_end_1c} :catchall_65

    :try_start_1c
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_34

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_63
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_30} :catch_61
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_30} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_30} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_30} :catch_5a
    .catchall {:try_start_1c .. :try_end_30} :catchall_ca

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_34
    :try_start_34
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result p2

    if-nez p2, :cond_54

    const-string p2, "The responsed message is %s, code is %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    goto :goto_a2

    :cond_54
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {p2, v3, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5a} :catch_63
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_5a} :catch_61
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_34 .. :try_end_5a} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_34 .. :try_end_5a} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_5a} :catch_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_ca

    :catch_5a
    move-exception p2

    move-object v1, p1

    goto :goto_68

    :catch_5d
    move-exception p2

    goto :goto_8d

    :catch_5f
    move-exception p2

    goto :goto_95

    :catch_61
    move-exception p2

    goto :goto_9d

    :catch_63
    move-exception p2

    goto :goto_a8

    :catchall_65
    move-exception p2

    goto :goto_cc

    :catch_67
    move-exception p2

    :goto_68
    :try_start_68
    const-string p1, "Request"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad base 64 exception: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p2
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_65

    :catch_8b
    move-exception p2

    move-object p1, v1

    :goto_8d
    :try_start_8d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_c9

    goto :goto_a2

    :catch_93
    move-exception p2

    move-object p1, v1

    :goto_95
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_c9

    goto :goto_a2

    :catch_9b
    move-exception p2

    move-object p1, v1

    :goto_9d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_ca

    if-eqz p1, :cond_c9

    :goto_a2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c9

    :catch_a6
    move-exception p2

    move-object p1, v1

    :goto_a8
    :try_start_a8
    const-string p3, "MiCloudSDKRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to request http for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_a8 .. :try_end_c6} :catchall_ca

    if-eqz p1, :cond_c9

    goto :goto_a2

    :cond_c9
    :goto_c9
    return-object v1

    :catchall_ca
    move-exception p2

    move-object v1, p1

    :goto_cc
    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d1
    throw p2
.end method

.method public saveTemporaryDownloadedData(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Save temporary downloaded data to file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_46
    .catchall {:try_start_1 .. :try_end_2d} :catchall_44

    :try_start_2d
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_37} :catch_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_3e
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5a

    goto :goto_5e

    :catchall_3b
    move-exception p1

    move-object v0, v1

    goto :goto_5f

    :catch_3e
    move-exception p1

    move-object v0, v1

    goto :goto_47

    :catch_41
    move-exception p1

    move-object v0, v1

    goto :goto_51

    :catchall_44
    move-exception p1

    goto :goto_5f

    :catch_46
    move-exception p1

    :goto_47
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    if-eqz v0, :cond_5e

    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    goto :goto_5e

    :catch_50
    move-exception p1

    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_44

    if-eqz v0, :cond_5e

    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void

    :goto_5f
    if-eqz v0, :cond_69

    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_69
    :goto_69
    throw p1
.end method

.method public sendDataInRedirect(Ljava/net/HttpURLConnection;)V
    .registers 2

    return-void
.end method
