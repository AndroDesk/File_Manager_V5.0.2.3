.class public final Ln1/b;
.super Ljava/lang/Object;
.source "KscHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Ln1/b;->a:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 12

    .line 1
    if-eqz p1, :cond_80

    .line 3
    if-eqz p3, :cond_78

    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x0

    .line 7
    if-le p2, v0, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    instance-of p2, p1, Lorg/apache/http/NoHttpResponseException;

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p2, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    .line 18
    if-eqz p2, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    instance-of p2, p1, Ljava/net/UnknownHostException;

    .line 23
    if-eqz p2, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 28
    if-eqz p2, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    const-string p2, "http.request_sent"

    .line 33
    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/Boolean;

    .line 39
    const-string v2, "ksc.connect_start"

    .line 41
    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Long;

    .line 47
    const-string v3, "http.request"

    .line 49
    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lorg/apache/http/impl/client/RequestWrapper;

    .line 55
    const-string v4, "ksc.connect_redirector"

    .line 57
    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Ln1/f;

    .line 63
    if-eqz p2, :cond_48

    .line 65
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_48

    .line 71
    move p2, v0

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move p2, v1

    .line 74
    :goto_49
    if-eqz v2, :cond_50

    .line 76
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 79
    move-result-wide v4

    .line 80
    goto :goto_52

    .line 81
    :cond_50
    const-wide/16 v4, 0x0

    .line 83
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    move-result-wide v6

    .line 87
    if-eqz p2, :cond_70

    .line 89
    iget-boolean p2, p0, Ln1/b;->a:Z

    .line 91
    if-eqz p2, :cond_62

    .line 93
    invoke-virtual {v3}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_70

    .line 99
    :cond_62
    instance-of p1, p1, Ljava/net/SocketException;

    .line 101
    if-eqz p1, :cond_6f

    .line 103
    sub-long/2addr v6, v4

    .line 104
    const/16 p1, 0x2710

    .line 106
    int-to-long p1, p1

    .line 107
    cmp-long p1, v6, p1

    .line 109
    if-gtz p1, :cond_6f

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    return v1

    .line 113
    :cond_70
    :goto_70
    if-eqz p3, :cond_77

    .line 115
    invoke-interface {p3}, Ln1/f;->a()Z

    .line 118
    move-result p1

    .line 119
    return p1

    .line 120
    :cond_77
    return v0

    .line 121
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 123
    const-string p2, "HTTP context may not be null"

    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p1

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string p2, "Exception parameter may not be null"

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1
.end method
