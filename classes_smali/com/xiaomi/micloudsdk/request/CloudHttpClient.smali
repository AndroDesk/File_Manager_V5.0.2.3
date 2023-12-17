.class public Lcom/xiaomi/micloudsdk/request/CloudHttpClient;
.super Ljava/lang/Object;
.source "CloudHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private mProxy:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    .line 6
    return-void
.end method

.method private addHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Accept-Language"

    .line 11
    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static initClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 3
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 6
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getUserAgent()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 17
    return-object v0
.end method

.method public static newInstance()Lcom/xiaomi/micloudsdk/request/CloudHttpClient;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->initClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 16
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4

    .line 5
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 4

    .line 7
    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 8
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {p3, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 4

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->addHeader(Lorg/apache/http/HttpRequest;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    .line 3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->mProxy:Lorg/apache/http/client/HttpClient;

    .line 3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
