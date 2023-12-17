.class public Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;
.super Ljava/lang/Object;
.source "CloudRequestHelper.java"


# static fields
.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final MAX_FILTER_TAG_COUNT:I = 0x64

.field public static final MICLOUD_TAG:Ljava/lang/String; = "Micloud"

.field private static final PARAM_SYNC_FILTER_TAG:Ljava/lang/String; = "filterTag"

.field private static final TAG:Ljava/lang/String; = "CloudRequestHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_4c

    .line 3
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_4c

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 18
    move-result p3

    .line 19
    const/16 v1, 0x64

    .line 21
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p3

    .line 25
    :goto_18
    const-string v1, "filterTag"

    .line 27
    if-lez p3, :cond_49

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, ","

    .line 36
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 45
    invoke-direct {v1, p2}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v2, "GET"

    .line 50
    invoke-static {v2, p0, p1, p2, v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/util/Map;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {p0, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 65
    move-result v1

    .line 66
    const/16 v2, 0x400

    .line 68
    if-ge v1, v2, :cond_46

    .line 70
    return-void

    .line 71
    :cond_46
    div-int/lit8 p3, p3, 0x2

    .line 73
    goto :goto_18

    .line 74
    :cond_49
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static addHttpRequestHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    const-string v0, "Content-Type"

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_b
    if-eqz p2, :cond_10

    .line 14
    invoke-virtual {p0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Lorg/apache/http/Header;)V

    .line 17
    :cond_10
    const-string p1, "Accept"

    .line 19
    const-string p2, "application/json"

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "Accept-Encoding"

    .line 26
    const-string p2, "gzip"

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-lez p4, :cond_36

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p2, ""

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, "X-XIAOMI-REDIRECT-COUNT"

    .line 52
    invoke-virtual {p0, p2, p1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_36
    const-string p1, "X-XIAOMI-SUPPORT-REDIRECT"

    .line 57
    const-string p2, "true, https"

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p1

    .line 66
    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_51

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lorg/apache/http/Header;

    .line 78
    invoke-virtual {p0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Lorg/apache/http/Header;)V

    .line 81
    goto :goto_41

    .line 82
    :cond_51
    return-void
.end method

.method public static decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 3

    .line 1
    const-string v0, "Content-Encoding"

    .line 3
    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_22

    .line 9
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "gzip"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_22

    .line 21
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 23
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    return-object v0

    .line 35
    :cond_22
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    .line 4
    move-result-object p0

    .line 5
    :try_start_4
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    .line 9
    if-eqz p0, :cond_d

    .line 11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 14
    :cond_d
    return-object v0

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    if-eqz p0, :cond_14

    .line 18
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_14
    throw v0
.end method

.method public static encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_30

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    .line 19
    move-result-object p0

    .line 20
    :try_start_13
    invoke-interface {p0, p2}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0
    :try_end_17
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_13 .. :try_end_17} :catch_18

    .line 24
    return-object p0

    .line 25
    :catch_18
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v0, "encodeData failed:"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string p2, "CloudRequestHelper"

    .line 45
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-object v1

    .line 49
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string p1, "security is empty."

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
.end method

.method private static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_4d

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    if-eqz p2, :cond_43

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_43

    .line 16
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p2

    .line 24
    :cond_17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_43

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 48
    if-eqz v2, :cond_17

    .line 50
    if-eqz v1, :cond_17

    .line 52
    const-string v3, "_"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3f

    .line 60
    invoke-interface {p4, v1}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    :cond_3f
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    goto :goto_17

    .line 68
    :cond_43
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    const-string p1, "signature"

    .line 74
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v0

    .line 78
    :cond_4d
    new-instance p0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 80
    const-string p1, "no invalid cypt coder"

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
.end method

.method private static excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .registers 21

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v11

    .line 5
    :try_start_4
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_67

    .line 9
    move-object/from16 v13, p0

    .line 11
    :try_start_a
    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v1

    .line 19
    sub-long v14, v1, v11

    .line 21
    const-wide/16 v1, 0x0

    .line 23
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_24

    .line 29
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 36
    move-result-wide v1

    .line 37
    :cond_24
    move-wide/from16 v16, v1

    .line 39
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 46
    move-result v18

    .line 47
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    const/4 v10, 0x0

    .line 60
    move-wide v5, v14

    .line 61
    move-wide/from16 v7, v16

    .line 63
    move/from16 v9, v18

    .line 65
    invoke-virtual/range {v3 .. v10}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 71
    move-result-object v10

    .line 72
    new-instance v9, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    const/16 v19, 0x0

    .line 84
    move-object v1, v9

    .line 85
    move-wide v3, v11

    .line 86
    move-wide v5, v14

    .line 87
    move-wide/from16 v7, v16

    .line 89
    move-object v14, v9

    .line 90
    move/from16 v9, v18

    .line 92
    move-object v15, v10

    .line 93
    move/from16 v10, v19

    .line 95
    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    .line 98
    invoke-virtual {v15, v14}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_64} :catch_65

    .line 101
    return-object v0

    .line 102
    :catch_65
    move-exception v0

    .line 103
    goto :goto_6a

    .line 104
    :catch_67
    move-exception v0

    .line 105
    move-object/from16 v13, p0

    .line 107
    :goto_6a
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    const-wide/16 v3, -0x1

    .line 121
    const-wide/16 v5, 0x0

    .line 123
    const/4 v7, -0x1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 131
    move-result-object v8

    .line 132
    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 138
    move-result-object v9

    .line 139
    new-instance v10, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    move-result-wide v3

    .line 153
    sub-long v5, v3, v11

    .line 155
    const/4 v8, 0x0

    .line 156
    move-object v1, v10

    .line 157
    move-wide v3, v11

    .line 158
    move-object v7, v0

    .line 159
    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    .line 162
    invoke-virtual {v9, v10}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    const/4 v3, -0x1

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    const-string v5, ""

    .line 188
    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->statGetDownloadFileUrlsFailedEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    throw v0
.end method

.method public static getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->isV4Url(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_c

    .line 7
    new-instance p0, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;-><init>(Ljava/lang/String;)V

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    new-instance p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>(Ljava/lang/String;)V

    .line 18
    :goto_11
    return-object p0
.end method

.method private static httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 3
    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1, p1, p2, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->addHttpRequestHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;I)V

    .line 10
    const-string v1, "Micloud"

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_57

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "http get url : "

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v3, "http get cookies : "

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    if-eqz p1, :cond_37

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    const-string v3, "null"

    .line 58
    :goto_39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v3, "http get additionalHeaders : "

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_57
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 99
    move-result v3

    .line 100
    const/16 v4, 0xc8

    .line 102
    const-string v5, ""

    .line 104
    if-ne v3, v4, :cond_a6

    .line 106
    :try_start_69
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    invoke-interface {p3, v4}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v1
    :try_end_71
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_69 .. :try_end_71} :catch_8a

    .line 114
    invoke-static {v1, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_82

    .line 124
    add-int/lit8 p4, p4, 0x1

    .line 126
    invoke-static {v2, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_82
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getMethod()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-static {p0, p1, v3, v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->statGetDownloadFileUrlsFailedEventIfCloudResponseCodeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    return-object v1

    .line 139
    :catch_8a
    move-exception p1

    .line 140
    const-string p2, "MiCloudServerException"

    .line 142
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getMethod()Ljava/lang/String;

    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    invoke-static {p0, p2, v3, p1, v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->statGetDownloadFileUrlsFailedEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 162
    const/4 p1, 0x0

    .line 163
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    .line 166
    throw p0

    .line 167
    :cond_a6
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getMethod()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-static {p0, p1, v3, v5, v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->statGetDownloadFileUrlsFailedEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 177
    move-result p0

    .line 178
    const-string p1, " "

    .line 180
    if-eqz p0, :cond_cf

    .line 182
    const-string p0, "MiCloudServerException: "

    .line 184
    invoke-static {p0, v3, p1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move-result-object p0

    .line 188
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p0

    .line 199
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 204
    invoke-direct {p0, v3, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    .line 207
    throw p0

    .line 208
    :cond_cf
    const-string p0, "Server error: "

    .line 210
    invoke-static {p0, v3, p1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-result-object p2

    .line 214
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 217
    move-result-object p3

    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 225
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance p2, Ljava/io/IOException;

    .line 230
    invoke-static {p0, v3, p1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-result-object p0

    .line 234
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 245
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p2
.end method

.method public static httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Micloud"

    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object p0
.end method

.method public static httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/StringEntity;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v2, "application/json"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Micloud"

    const/4 p2, 0x3

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object p0
.end method

.method private static httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 3
    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 11
    :cond_a
    invoke-static {v0, p2, p3, p4, p6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->addHttpRequestHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;I)V

    .line 14
    const/4 v1, 0x3

    .line 15
    const-string v2, "Micloud"

    .line 17
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5b

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v3, "http post url : "

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v1, "http post cookies : "

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    if-eqz p3, :cond_3b

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    const-string v1, "null"

    .line 62
    :goto_3d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v1, "http post additionalHeaders : "

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5b
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    .line 95
    move-result-object p0

    .line 96
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 103
    move-result v0

    .line 104
    const/16 v1, 0xc8

    .line 106
    if-ne v0, v1, :cond_96

    .line 108
    :try_start_6b
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p5, v0}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p0
    :try_end_73
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_6b .. :try_end_73} :catch_89

    .line 116
    invoke-static {p0, p6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_88

    .line 126
    add-int/lit8 v6, p6, 0x1

    .line 128
    move-object v1, p1

    .line 129
    move-object v2, p2

    .line 130
    move-object v3, p3

    .line 131
    move-object v4, p4

    .line 132
    move-object v5, p5

    .line 133
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    :cond_88
    return-object p0

    .line 138
    :catch_89
    move-exception p1

    .line 139
    const-string p2, "MiCloudServerException"

    .line 141
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 146
    const/4 p2, 0x0

    .line 147
    invoke-direct {p1, p2, p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    .line 150
    throw p1

    .line 151
    :cond_96
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 154
    move-result p1

    .line 155
    const-string p2, " "

    .line 157
    if-eqz p1, :cond_b8

    .line 159
    const-string p1, "MiCloudServerException: "

    .line 161
    invoke-static {p1, v0, p2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-result-object p1

    .line 165
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 181
    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    .line 184
    throw p1

    .line 185
    :cond_b8
    const-string p1, "Server error: "

    .line 187
    invoke-static {p1, v0, p2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    move-result-object p3

    .line 191
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 194
    move-result-object p4

    .line 195
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p3, Ljava/io/IOException;

    .line 207
    invoke-static {p1, v0, p2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 222
    invoke-direct {p3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p3
.end method

.method public static httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/entity/UrlEncodedFormEntity;",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Micloud"

    const/4 p2, 0x3

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-object p0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    new-instance v1, Ljava/io/BufferedReader;

    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    const-string v3, "UTF-8"

    .line 12
    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 18
    const/16 p0, 0x800

    .line 20
    new-array v2, p0, [C

    .line 22
    :goto_15
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, p0}, Ljava/io/BufferedReader;->read([CII)I

    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    if-eq v4, v5, :cond_21

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 33
    goto :goto_15

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static isV4Url(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "/v4"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_b

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    :goto_c
    return p0
.end method

.method public static mapToPairs(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_37

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 42
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 44
    if-eqz v1, :cond_2e

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const-string v1, ""

    .line 49
    :goto_30
    invoke-direct {v3, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_11

    .line 56
    :cond_37
    return-object v0
.end method

.method private static statGetDownloadFileUrlsFailedEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_15

    .line 11
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->createGetDownloadFileUrlFailedStatParam(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V

    .line 22
    :cond_15
    return-void
.end method

.method private static statGetDownloadFileUrlsFailedEventIfCloudResponseCodeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1d

    .line 11
    invoke-static {p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->isHttpStatusCodeOKButCloudResponseCodeError(ILjava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1d

    .line 17
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, ""

    .line 23
    invoke-static {p0, p2, v0, p3}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;->createGetDownloadFileUrlFailedStatParam(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V

    .line 30
    :cond_1d
    return-void
.end method
