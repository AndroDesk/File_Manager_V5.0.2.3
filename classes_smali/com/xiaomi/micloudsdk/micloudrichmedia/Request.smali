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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/file/v2/user/full"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->USER_FULL_URL:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-object p0
.end method

.method public connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p4, :cond_39

    .line 4
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->sendDataInRedirect(Ljava/net/HttpURLConnection;)V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xc8

    .line 16
    if-ne v1, v2, :cond_12

    .line 18
    goto :goto_39

    .line 19
    :cond_12
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_33

    .line 25
    const/4 p2, 0x2

    .line 26
    new-array p2, p2, [Ljava/lang/Object;

    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    aput-object p1, p2, p3

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    aput-object p1, p2, v0

    .line 41
    const-string p1, "The responsed message is %s, code is %d"

    .line 43
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x0

    .line 51
    return-object p1

    .line 52
    :cond_33
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 54
    invoke-direct {p2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    .line 57
    throw p2

    .line 58
    :cond_39
    :goto_39
    new-instance v1, Ljava/io/BufferedReader;

    .line 60
    new-instance v2, Ljava/io/InputStreamReader;

    .line 62
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    :goto_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_56

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_4c

    .line 87
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_9c

    .line 97
    :try_start_60
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 99
    const-string v3, "UTF-8"

    .line 101
    invoke-static {v2, v1, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->decodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p1
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_68} :catch_82

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_81

    .line 111
    invoke-static {p1, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_81

    .line 121
    add-int/2addr p4, v0

    .line 122
    invoke-virtual {p0, v1, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    :cond_81
    return-object p1

    .line 131
    :catch_82
    move-exception p2

    .line 132
    const-string p3, "IllegalArgumentException Response:"

    .line 134
    const-string p4, " url:"

    .line 136
    invoke-static {p3, v1, p4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    const-string p3, "Request"

    .line 153
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    throw p2

    .line 157
    :cond_9c
    new-instance p1, Ljava/io/IOException;

    .line 159
    const-string p2, "empty response is invalid."

    .line 161
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    throw p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->USER_FULL_URL:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_c

    .line 11
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    .line 13
    :cond_c
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->shouldUpdateHost()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v2, "The connection url is:"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 40
    :try_start_27
    new-instance v0, Ljava/net/URL;

    .line 42
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_32
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_32} :catch_8a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_7b

    .line 51
    const/16 v0, 0x7530

    .line 53
    :try_start_34
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 56
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getHttpMethod()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_4c

    .line 72
    const-string v0, "Cookie"

    .line 74
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_4c
    const-string p2, "User-Agent"

    .line 79
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-lez p3, :cond_6d

    .line 88
    const-string p2, "X-XIAOMI-REDIRECT-COUNT"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string p3, ""

    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_6d
    const-string p2, "X-XIAOMI-SUPPORT-REDIRECT"

    .line 112
    const-string p3, "true"

    .line 114
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_74} :catch_78
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_74} :catch_75

    .line 117
    goto :goto_8f

    .line 118
    :catch_75
    move-exception p2

    .line 119
    move-object v1, p1

    .line 120
    goto :goto_7c

    .line 121
    :catch_78
    move-exception p2

    .line 122
    move-object v1, p1

    .line 123
    goto :goto_8b

    .line 124
    :catch_7b
    move-exception p2

    .line 125
    :goto_7c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    const-string p2, "MiCloudSDKRequest"

    .line 135
    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    goto :goto_8e

    .line 139
    :catch_8a
    move-exception p2

    .line 140
    :goto_8b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :goto_8e
    move-object p1, v1

    .line 144
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParams(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_44

    .line 20
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mExtParams:Ljava/util/Map;

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_44

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 56
    const-string v5, "UTF-8"

    .line 58
    invoke-static {p1, v2, v5}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_1d

    .line 69
    :cond_44
    new-instance v1, Ljava/util/TreeMap;

    .line 71
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v2

    .line 78
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_65

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 90
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_4d

    .line 102
    :cond_65
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 104
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getHttpMethod()Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    const/4 v5, 0x1

    .line 113
    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    const/4 v6, 0x0

    .line 116
    aput-object p2, v5, v6

    .line 118
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    invoke-static {v3, p2, v1, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    const-string p2, "signature"

    .line 128
    invoke-direct {v2, p2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method public getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_16

    .line 8
    :cond_7
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p1, v0, v1

    .line 14
    const/4 p1, 0x1

    .line 15
    aput-object p2, v0, p1

    .line 17
    const-string p1, "%s?%s"

    .line 19
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    :goto_16
    return-object p1
.end method

.method public getTemporaryDownloadData(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    invoke-static {v1, p1, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    if-eqz p1, :cond_92

    .line 31
    const/4 p1, 0x1

    .line 32
    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v1, p1, v2

    .line 41
    const-string v1, "getTemporaryDownloadData:The temporary downloaded file %s exist"

    .line 43
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 50
    :try_start_31
    new-instance p1, Ljava/io/FileInputStream;

    .line 52
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_6f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_65
    .catchall {:try_start_31 .. :try_end_36} :catchall_63

    .line 55
    :try_start_36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 57
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_59
    .catchall {:try_start_36 .. :try_end_3b} :catchall_57

    .line 60
    const/16 p2, 0x400

    .line 62
    :try_start_3d
    new-array p2, p2, [B

    .line 64
    :goto_3f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 67
    move-result v3

    .line 68
    const/4 v4, -0x1

    .line 69
    if-eq v3, v4, :cond_4a

    .line 71
    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 74
    goto :goto_3f

    .line 75
    :cond_4a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_4d} :catch_55
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_53
    .catchall {:try_start_3d .. :try_end_4d} :catchall_57

    .line 78
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 81
    goto :goto_7c

    .line 82
    :catch_51
    move-exception p1

    .line 83
    goto :goto_79

    .line 84
    :catch_53
    move-exception p2

    .line 85
    goto :goto_69

    .line 86
    :catch_55
    move-exception p2

    .line 87
    goto :goto_73

    .line 88
    :catchall_57
    move-exception p2

    .line 89
    goto :goto_81

    .line 90
    :catch_59
    move-exception v1

    .line 91
    move-object v5, v1

    .line 92
    move-object v1, p2

    .line 93
    move-object p2, v5

    .line 94
    goto :goto_69

    .line 95
    :catch_5e
    move-exception v1

    .line 96
    move-object v5, v1

    .line 97
    move-object v1, p2

    .line 98
    move-object p2, v5

    .line 99
    goto :goto_73

    .line 100
    :catchall_63
    move-exception p1

    .line 101
    goto :goto_84

    .line 102
    :catch_65
    move-exception p1

    .line 103
    move-object v1, p2

    .line 104
    move-object p2, p1

    .line 105
    move-object p1, v1

    .line 106
    :goto_69
    :try_start_69
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    if-eqz p1, :cond_7c

    .line 111
    goto :goto_4d

    .line 112
    :catch_6f
    move-exception p1

    .line 113
    move-object v1, p2

    .line 114
    move-object p2, p1

    .line 115
    move-object p1, v1

    .line 116
    :goto_73
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_57

    .line 119
    if-eqz p1, :cond_7c

    .line 121
    goto :goto_4d

    .line 122
    :goto_79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    :cond_7c
    :goto_7c
    move-object p2, v1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    goto :goto_92

    .line 130
    :goto_81
    move-object v5, p2

    .line 131
    move-object p2, p1

    .line 132
    move-object p1, v5

    .line 133
    :goto_84
    if-eqz p2, :cond_8e

    .line 135
    :try_start_86
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 138
    goto :goto_8e

    .line 139
    :catch_8a
    move-exception p2

    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    throw p1

    .line 147
    :cond_92
    :goto_92
    return-object p2
.end method

.method public request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "UTF-8"

    .line 16
    invoke-static {p1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, p1, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 28
    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_a6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1c} :catch_9b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_1c} :catch_93
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_1c} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1c} :catch_67
    .catchall {:try_start_3 .. :try_end_1c} :catchall_65

    .line 29
    :try_start_1c
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 32
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 35
    move-result v3

    .line 36
    const/16 v4, 0xc8

    .line 38
    if-ne v3, v4, :cond_34

    .line 40
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    new-instance p2, Lorg/json/JSONObject;

    .line 46
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_63
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_30} :catch_61
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_30} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_30} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_30} :catch_5a
    .catchall {:try_start_1c .. :try_end_30} :catchall_ca

    .line 49
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    return-object p2

    .line 53
    :cond_34
    :try_start_34
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_54

    .line 59
    const-string p2, "The responsed message is %s, code is %d"

    .line 61
    const/4 p3, 0x2

    .line 62
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, p3, v2

    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v3

    .line 75
    aput-object v3, p3, v2

    .line 77
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 84
    goto :goto_a2

    .line 85
    :cond_54
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 87
    invoke-direct {p2, v3, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    .line 90
    throw p2
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5a} :catch_63
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_5a} :catch_61
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_34 .. :try_end_5a} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_34 .. :try_end_5a} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_5a} :catch_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_ca

    .line 91
    :catch_5a
    move-exception p2

    .line 92
    move-object v1, p1

    .line 93
    goto :goto_68

    .line 94
    :catch_5d
    move-exception p2

    .line 95
    goto :goto_8d

    .line 96
    :catch_5f
    move-exception p2

    .line 97
    goto :goto_95

    .line 98
    :catch_61
    move-exception p2

    .line 99
    goto :goto_9d

    .line 100
    :catch_63
    move-exception p2

    .line 101
    goto :goto_a8

    .line 102
    :catchall_65
    move-exception p2

    .line 103
    goto :goto_cc

    .line 104
    :catch_67
    move-exception p2

    .line 105
    :goto_68
    :try_start_68
    const-string p1, "Request"

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v2, "Bad base 64 exception: "

    .line 114
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, " response:"

    .line 126
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p3

    .line 136
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    throw p2
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_65

    .line 140
    :catch_8b
    move-exception p2

    .line 141
    move-object p1, v1

    .line 142
    :goto_8d
    :try_start_8d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    if-eqz p1, :cond_c9

    .line 147
    goto :goto_a2

    .line 148
    :catch_93
    move-exception p2

    .line 149
    move-object p1, v1

    .line 150
    :goto_95
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    if-eqz p1, :cond_c9

    .line 155
    goto :goto_a2

    .line 156
    :catch_9b
    move-exception p2

    .line 157
    move-object p1, v1

    .line 158
    :goto_9d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_ca

    .line 161
    if-eqz p1, :cond_c9

    .line 163
    :goto_a2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    goto :goto_c9

    .line 167
    :catch_a6
    move-exception p2

    .line 168
    move-object p1, v1

    .line 169
    :goto_a8
    :try_start_a8
    const-string p3, "MiCloudSDKRequest"

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v2, "failed to request http for "

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 196
    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_a8 .. :try_end_c6} :catchall_ca

    .line 199
    if-eqz p1, :cond_c9

    .line 201
    goto :goto_a2

    .line 202
    :cond_c9
    :goto_c9
    return-object v1

    .line 203
    :catchall_ca
    move-exception p2

    .line 204
    move-object v1, p1

    .line 205
    :goto_cc
    if-eqz v1, :cond_d1

    .line 207
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    :cond_d1
    throw p2
