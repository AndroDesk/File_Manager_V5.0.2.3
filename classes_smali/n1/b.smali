.class public final Ln1/b;
.super Ljava/lang/Object;
.source "KscHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ln1/b;->a:Z

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 12

    if-eqz p1, :cond_80

    if-eqz p3, :cond_78

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p2, v0, :cond_9

    return v1

    :cond_9
    instance-of p2, p1, Lorg/apache/http/NoHttpResponseException;

    const/4 v0, 0x1

    if-eqz p2, :cond_f

    return v0

    :cond_f
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_14

    return v1

    :cond_14
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_19

    return v1

    :cond_19
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_1e

    return v1

    :cond_1e
    const-string p2, "http.request_sent"

    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    const-string v2, "ksc.connect_start"

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "http.request"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/impl/client/RequestWrapper;

    const-string v4, "ksc.connect_redirector"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln1/f;

    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_48

    move p2, v0

    goto :goto_49

    :cond_48
    move p2, v1

    :goto_49
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_52

    :cond_50
    const-wide/16 v4, 0x0

    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    if-eqz p2, :cond_70

    iget-boolean p2, p0, Ln1/b;->a:Z

    if-eqz p2, :cond_62

    invoke-virtual {v3}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result p2

    if-nez p2, :cond_70

    :cond_62
    instance-of p1, p1, Ljava/net/SocketException;

    if-eqz p1, :cond_6f

    sub-long/2addr v6, v4

    const/16 p1, 0x2710

    int-to-long p1, p1

    cmp-long p1, v6, p1

    if-gtz p1, :cond_6f

    goto :goto_70

    :cond_6f
    return v1

    :cond_70
    :goto_70
    if-eqz p3, :cond_77

    invoke-interface {p3}, Ln1/f;->a()Z

    move-result p1

    return p1

    :cond_77
    return v0

    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exception parameter may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
