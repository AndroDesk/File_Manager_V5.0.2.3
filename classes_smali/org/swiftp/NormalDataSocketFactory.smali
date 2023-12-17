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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    .line 4
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 7
    return-void
.end method

.method private clearState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 9
    iput-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 14
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 16
    const-string v1, "NormalDataSocketFactory state cleared"

    .line 18
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onPasv()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    new-instance v1, Ljava/net/ServerSocket;

    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, v0, v2}, Ljava/net/ServerSocket;-><init>(II)V

    .line 11
    iput-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 13
    sget-object v1, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "Data socket pasv() listen successful"

    .line 17
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 22
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 25
    move-result v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 26
    return v0

    .line 27
    :catch_1a
    sget-object v1, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 29
    const-string v2, "Data socket creation error"

    .line 31
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 37
    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 4
    iput-object p1, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 6
    iput p2, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public onTransfer()Ljava/net/Socket;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_55

    .line 6
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 8
    if-eqz v0, :cond_4a

    .line 10
    iget v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_4a

    .line 15
    :cond_e
    :try_start_e
    new-instance v0, Ljava/net/Socket;

    .line 17
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 19
    iget v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 21
    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_28

    .line 24
    const/16 v2, 0x7530

    .line 26
    :try_start_19
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 29
    return-object v0

    .line 30
    :catch_1d
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 32
    const-string v2, "Couldn\'t set SO_TIMEOUT"

    .line 34
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 40
    return-object v1

    .line 41
    :catch_28
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 43
    const-string v2, "Couldn\'t open PORT data socket to: "

    .line 45
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, ":"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 74
    return-object v1

    .line 75
    :cond_4a
    :goto_4a
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 77
    const-string v2, "PORT mode but not initialized correctly"

    .line 79
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 85
    return-object v1

    .line 86
    :cond_55
    :try_start_55
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 89
    move-result-object v0

    .line 90
    sget-object v2, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 92
    const-string v3, "onTransfer pasv accept successful"

    .line 94
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_62

    .line 97
    move-object v1, v0

    .line 98
    goto :goto_69

    .line 99
    :catch_62
    sget-object v0, Lorg/swiftp/NormalDataSocketFactory;->TAG:Ljava/lang/String;

    .line 101
    const-string v2, "Exception accepting PASV socket"

    .line 103
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_69
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 109
    return-object v1
.end method

.method public reportTraffic(J)V
    .registers 3

    return-void
.end method
