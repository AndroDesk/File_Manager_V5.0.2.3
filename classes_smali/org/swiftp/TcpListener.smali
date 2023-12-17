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

    const-class v0, Lorg/swiftp/TcpListener;

    const-string v0, "TcpListener"

    sput-object v0, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    iput-object p2, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    iget-object v0, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public run()V
    .registers 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-object v1, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    const-string v2, "New connection, spawned thread"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/swiftp/SessionThread;

    new-instance v2, Lorg/swiftp/NormalDataSocketFactory;

    invoke-direct {v2}, Lorg/swiftp/NormalDataSocketFactory;-><init>()V

    sget-object v3, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    invoke-direct {v1, v0, v2, v3}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_0

    :catch_22
    sget-object v0, Lorg/swiftp/TcpListener;->TAG:Ljava/lang/String;

    const-string v1, "Exception in TcpListener"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
