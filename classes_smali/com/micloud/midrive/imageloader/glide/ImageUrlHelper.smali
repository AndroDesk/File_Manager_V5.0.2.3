.class public Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;
.super Ljava/lang/Object;
.source "ImageUrlHelper.java"


# static fields
.field private static final DATA_HTTPS_PREFIX:Ljava/lang/String; = "https://"

.field private static final DATA_HTTP_PREFIX:Ljava/lang/String; = "http://"

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHostLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_e

    .line 10
    invoke-static {p0, v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    goto :goto_1c

    .line 15
    :cond_e
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const-string v3, "relocation url "

    .line 20
    invoke-static {v3, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    aput-object v0, v1, v2

    .line 26
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 29
    :goto_1c
    return-object p0
.end method

.method private static encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_7

    .line 3
    new-instance p2, Ljava/util/HashMap;

    .line 5
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_7
    if-eqz p1, :cond_25

    .line 10
    const-string v0, "_nonce"

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_25

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 31
    invoke-direct {v2, v0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_2e

    .line 38
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 43
    move-result p1

    .line 44
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_2e
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_71

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Ljava/lang/String;

    .line 79
    const-string v2, "_"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_68

    .line 87
    if-eqz p2, :cond_59

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const-string p2, ""

    .line 92
    :goto_5b
    invoke-interface {p0, p2}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 98
    invoke-direct {v2, v0, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_36

    .line 105
    :cond_68
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 107
    invoke-direct {v2, v0, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_36

    .line 114
    :cond_71
    return-object v1
.end method

.method private static getAuthTokenOrThrow()Lcom/xiaomi/micloudsdk/data/IAuthToken;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Lmicloud/compat/independent/request/QueryAuthTokenException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "queryAuthToken() returned null, errMsg = "

    .line 16
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lmicloud/compat/independent/request/QueryAuthTokenException;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 34
    throw v1
.end method

.method private static getCookies()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->getAuthTokenOrThrow()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/data/IAuthToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->getServiceToken()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    if-eqz v1, :cond_23

    .line 28
    const-string v3, "serviceToken="

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_23
    if-eqz v0, :cond_36

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2e

    .line 44
    const-string v1, "cUserId="

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const-string v1, "; cUserId="

    .line 49
    :goto_30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0
    :try_end_3a
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 59
    return-object v0

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    .line 65
    return-object v0
.end method

.method public static getEncryptedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "?"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "&"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/HashMap;

    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    array-length v3, v1

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, v4

    .line 27
    :goto_1a
    const/4 v6, 0x1

    .line 28
    if-ge v5, v3, :cond_2f

    .line 30
    aget-object v7, v1, v5

    .line 32
    const-string v8, "="

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 38
    aget-object v8, v7, v4

    .line 40
    aget-object v6, v7, v6

    .line 42
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 47
    goto :goto_1a

    .line 48
    :cond_2f
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    :try_start_34
    invoke-static {v0}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->checkHostLocation(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->isV4Url(Ljava/lang/String;)Z

    .line 60
    move-result v3

    .line 61
    invoke-static {}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->getAuthTokenOrThrow()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v5}, Lcom/xiaomi/micloudsdk/data/IAuthToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;

    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v5, v0}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->getCryptCoder(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    .line 72
    move-result-object v7

    .line 73
    if-eqz v3, :cond_4f

    .line 75
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce()Ljava/lang/String;

    .line 78
    move-result-object v3
    :try_end_4e
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_34 .. :try_end_4e} :catch_b7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_34 .. :try_end_4e} :catch_b5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_34 .. :try_end_4e} :catch_b3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_4e} :catch_b1

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move-object v3, v1

    .line 81
    :goto_50
    :try_start_50
    invoke-static {v7, v3, v2}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 84
    move-result-object v2
    :try_end_54
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_50 .. :try_end_54} :catch_81
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_50 .. :try_end_54} :catch_b7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_50 .. :try_end_54} :catch_b5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_50 .. :try_end_54} :catch_b3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_54} :catch_b1

    .line 85
    :try_start_54
    invoke-interface {v5, v2}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->addParams(Ljava/util/ArrayList;)V

    .line 88
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 90
    invoke-interface {v5, v3, v0, v2}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->signParams(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    invoke-static {v0, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    new-array v2, v6, [Ljava/lang/Object;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v5, "Original url = "

    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p0, ", encrypted url: "

    .line 114
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    aput-object p0, v2, v4

    .line 126
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 129
    return-object v0

    .line 130
    :catch_81
    move-exception p0

    .line 131
    const/4 v0, 0x2

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    const-string v2, "Micloud"

    .line 136
    aput-object v2, v0, v4

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v3, "CipherException: "

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    aput-object v2, v0, v6

    .line 165
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 168
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-direct {v0, v4, p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 177
    throw v0
    :try_end_b1
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_54 .. :try_end_b1} :catch_b7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_54 .. :try_end_b1} :catch_b5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_54 .. :try_end_b1} :catch_b3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_b1} :catch_b1

    .line 178
    :catch_b1
    move-exception p0

    .line 179
    goto :goto_b8

    .line 180
    :catch_b3
    move-exception p0

    .line 181
    goto :goto_b8

    .line 182
    :catch_b5
    move-exception p0

    .line 183
    goto :goto_b8

    .line 184
    :catch_b7
    move-exception p0

    .line 185
    :goto_b8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    return-object v1
.end method

.method public static getHeaders()Lcom/bumptech/glide/load/model/Headers;
    .registers 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->getCookies()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_14

    .line 16
    const-string v2, "Cookie"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 21
    :cond_14
    const-string v1, "Accept"

    .line 23
    const-string v2, "application/json"

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 28
    const-string v1, "Accept-Encoding"

    .line 30
    const-string v2, "gzip"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 35
    const-string v1, "X-XIAOMI-SUPPORT-REDIRECT"

    .line 37
    const-string v2, "true, https"

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 42
    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public static isDirectUrl(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_15

    .line 11
    sget-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_IMAGE_EXT:Ljava/util/Collection;

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 23
    :goto_16
    return p0
.end method

.method public static isNetUrl(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "http://"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    const-string v0, "https://"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    :goto_14
    return p0
.end method
