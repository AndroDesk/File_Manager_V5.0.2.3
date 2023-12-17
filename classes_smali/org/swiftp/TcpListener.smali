.class public Lorg/swiftp/TcpListener;
.super Ljava/lang/Thread;
.source "TcpListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

.field private listenSocket:Ljava/net/ServerSocket;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/TcpListener;

    .line 3
    const-string v0, "TcpListener"

    .line 5
    sput-object v0, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    .line 6
    iput-object p2, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 8
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    return-void
.end method

.method public run()V
    .registers 5

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    .line 3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    .line 9
    const-string v2, "New connection, spawned thread"

    .line 11
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lorg/swiftp/SessionThread;

    .line 16
    new-instance v2, Lorg/swiftp/NormalDataSocketFactory;

    .line 18
    invoke-direct {v2}, Lorg/swiftp/NormalDataSocketFactory;-><init>()V

    .line 21
    sget-object v3, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    .line 23
    invoke-direct {v1, v0, v2, v3}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 29
    iget-object v0, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 34
    goto :goto_0

    .line 35
    :catch_22
    sget-object v0, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    .line 37
    const-string v1, "Exception in TcpListener"

    .line 39
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
