.class Lmiui/cloud/net/XHttpClient$HttpRequest;
.super Ljava/lang/Object;
.source "XHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpRequest"
.end annotation


# instance fields
.field private mCallback:Lmiui/cloud/common/XCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCtx:Ljava/lang/Object;

.field private mData:Ljava/lang/Object;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

.field private mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

.field private mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

.field private mUrl:Ljava/lang/String;

.field public final synthetic this$0:Lmiui/cloud/net/XHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-direct {p1}, Lmiui/cloud/net/XHttpClient$HttpResponse;-><init>()V

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    iput-object p3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    iput-object p5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    iput-object p6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iput-object p7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    iput-object p8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    iput-object p9, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    return-void
.end method

.method private prepareConn(Ljava/net/URLConnection;)V
    .registers 4

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object v0

    invoke-interface {v0}, Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_2e
    return-void
.end method


# virtual methods
.method public doHttpRequest()V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_7
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    const-string v6, "[TEST]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const/16 v6, 0x400

    iput v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const-string v6, "TEST OK"

    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_23} :catch_14e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7 .. :try_end_23} :catch_116
    .catchall {:try_start_7 .. :try_end_23} :catchall_113

    const-wide/16 v5, 0xc8

    :try_start_25
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_ef
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_28} :catch_14e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_25 .. :try_end_28} :catch_116
    .catchall {:try_start_25 .. :try_end_28} :catchall_113

    goto/16 :goto_ef

    :cond_2a
    :try_start_2a
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_37
    .catch Ljava/net/MalformedURLException; {:try_start_2a .. :try_end_37} :catch_14e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_2a .. :try_end_37} :catch_116
    .catchall {:try_start_2a .. :try_end_37} :catchall_113

    :try_start_37
    invoke-direct {p0, v5}, Lmiui/cloud/net/XHttpClient$HttpRequest;->prepareConn(Ljava/net/URLConnection;)V

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    invoke-direct {p0, v5, v6}, Lmiui/cloud/net/XHttpClient$HttpRequest;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-string v6, "Connection"

    const-string v7, "close"

    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    if-eqz v6, :cond_84

    invoke-virtual {v5, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataLength(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_60

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_63

    :cond_60
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :goto_63
    const-string v6, "Content-Type"

    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_74} :catch_10e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_74} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_37 .. :try_end_74} :catch_104
    .catchall {:try_start_37 .. :try_end_74} :catchall_100

    :try_start_74
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7f

    :try_start_7b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_84

    :catchall_7f
    move-exception v0

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_84
    :goto_84
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v6

    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_b2

    goto :goto_b7

    :cond_b2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    :goto_b7
    iput-object v0, v8, Lmiui/cloud/net/XHttpClient$HttpResponse;->date:Ljava/util/Date;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_ee

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_c5
    .catch Ljava/net/MalformedURLException; {:try_start_7b .. :try_end_c5} :catch_10e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_c5} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7b .. :try_end_c5} :catch_104
    .catchall {:try_start_7b .. :try_end_c5} :catchall_100

    :try_start_c5
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    if-nez v6, :cond_d9

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v6}, Lmiui/cloud/net/XHttpClient;->access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    move-result-object v6

    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v7, v7, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    invoke-virtual {v6, v7, v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getReceiveDataProcessor(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    move-result-object v6

    iput-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    :cond_d9
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    iget-object v8, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v7, v8, v0}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_e9

    :try_start_e5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_ee

    :catchall_e9
    move-exception v6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_ee
    .catch Ljava/net/MalformedURLException; {:try_start_e5 .. :try_end_ee} :catch_10e
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ee} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_e5 .. :try_end_ee} :catch_104
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_100

    :cond_ee
    :goto_ee
    move-object v0, v5

    :catch_ef
    :goto_ef
    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f4
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_174

    goto/16 :goto_169

    :catchall_100
    move-exception v1

    move-object v0, v5

    goto/16 :goto_1ac

    :catch_104
    move-exception v0

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_117

    :catch_109
    move-exception v0

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_133

    :catch_10e
    move-exception v0

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_14f

    :catchall_113
    move-exception v1

    goto/16 :goto_1ac

    :catch_116
    move-exception v5

    :goto_117
    :try_start_117
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_122
    .catchall {:try_start_117 .. :try_end_122} :catchall_113

    if-eqz v0, :cond_127

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_127
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_174

    goto :goto_169

    :catch_132
    move-exception v5

    :goto_133
    :try_start_133
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_13e
    .catchall {:try_start_133 .. :try_end_13e} :catchall_113

    if-eqz v0, :cond_143

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_143
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_174

    goto :goto_169

    :catch_14e
    move-exception v5

    :goto_14f
    :try_start_14f
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_15a
    .catchall {:try_start_14f .. :try_end_15a} :catchall_113

    if-eqz v0, :cond_15f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15f
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_174

    :goto_169
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, v1}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    :cond_174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v2

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    if-nez v0, :cond_197

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v10

    new-instance v11, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-wide v6, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    iget v8, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const/4 v9, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    invoke-virtual {v10, v11}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    goto :goto_1ab

    :cond_197
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v8

    new-instance v9, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v6, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    invoke-virtual {v8, v9}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    :goto_1ab
    return-void

    :goto_1ac
    if-eqz v0, :cond_1b1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    iput-object v2, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    if-eqz v0, :cond_1c6

    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, v2}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    :cond_1c6
    throw v1
.end method

.method public run()V
    .registers 2

    invoke-virtual {p0}, Lmiui/cloud/net/XHttpClient$HttpRequest;->doHttpRequest()V

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0, p0}, Lmiui/cloud/net/XHttpClient;->access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method
