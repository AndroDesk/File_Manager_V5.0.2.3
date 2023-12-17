.class public final Ln1/e;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final c:Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

.field public static final d:Ln1/e;


# instance fields
.field public final a:Ljavax/net/ssl/SSLSocketFactory;

.field public b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    .line 3
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 6
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    .line 8
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    .line 11
    sput-object v0, Ln1/e;->c:Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    .line 13
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    .line 15
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 18
    new-instance v0, Ln1/e;

    .line 20
    invoke-direct {v0}, Ln1/e;-><init>()V

    .line 23
    sput-object v0, Ln1/e;->d:Ln1/e;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ln1/e;->c:Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    .line 6
    iput-object v0, p0, Ln1/e;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 8
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ln1/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 14
    return-void
.end method

.method public static a()Ln1/e;
    .registers 1

    .line 1
    sget-object v0, Ln1/e;->d:Ln1/e;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 8

    .line 1
    if-eqz p2, :cond_42

    .line 3
    if-eqz p6, :cond_3a

    .line 5
    if-eqz p1, :cond_7

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p0}, Ln1/e;->createSocket()Ljava/net/Socket;

    .line 11
    move-result-object p1

    .line 12
    :goto_b
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 14
    if-nez p4, :cond_11

    .line 16
    if-lez p5, :cond_1c

    .line 18
    :cond_11
    if-gez p5, :cond_14

    .line 20
    const/4 p5, 0x0

    .line 21
    :cond_14
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 23
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 26
    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 29
    :cond_1c
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    .line 32
    move-result p4

    .line 33
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    .line 36
    move-result p5

    .line 37
    new-instance p6, Ljava/net/InetSocketAddress;

    .line 39
    invoke-direct {p6, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p1, p6, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    invoke-virtual {p1, p5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 48
    :try_start_2f
    iget-object p3, p0, Ln1/e;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 50
    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    .line 53
    return-object p1

    .line 54
    :catch_35
    move-exception p2

    .line 55
    :try_start_36
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_39

    .line 58
    :catch_39
    throw p2

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string p2, "Parameters may not be null."

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    const-string p2, "Target host may not be null."

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method public final createSocket()Ljava/net/Socket;
    .registers 2

    .line 1
    iget-object v0, p0, Ln1/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .line 2
    iget-object v0, p0, Ln1/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 3
    iget-object p3, p0, Ln1/e;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    .line 5
    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Socket is closed."

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v0, "Socket not created by this factory."

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string v0, "Socket may not be null."

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method
