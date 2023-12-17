.class public Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
.super Ljava/lang/Object;
.source "HttpGetRequest.java"


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x2710

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final READ_BUFFER_SIZE:I = 0x2000


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->url:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->queryParams:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->headers:Ljava/util/Map;

    .line 15
    return-void
.end method

.method private createParamsString(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v3, "="

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    const-string v5, ""

    .line 45
    if-eqz v4, :cond_35

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-object v1, v5

    .line 55
    :goto_36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_77

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    const-string v2, "&"

    .line 79
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_6b

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move-object v1, v5

    .line 109
    :goto_6c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    goto :goto_40

    .line 120
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    return-object p1
.end method

.method private createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->createParamsString(Ljava/util/Map;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object p1

    .line 12
    :cond_b
    const-string v0, "?"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_24

    .line 20
    const-string v0, "&"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1f

    .line 28
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    :cond_1f
    invoke-static {p1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_24
    invoke-static {p1, v0, p2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 5
    const-string v2, "UTF-8"

    .line 7
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    const/16 p1, 0x2000

    .line 15
    new-array p1, p1, [C

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    :goto_15
    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eq v2, v3, :cond_21

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_15

    .line 34
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method


# virtual methods
.method public execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->url:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->queryParams:Ljava/util/Map;

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "GET Request URL: "

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/net/URL;

    .line 36
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_84

    .line 45
    const/16 v2, 0x2710

    .line 47
    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 50
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 53
    const-string v2, "GET"

    .line 55
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->headers:Ljava/util/Map;

    .line 60
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5f

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/String;

    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    goto :goto_43

    .line 96
    :cond_5f
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 106
    move-result-object v3
    :try_end_6a
    .catchall {:try_start_2e .. :try_end_6a} :catchall_82

    .line 107
    if-eqz v3, :cond_74

    .line 109
    :try_start_6c
    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    .line 112
    move-result-object v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_71

    .line 113
    goto :goto_74

    .line 114
    :catchall_71
    move-exception v2

    .line 115
    move-object v0, v3

    .line 116
    goto :goto_86

    .line 117
    :cond_74
    :goto_74
    if-eqz v3, :cond_79

    .line 119
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 122
    :cond_79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    new-instance v1, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    .line 127
    invoke-direct {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;-><init>(ILjava/lang/String;)V

    .line 130
    return-object v1

    .line 131
    :catchall_82
    move-exception v2

    .line 132
    goto :goto_86

    .line 133
    :catchall_84
    move-exception v2

    .line 134
    move-object v1, v0

    .line 135
    :goto_86
    if-eqz v0, :cond_8b

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_8b
    if-eqz v1, :cond_90

    .line 142
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    :cond_90
    throw v2
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    move-result-object p1

    return-object p1
.end method
