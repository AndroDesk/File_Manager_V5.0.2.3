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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    return-void
.end method

.method private clearState()V
    .registers 2

    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    iput v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    return-void
.end method


# virtual methods
.method public onPasv()I
    .registers 4

    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected null proxyConnector in onPasv"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    return v1

    :cond_17
    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->pasvListen()Lorg/swiftp/ProxyDataSocketInfo;

    move-result-object v0

    if-nez v0, :cond_28

    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Null ProxyDataSocketInfo"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    return v1

    :cond_28
    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getRemotePublicPort()I

    move-result v1

    iput v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 4

    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    iput p2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    sget-object p1, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string p2, "ProxyDataSocketFactory client port settings stored"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTransfer()Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected null proxyConnector in onTransfer"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_d
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    if-nez v2, :cond_1c

    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    iget v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/ProxyConnector;->dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    return-object v0

    :cond_1c
    invoke-virtual {v0, v2}, Lorg/swiftp/ProxyConnector;->pasvAccept(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    return-object v0

    :cond_25
    sget-object v0, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "proxyConnector pasvAccept failed"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public reportTraffic(J)V
    .registers 4

    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    if-nez v0, :cond_e

    sget-object p1, Lorg/swiftp/ProxyDataSocketFactory;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t report traffic, null ProxyConnector"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_e
    invoke-virtual {v0, p1, p2}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    :goto_11
    return-void
.end method
