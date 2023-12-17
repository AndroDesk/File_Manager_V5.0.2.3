.class public Lorg/swiftp/SessionThread;
.super Ljava/lang/Thread;
.source "SessionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/SessionThread$Source;
    }
.end annotation


# static fields
.field private static MAX_AUTH_FAILS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public account:Lorg/swiftp/Account;

.field private authFails:I

.field private authenticated:Z

.field private binaryMode:Z

.field public buffer:Ljava/nio/ByteBuffer;

.field private cmdSocket:Ljava/net/Socket;

.field private dataOutputStream:Ljava/io/OutputStream;

.field private dataSocket:Ljava/net/Socket;

.field private dataSocketFactory:Lorg/swiftp/DataSocketFactory;

.field public encoding:Ljava/lang/String;

.field private renameFrom:Ljava/io/File;

.field private sendWelcomeBanner:Z

.field private source:Lorg/swiftp/SessionThread$Source;

.field private workingDir:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/swiftp/SessionThread;

    const-string v0, "SessionThread"

    sput-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lorg/swiftp/Defaults;->getInputBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->buffer:Ljava/nio/ByteBuffer;

    new-instance v0, Lorg/swiftp/Account;

    invoke-direct {v0}, Lorg/swiftp/Account;-><init>()V

    iput-object v0, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    sget-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_charset"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    iput-object p3, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    iput-object p2, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    sget-object p1, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    if-ne p3, p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    return-void
.end method

.method private quit()V
    .registers 3

    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "SessionThread told to quit"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    return-void
.end method

.method private writeBytes([B)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget v2, Lorg/swiftp/Defaults;->dataChunkSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_25

    :catch_1b
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Exception writing socket"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    :goto_25
    return-void
.end method


# virtual methods
.method public authAttempt(Z)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "Authentication complete"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    goto :goto_4a

    :cond_d
    iget-object p1, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    sget-object v1, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    if-ne p1, v1, :cond_17

    invoke-direct {p0}, Lorg/swiftp/SessionThread;->quit()V

    goto :goto_3a

    :cond_17
    iget p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Auth failed: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/swiftp/SessionThread;->authFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    iget p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    sget v0, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    if-le p1, v0, :cond_4a

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Too many auth fails, quitting session"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/SessionThread;->quit()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public closeDataSocket()V
    .registers 3

    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "Closing data socket"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    return-void
.end method

.method public closeSocket()V
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public getAccount()Lorg/swiftp/Account;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    return-object v0
.end method

.method public getDataSocketPasvIp()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getRenameFrom()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getWorkingDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    return v0
.end method

.method public isBinaryMode()Z
    .registers 2

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    return v0
.end method

.method public onPasv()I
    .registers 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v0}, Lorg/swiftp/DataSocketFactory;->onPasv()I

    move-result v0

    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 4

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v0, p1, p2}, Lorg/swiftp/DataSocketFactory;->onPort(Ljava/net/InetAddress;I)Z

    move-result p1

    return p1
.end method

.method public receiveFromDataSocket([B)I
    .registers 5

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    const/4 v1, -0x2

    if-nez v0, :cond_d

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t receive from null dataSocket"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t receive from unconnected socket"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    const/4 v0, 0x0

    :try_start_1c
    iget-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_22
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_35

    if-nez v2, :cond_2a

    goto :goto_22

    :cond_2a
    const/4 p1, -0x1

    if-ne v2, p1, :cond_2e

    return p1

    :cond_2e
    iget-object p1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    return v2

    :catch_35
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data socket"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public run()V
    .registers 6

    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "SessionThread started"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    if-eqz v0, :cond_24

    const-string v0, "220 SwiFTP "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ready\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    :cond_24
    :try_start_24
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    sget-object v2, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received line from client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/swiftp/FtpCmd;->dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_38

    :cond_58
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "readLine gave null, quitting"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_5f} :catch_60

    goto :goto_67

    :catch_60
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "Connection was dropped"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    return-void
.end method

.method public sendViaDataSocket(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using data connection encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    move-result p1
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_23} :catch_24

    return p1

    :catch_24
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "Unsupported encoding for data socket send"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendViaDataSocket([BI)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    move-result p1

    return p1
.end method

.method public sendViaDataSocket([BII)Z
    .registers 7

    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t send via null dataOutputStream"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    const/4 v2, 0x1

    if-nez p3, :cond_11

    return v2

    :cond_11
    :try_start_11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1b

    iget-object p1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    return v2

    :catch_1b
    move-exception p1

    sget-object p2, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string p3, "Couldn\'t write output stream for data socket"

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setAccount(Lorg/swiftp/Account;)V
    .registers 2

    iput-object p1, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    return-void
.end method

.method public setBinaryMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setRenameFrom(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    return-void
.end method

.method public setWorkingDir(Ljava/io/File;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v0, "SessionThread canonical error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public startUsingDataSocket()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v1}, Lorg/swiftp/DataSocketFactory;->onTransfer()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    if-nez v1, :cond_13

    sget-object v1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v2, "dataSocketFactory.onTransfer() returned null"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1b

    const/4 v0, 0x1

    return v0

    :catch_1b
    sget-object v1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v2, "IOException getting OutputStream for data socket"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1f

    :catch_7
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported encoding: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_1f
    invoke-direct {p0, p1}, Lorg/swiftp/SessionThread;->writeBytes([B)V

    return-void
.end method
