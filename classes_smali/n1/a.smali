.class public final Ln1/a;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "KscHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/a$c;,
        Ln1/a$b;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AndroidHttpClient created and never closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Ln1/a;->c:Z

    .line 9
    iput-boolean p1, p0, Ln1/a;->a:Z

    .line 10
    iput-boolean p1, p0, Ln1/a;->b:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AndroidHttpClient created and never closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ln1/a;->c:Z

    .line 4
    iput-boolean p3, p0, Ln1/a;->a:Z

    .line 5
    iput-boolean p4, p0, Ln1/a;->b:Z

    return-void
.end method

.method public static a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "curl "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v2, :cond_41

    .line 15
    aget-object v4, v1, v3

    .line 17
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    const-string v6, "Authorization"

    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_3e

    .line 29
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    const-string v6, "Cookie"

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_29

    .line 41
    goto :goto_3e

    .line 42
    :cond_29
    const-string v5, "--header \""

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, "\" "

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_c

    .line 66
    :cond_41
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 69
    move-result-object v1

    .line 70
    instance-of v2, p0, Lorg/apache/http/impl/client/RequestWrapper;

    .line 72
    if-eqz v2, :cond_5a

    .line 74
    move-object v2, p0

    .line 75
    check-cast v2, Lorg/apache/http/impl/client/RequestWrapper;

    .line 77
    invoke-virtual {v2}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    .line 80
    move-result-object v2

    .line 81
    instance-of v3, v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 83
    if-eqz v3, :cond_5a

    .line 85
    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 87
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 90
    move-result-object v1

    .line 91
    :cond_5a
    const-string v2, "\""

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    instance-of v1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 104
    if-eqz v1, :cond_9e

    .line 106
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 108
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_9e

    .line 114
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_9e

    .line 120
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 123
    move-result-wide v3

    .line 124
    const-wide/16 v5, 0x400

    .line 126
    cmp-long v1, v3, v5

    .line 128
    if-gez v1, :cond_99

    .line 130
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 132
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    invoke-interface {p0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    const-string v1, " --data-ascii \""

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    goto :goto_9e

    .line 154
    :cond_99
    const-string p0, " [TOO MUCH DATA TO INCLUDE]"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_9e
    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    return-object p0
.end method

.method public static b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .line 1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 3
    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 6
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    .line 8
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 11
    move-result-object v2

    .line 12
    const-string v3, "http"

    .line 14
    const/16 v4, 0x50

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 22
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    .line 24
    invoke-static {}, Ln1/e;->a()Ln1/e;

    .line 27
    move-result-object v2

    .line 28
    const-string v3, "https"

    .line 30
    const/16 v4, 0x1bb

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 35
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 38
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 40
    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 43
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .registers 7

    .line 1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    .line 3
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 10
    const/16 v2, 0x3a98

    .line 12
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 15
    const/16 v2, 0x7530

    .line 17
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 20
    const/16 v2, 0x2000

    .line 22
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 25
    const-wide/16 v2, 0x7530

    .line 27
    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 30
    const/16 v2, 0x1e

    .line 32
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 35
    new-instance v2, Ln1/a$a;

    .line 37
    invoke-direct {v2}, Ln1/a$a;-><init>()V

    .line 40
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 47
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 50
    const-string v3, "UTF-8"

    .line 52
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 55
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_bf

    .line 64
    sget-object p0, Ln1/a;->d:Ljava/lang/String;

    .line 66
    if-nez p0, :cond_bd

    .line 68
    new-array p0, v2, [Ljava/lang/Object;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 80
    move-result v4

    .line 81
    if-lez v4, :cond_56

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    const-string v3, "1.0"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_5b
    const-string v3, "; "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 99
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_82

    .line 105
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_87

    .line 118
    const-string v5, "-"

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_87

    .line 131
    :cond_82
    const-string v4, "en"

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_87
    :goto_87
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 138
    const-string v5, "REL"

    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_9f

    .line 146
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 148
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 151
    move-result v5

    .line 152
    if-lez v5, :cond_9f

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_9f
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 165
    move-result v4

    .line 166
    if-lez v4, :cond_af

    .line 168
    const-string v4, " Build/"

    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    aput-object v2, p0, v1

    .line 182
    const-string v1, "KscClient/1.0 (Linux; U; Android %s)"

    .line 184
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 188
    sput-object p0, Ln1/a;->d:Ljava/lang/String;

    .line 190
    :cond_bd
    sget-object p0, Ln1/a;->d:Ljava/lang/String;

    .line 192
    :cond_bf
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public final createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 2

    .line 1
    iget-boolean v0, p0, Ln1/a;->a:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    .line 7
    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    new-instance v0, Lorg/apache/http/impl/NoConnectionReuseStrategy;

    .line 13
    invoke-direct {v0}, Lorg/apache/http/impl/NoConnectionReuseStrategy;-><init>()V

    .line 16
    :goto_f
    return-object v0
.end method

.method public final createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ln1/a;->c:Z

    .line 3
    if-eqz v0, :cond_32

    .line 5
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 7
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 10
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    .line 12
    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 18
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    .line 20
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 26
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    .line 28
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    .line 31
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 34
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    .line 36
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 42
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    .line 44
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 54
    move-result-object v0

    .line 55
    :goto_36
    new-instance v1, Ln1/a$c;

    .line 57
    invoke-direct {v1, p0}, Ln1/a$c;-><init>(Ln1/a;)V

    .line 60
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 63
    new-instance v1, Ln1/a$b;

    .line 65
    invoke-direct {v1, p0}, Ln1/a$b;-><init>(Ln1/a;)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 71
    return-object v0
.end method

.method public final createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .registers 3

    .line 1
    new-instance v0, Ln1/b;

    .line 3
    iget-boolean v1, p0, Ln1/a;->b:Z

    .line 5
    invoke-direct {v0, v1}, Ln1/b;-><init>(Z)V

    .line 8
    return-object v0
.end method

.method public final createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 3

    .line 1
    new-instance v0, Ln1/c;

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ln1/c;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 14
    return-object v0
.end method

.method public final createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .registers 2

    .line 1
    new-instance v0, Ln1/d;

    .line 3
    invoke-direct {v0}, Ln1/d;-><init>()V

    .line 6
    return-object v0
.end method

.method public final finalize()V
    .registers 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    return-void
.end method
