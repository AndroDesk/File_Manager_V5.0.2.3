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

    .line 1
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 8
    invoke-direct {p1}, Lmiui/cloud/net/XHttpClient$HttpResponse;-><init>()V

    .line 11
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 13
    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    .line 19
    iput-object p5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 21
    iput-object p6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 23
    iput-object p7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 25
    iput-object p8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 27
    iput-object p9, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private prepareConn(Ljava/net/URLConnection;)V
    .registers 4

    .line 1
    const/16 v0, 0x7530

    .line 3
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 9
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 11
    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_25

    .line 17
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 19
    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;->getUserAgent()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_25

    .line 33
    const-string v1, "User-Agent"

    .line 35
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
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

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2e

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/List;

    .line 30
    const/4 v3, 0x0

    .line 31
    new-array v3, v3, [Ljava/lang/String;

    .line 33
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    const-string v3, ", "

    .line 39
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_b

    .line 47
    :cond_2e
    return-void
.end method


# virtual methods
.method public doHttpRequest()V
    .registers 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    :try_start_7
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 10
    const-string v6, "[TEST]"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_2a

    .line 18
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 20
    const/16 v6, 0x400

    .line 22
    iput v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 24
    const-string v6, "TEST OK"

    .line 26
    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    .line 28
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    .line 30
    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 32
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 34
    iput-object v6, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_23} :catch_14e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7 .. :try_end_23} :catch_116
    .catchall {:try_start_7 .. :try_end_23} :catchall_113

    .line 36
    const-wide/16 v5, 0xc8

    .line 38
    :try_start_25
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_ef
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_28} :catch_14e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_25 .. :try_end_28} :catch_116
    .catchall {:try_start_25 .. :try_end_28} :catchall_113

    .line 41
    goto/16 :goto_ef

    .line 43
    :cond_2a
    :try_start_2a
    new-instance v5, Ljava/net/URL;

    .line 45
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 47
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_37
    .catch Ljava/net/MalformedURLException; {:try_start_2a .. :try_end_37} :catch_14e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_132
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_2a .. :try_end_37} :catch_116
    .catchall {:try_start_2a .. :try_end_37} :catchall_113

    .line 56
    :try_start_37
    invoke-direct {p0, v5}, Lmiui/cloud/net/XHttpClient$HttpRequest;->prepareConn(Ljava/net/URLConnection;)V

    .line 59
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mMethod:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mHeader:Ljava/util/Map;

    .line 66
    invoke-direct {p0, v5, v6}, Lmiui/cloud/net/XHttpClient$HttpRequest;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 69
    const-string v6, "Connection"

    .line 71
    const-string v7, "close"

    .line 73
    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 78
    if-eqz v6, :cond_84

    .line 80
    invoke-virtual {v5, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 83
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 85
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 87
    invoke-interface {v6, v7}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataLength(Ljava/lang/Object;)I

    .line 90
    move-result v6

    .line 91
    if-gez v6, :cond_60

    .line 93
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 100
    :goto_63
    const-string v6, "Content-Type"

    .line 102
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 104
    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 106
    invoke-interface {v7, v8}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 116
    move-result-object v6
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_74} :catch_10e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_74} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_37 .. :try_end_74} :catch_104
    .catchall {:try_start_37 .. :try_end_74} :catchall_100

    .line 117
    :try_start_74
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mSendDataProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 119
    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mData:Ljava/lang/Object;

    .line 121
    invoke-interface {v7, v8, v6}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7f

    .line 124
    :try_start_7b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 127
    goto :goto_84

    .line 128
    :catchall_7f
    move-exception v0

    .line 129
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 132
    throw v0

    .line 133
    :cond_84
    :goto_84
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 135
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 138
    move-result v7

    .line 139
    iput v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 141
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 143
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    .line 149
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 151
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 154
    move-result v7

    .line 155
    int-to-long v7, v7

    .line 156
    iput-wide v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    .line 158
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 160
    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 163
    move-result-object v7

    .line 164
    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 166
    invoke-virtual {v5}, Ljava/net/URLConnection;->getDate()J

    .line 169
    move-result-wide v6

    .line 170
    iget-object v8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 172
    const-wide/16 v9, 0x0

    .line 174
    cmp-long v9, v6, v9

    .line 176
    if-nez v9, :cond_b2

    .line 178
    goto :goto_b7

    .line 179
    :cond_b2
    new-instance v0, Ljava/util/Date;

    .line 181
    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 184
    :goto_b7
    iput-object v0, v8, Lmiui/cloud/net/XHttpClient$HttpResponse;->date:Ljava/util/Date;

    .line 186
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 188
    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 190
    const/16 v6, 0xc8

    .line 192
    if-ne v0, v6, :cond_ee

    .line 194
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 197
    move-result-object v0
    :try_end_c5
    .catch Ljava/net/MalformedURLException; {:try_start_7b .. :try_end_c5} :catch_10e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_c5} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7b .. :try_end_c5} :catch_104
    .catchall {:try_start_7b .. :try_end_c5} :catchall_100

    .line 198
    :try_start_c5
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 200
    if-nez v6, :cond_d9

    .line 202
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 204
    invoke-static {v6}, Lmiui/cloud/net/XHttpClient;->access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 207
    move-result-object v6

    .line 208
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 210
    iget-object v7, v7, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 212
    invoke-virtual {v6, v7, v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getReceiveDataProcessor(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 215
    move-result-object v6

    .line 216
    iput-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 218
    :cond_d9
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 220
    iget-object v7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mReceiveDataProcessor:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 222
    iget-object v8, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 224
    invoke-interface {v7, v8, v0}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 227
    move-result-object v7

    .line 228
    iput-object v7, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_e9

    .line 230
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 233
    goto :goto_ee

    .line 234
    :catchall_e9
    move-exception v6

    .line 235
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 238
    throw v6
    :try_end_ee
    .catch Ljava/net/MalformedURLException; {:try_start_e5 .. :try_end_ee} :catch_10e
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ee} :catch_109
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_e5 .. :try_end_ee} :catch_104
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_100

    .line 239
    :cond_ee
    :goto_ee
    move-object v0, v5

    .line 240
    :catch_ef
    :goto_ef
    if-eqz v0, :cond_f4

    .line 242
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    :cond_f4
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 247
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 249
    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 253
    if-eqz v0, :cond_174

    .line 255
    goto/16 :goto_169

    .line 257
    :catchall_100
    move-exception v1

    .line 258
    move-object v0, v5

    .line 259
    goto/16 :goto_1ac

    .line 261
    :catch_104
    move-exception v0

    .line 262
    move-object v12, v5

    .line 263
    move-object v5, v0

    .line 264
    move-object v0, v12

    .line 265
    goto :goto_117

    .line 266
    :catch_109
    move-exception v0

    .line 267
    move-object v12, v5

    .line 268
    move-object v5, v0

    .line 269
    move-object v0, v12

    .line 270
    goto :goto_133

    .line 271
    :catch_10e
    move-exception v0

    .line 272
    move-object v12, v5

    .line 273
    move-object v5, v0

    .line 274
    move-object v0, v12

    .line 275
    goto :goto_14f

    .line 276
    :catchall_113
    move-exception v1

    .line 277
    goto/16 :goto_1ac

    .line 279
    :catch_116
    move-exception v5

    .line 280
    :goto_117
    :try_start_117
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 282
    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 284
    new-array v4, v4, [Ljava/lang/Object;

    .line 286
    aput-object v5, v4, v1

    .line 288
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_122
    .catchall {:try_start_117 .. :try_end_122} :catchall_113

    .line 291
    if-eqz v0, :cond_127

    .line 293
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 296
    :cond_127
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 298
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 300
    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 304
    if-eqz v0, :cond_174

    .line 306
    goto :goto_169

    .line 307
    :catch_132
    move-exception v5

    .line 308
    :goto_133
    :try_start_133
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 310
    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 312
    new-array v4, v4, [Ljava/lang/Object;

    .line 314
    aput-object v5, v4, v1

    .line 316
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_13e
    .catchall {:try_start_133 .. :try_end_13e} :catchall_113

    .line 319
    if-eqz v0, :cond_143

    .line 321
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 324
    :cond_143
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 326
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 328
    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 332
    if-eqz v0, :cond_174

    .line 334
    goto :goto_169

    .line 335
    :catch_14e
    move-exception v5

    .line 336
    :goto_14f
    :try_start_14f
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 338
    iput-object v5, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 340
    new-array v4, v4, [Ljava/lang/Object;

    .line 342
    aput-object v5, v4, v1

    .line 344
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_15a
    .catchall {:try_start_14f .. :try_end_15a} :catchall_113

    .line 347
    if-eqz v0, :cond_15f

    .line 349
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 352
    :cond_15f
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 354
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 356
    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 360
    if-eqz v0, :cond_174

    .line 362
    :goto_169
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    .line 368
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 370
    invoke-interface {v0, v1}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    .line 373
    :cond_174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    move-result-wide v0

    .line 377
    sub-long v4, v0, v2

    .line 379
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 381
    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 383
    if-nez v0, :cond_197

    .line 385
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 388
    move-result-object v10

    .line 389
    new-instance v11, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    .line 391
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 395
    iget-wide v6, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->contentLength:J

    .line 397
    iget v8, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 399
    const/4 v9, 0x0

    .line 400
    move-object v0, v11

    .line 401
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    .line 404
    invoke-virtual {v10, v11}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    .line 407
    goto :goto_1ab

    .line 408
    :cond_197
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 411
    move-result-object v8

    .line 412
    new-instance v9, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    .line 414
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mUrl:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 418
    iget-object v6, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 420
    const/4 v7, 0x0

    .line 421
    move-object v0, v9

    .line 422
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    .line 425
    invoke-virtual {v8, v9}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    .line 428
    :goto_1ab
    return-void

    .line 429
    :goto_1ac
    if-eqz v0, :cond_1b1

    .line 431
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 434
    :cond_1b1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 436
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCtx:Ljava/lang/Object;

    .line 438
    iput-object v2, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->ctx:Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mCallback:Lmiui/cloud/common/XCallback;

    .line 442
    if-eqz v0, :cond_1c6

    .line 444
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    .line 450
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->mResponse:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 452
    invoke-interface {v0, v2}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    .line 455
    :cond_1c6
    throw v1
.end method

.method public run()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiui/cloud/net/XHttpClient$HttpRequest;->doHttpRequest()V

    .line 4
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->this$0:Lmiui/cloud/net/XHttpClient;

    .line 6
    invoke-static {v0, p0}, Lmiui/cloud/net/XHttpClient;->access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    .line 9
    return-void
.end method
