.class public Lcom/bumptech/glide/load/data/HttpUrlFetcher;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;,
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

.field private static final INVALID_STATUS_CODE:I = -0x1

.field private static final MAXIMUM_REDIRECTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HttpUrlFetcher"


# instance fields
.field private final connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

.field private final glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

.field private volatile isCancelled:Z

.field private stream:Ljava/io/InputStream;

.field private final timeout:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;ILcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;ILcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 4
    iput p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    return-void
.end method

.method private getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 18
    move-result-object p1

    .line 19
    int-to-long v0, v0

    .line 20
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 26
    goto :goto_3d

    .line 27
    :cond_1a
    const/4 v0, 0x3

    .line 28
    const-string v1, "HttpUrlFetcher"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_37

    .line 36
    const-string v0, "Got non empty content encoding: "

    .line 38
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_37
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 62
    :goto_3d
    iget-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 64
    return-object p1
.end method

.method private static isHttpOk(I)Z
    .registers 2

    .line 1
    div-int/lit8 p0, p0, 0x64

    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_7

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p0, 0x0

    .line 9
    :goto_8
    return p0
.end method

.method private static isHttpRedirect(I)Z
    .registers 2

    .line 1
    div-int/lit8 p0, p0, 0x64

    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_7

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p0, 0x0

    .line 9
    :goto_8
    return p0
.end method

.method private loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ge p2, v0, :cond_ce

    .line 4
    if-eqz p3, :cond_1c

    .line 6
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p3

    .line 18
    if-nez p3, :cond_14

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    .line 23
    const-string v0, "In re-direct loop"

    .line 25
    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p3
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_1c} :catch_1c

    .line 29
    :catch_1c
    :cond_1c
    :goto_1c
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    .line 31
    invoke-interface {p3, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;->build(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 34
    move-result-object p3

    .line 35
    iput-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 37
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    move-result-object p3

    .line 41
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p3

    .line 45
    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4a

    .line 51
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_2c

    .line 75
    :cond_4a
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 77
    iget v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    .line 79
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 82
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 84
    iget v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    .line 86
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 89
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 95
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p3, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 101
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 103
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 108
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 111
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 113
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 116
    move-result-object p3

    .line 117
    iput-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 119
    iget-boolean p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isCancelled:Z

    .line 121
    if-eqz p3, :cond_7c

    .line 123
    const/4 p1, 0x0

    .line 124
    return-object p1

    .line 125
    :cond_7c
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 127
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 130
    move-result p3

    .line 131
    invoke-static {p3}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isHttpOk(I)Z

    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8f

    .line 137
    iget-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 139
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_8f
    invoke-static {p3}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isHttpRedirect(I)Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_b9

    .line 150
    iget-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 152
    const-string v0, "Location"

    .line 154
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p3

    .line 158
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_b1

    .line 164
    new-instance v0, Ljava/net/URL;

    .line 166
    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->cleanup()V

    .line 172
    add-int/2addr p2, v1

    .line 173
    invoke-direct {p0, v0, p2, p1, p4}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    .line 176
    move-result-object p1

    .line 177
    return-object p1

    .line 178
    :cond_b1
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    .line 180
    const-string p2, "Received empty or null redirect url"

    .line 182
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p1

    .line 186
    :cond_b9
    const/4 p1, -0x1

    .line 187
    if-ne p3, p1, :cond_c2

    .line 189
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    .line 191
    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    .line 194
    throw p1

    .line 195
    :cond_c2
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    .line 197
    iget-object p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 199
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    .line 206
    throw p1

    .line 207
    :cond_ce
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    .line 209
    const-string p2, "Too many (> 5) redirects!"

    .line 211
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    .line 214
    throw p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isCancelled:Z

    .line 4
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 18
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 3
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "Finished http url fetcher fetch in "

    .line 3
    const-string v0, "HttpUrlFetcher"

    .line 5
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x2

    .line 10
    :try_start_9
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 12
    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/GlideUrl;->toURL()Ljava/net/URL;

    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    iget-object v7, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 20
    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/GlideUrl;->getHeaders()Ljava/util/Map;

    .line 23
    move-result-object v7

    .line 24
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    .line 27
    move-result-object v4

    .line 28
    invoke-interface {p2, v4}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_2c
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2a

    .line 31
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_58

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    goto :goto_47

    .line 43
    :catchall_2a
    move-exception p2

    .line 44
    goto :goto_59

    .line 45
    :catch_2c
    move-exception v4

    .line 46
    const/4 v5, 0x3

    .line 47
    :try_start_2e
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_39

    .line 53
    const-string v5, "Failed to load data for url"

    .line 55
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_39
    invoke-interface {p2, v4}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_2a

    .line 61
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_58

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    :goto_47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_58
    return-void

    .line 90
    :goto_59
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_71

    .line 96
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 103
    move-result-wide v1

    .line 104
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_71
    throw p2
.end method
