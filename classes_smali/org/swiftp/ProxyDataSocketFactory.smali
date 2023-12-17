.class Lorg/swiftp/ProxyDataSocketFactory;
.super Lorg/swiftp/DataSocketFactory;
.source "ProxyDataSocketFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProxyDataSocketFactory"


# instance fields
.field private clientAddress:Ljava/net/InetAddress;

.field private clientPort:I

.field private proxyConnector:Lorg/swiftp/ProxyConnector;

.field private proxyListenPort:I

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    .line 4
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 7
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 9
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 11
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    .line 16
    iput v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    .line 18
    return-void
.end method


# virtual methods
.method public onPasv()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 4
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_17

    .line 13
    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "Unexpected null proxyConnector in onPasv"

    .line 17
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 23
    return v1

    .line 24
    :cond_17
    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->pasvListen()Lorg/swiftp/ProxyDataSocketInfo;

    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_28

    .line 30
    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 32
    const-string v2, "Null ProxyDataSocketInfo"

    .line 34
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 40
    return v1

    .line 41
    :cond_28
    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getSocket()Ljava/net/Socket;

    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 47
    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getRemotePublicPort()I

    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    .line 53
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    iget v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    .line 58
    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 4
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 10
    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    .line 12
    iput p2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    .line 14
    sget-object p1, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 16
    const-string p2, "ProxyDataSocketFactory client port settings stored"

    .line 18
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public onTransfer()Ljava/net/Socket;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_d

    .line 6
    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 8
    const-string v2, "Unexpected null proxyConnector in onTransfer"

    .line 10
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-object v1

    .line 14
    :cond_d
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 16
    if-nez v2, :cond_1c

    .line 18
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    .line 20
    iget v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/swiftp/ProxyConnector;->dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 28
    return-object v0

    .line 29
    :cond_1c
    invoke-virtual {v0, v2}, Lorg/swiftp/ProxyConnector;->pasvAccept(Ljava/net/Socket;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_25

    .line 35
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 37
    return-object v0

    .line 38
    :cond_25
    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 40
    const-string v2, "proxyConnector pasvAccept failed"

    .line 42
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v1
.end method

.method public reportTraffic(J)V
    .registers 4

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    sget-object p1, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    .line 9
    const-string p2, "Can\'t report traffic, null ProxyConnector"

    .line 11
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {v0, p1, p2}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    .line 18
    :goto_11
    return-void
.end method