.end method

.method public saveTemporaryDownloadedData(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "Save temporary downloaded data to file %s"

    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object p3, v2, v3

    .line 10
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/io/FileOutputStream;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_46
    .catchall {:try_start_1 .. :try_end_2d} :catchall_44

    .line 46
    :try_start_2d
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_37} :catch_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_3e
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    .line 56
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5a

    .line 59
    goto :goto_5e

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    move-object v0, v1

    .line 62
    goto :goto_5f

    .line 63
    :catch_3e
    move-exception p1

    .line 64
    move-object v0, v1

    .line 65
    goto :goto_47

    .line 66
    :catch_41
    move-exception p1

    .line 67
    move-object v0, v1

    .line 68
    goto :goto_51

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    goto :goto_5f

    .line 71
    :catch_46
    move-exception p1

    .line 72
    :goto_47
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 75
    if-eqz v0, :cond_5e

    .line 77
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    .line 80
    goto :goto_5e

    .line 81
    :catch_50
    move-exception p1

    .line 82
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_44

    .line 85
    if-eqz v0, :cond_5e

    .line 87
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 90
    goto :goto_5e

    .line 91
    :catch_5a
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    :cond_5e
    :goto_5e
    return-void

    .line 96
    :goto_5f
    if-eqz v0, :cond_69

    .line 98
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 101
    goto :goto_69

    .line 102
    :catch_65
    move-exception p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :cond_69
    :goto_69
    throw p1
.end method

.method public sendDataInRedirect(Ljava/net/HttpURLConnection;)V
    .registers 2

    return-void
.end method
