.class public Lorg/swiftp/NormalDataSocketFactory;
.super Lorg/swiftp/DataSocketFactory;
.source "NormalDataSocketFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalDataSocketFactory"


# instance fields
.field private remoteAddr:Ljava/net/InetAddress;

.field private remotePort:I

.field private server:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return-void
.end method

.method private clearState()V
    .registers 3

    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    iput-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v1, "NormalDataSocketFactory state cleared"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPasv()I
    .registers 4

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    sget-object v1, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Data socket pasv() listen successful"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    sget-object v1, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Data socket creation error"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 3

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    iput-object p1, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    iput p2, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    const/4 p1, 0x1

    return p1
.end method

.method public onTransfer()Ljava/net/Socket;
    .registers 5

    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_55

    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_4a

    iget v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    if-nez v0, :cond_e

    goto :goto_4a

    :cond_e
    :try_start_e
    new-instance v0, Ljava/net/Socket;

    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    iget v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_28

    const/16 v2, 0x7530

    :try_start_19
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set SO_TIMEOUT"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return-object v1

    :catch_28
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t open PORT data socket to: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return-object v1

    :cond_4a
    :goto_4a
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "PORT mode but not initialized correctly"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return-object v1

    :cond_55
    :try_start_55
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-object v2, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v3, "onTransfer pasv accept successful"

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_62

    move-object v1, v0

    goto :goto_69

    :catch_62
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    const-string v2, "Exception accepting PASV socket"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    return-object v1
.end method

.method public reportTraffic(J)V
    .registers 3

    return-void
.end method
