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

    .line 1
    const-class v0, Lorg/swiftp/SessionThread;

    .line 3
    const-string v0, "SessionThread"

    .line 5
    sput-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 7
    const/4 v0, 0x3

    .line 8
    sput v0, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    invoke-static {}, Lorg/swiftp/Defaults;->getInputBufferSize()I

    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/swiftp/SessionThread;->buffer:Ljava/nio/ByteBuffer;

    .line 14
    new-instance v0, Lorg/swiftp/Account;

    .line 16
    invoke-direct {v0}, Lorg/swiftp/Account;-><init>()V

    .line 19
    iput-object v0, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 21
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    .line 27
    sget-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 31
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 38
    move-result-object v1

    .line 39
    const-string v2, "pref_charset"

    .line 41
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 49
    iput-object p3, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    .line 51
    iput-object p2, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 53
    sget-object p1, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    .line 55
    if-ne p3, p1, :cond_3a

    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 p1, 0x0

    .line 60
    :goto_3b
    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    .line 62
    return-void
.end method

.method private quit()V
    .registers 3

    .line 1
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "SessionThread told to quit"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 11
    return-void
.end method

.method private writeBytes([B)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 3
    iget-object v1, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 5
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 8
    move-result-object v1

    .line 9
    sget v2, Lorg/swiftp/Defaults;->dataChunkSize:I

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 20
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 22
    array-length p1, p1

    .line 23
    int-to-long v1, p1

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_25

    .line 28
    :catch_1b
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "Exception writing socket"

    .line 32
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 38
    :goto_25
    return-void
.end method


# virtual methods
.method public authAttempt(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_d

    .line 4
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "Authentication complete"

    .line 8
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    .line 13
    goto :goto_4a

    .line 14
    :cond_d
    iget-object p1, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    .line 16
    sget-object v1, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    .line 18
    if-ne p1, v1, :cond_17

    .line 20
    invoke-direct {p0}, Lorg/swiftp/SessionThread;->quit()V

    .line 23
    goto :goto_3a

    .line 24
    :cond_17
    iget p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 26
    add-int/2addr p1, v0

    .line 27
    iput p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 29
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "Auth failed: "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "/"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget v1, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_3a
    iget p1, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 61
    sget v0, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    .line 63
    if-le p1, v0, :cond_4a

    .line 65
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, "Too many auth fails, quitting session"

    .line 69
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lorg/swiftp/SessionThread;->quit()V

    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public closeDataSocket()V
    .registers 3

    .line 1
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Closing data socket"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 21
    return-void
.end method

.method public closeSocket()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    return-void
.end method

.method public getAccount()Lorg/swiftp/Account;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 3
    return-object v0
.end method

.method public getDataSocketPasvIp()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRenameFrom()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 3
    return-object v0
.end method

.method public getWorkingDir()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    .line 3
    return v0
.end method

.method public isBinaryMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    .line 3
    return v0
.end method

.method public onPasv()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 3
    invoke-virtual {v0}, Lorg/swiftp/DataSocketFactory;->onPasv()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/swiftp/DataSocketFactory;->onPort(Ljava/net/InetAddress;I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public receiveFromDataSocket([B)I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 3
    const/4 v1, -0x2

    .line 4
    if-nez v0, :cond_d

    .line 6
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 8
    const-string v0, "Can\'t receive from null dataSocket"

    .line 10
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_d
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1b

    .line 20
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "Can\'t receive from unconnected socket"

    .line 24
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :try_start_1c
    iget-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 31
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 34
    move-result-object v1

    .line 35
    :goto_22
    array-length v2, p1

    .line 36
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 39
    move-result v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_35

    .line 40
    if-nez v2, :cond_2a

    .line 42
    goto :goto_22

    .line 43
    :cond_2a
    const/4 p1, -0x1

    .line 44
    if-ne v2, p1, :cond_2e

    .line 46
    return p1

    .line 47
    :cond_2e
    iget-object p1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 49
    int-to-long v0, v2

    .line 50
    invoke-virtual {p1, v0, v1}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    .line 53
    return v2

    .line 54
    :catch_35
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 56
    const-string v1, "Error reading data socket"

    .line 58
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public run()V
    .registers 6

    .line 1
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "SessionThread started"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    .line 10
    if-eqz v0, :cond_24

    .line 12
    const-string v0, "220 SwiFTP "

    .line 14
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " ready\r\n"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 37
    :cond_24
    :try_start_24
    new-instance v0, Ljava/io/BufferedReader;

    .line 39
    new-instance v1, Ljava/io/InputStreamReader;

    .line 41
    iget-object v2, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 43
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 49
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    const/16 v2, 0x2000

    .line 54
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 57
    :goto_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_58

    .line 63
    sget-object v2, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v4, "Received line from client: "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0, v1}, Lorg/swiftp/FtpCmd;->dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 88
    goto :goto_38

    .line 89
    :cond_58
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 91
    const-string v1, "readLine gave null, quitting"

    .line 93
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_5f} :catch_60

    .line 96
    goto :goto_67

    .line 97
    :catch_60
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 99
    const-string v1, "Connection was dropped"

    .line 101
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_67
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 107
    return-void
.end method

.method public sendViaDataSocket(Ljava/lang/String;)Z
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
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

    .line 3
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    move-result p1
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_23} :catch_24

    return p1

    .line 4
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

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    move-result p1

    return p1
.end method

.method public sendViaDataSocket([BII)Z
    .registers 7

    .line 6
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 7
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t send via null dataOutputStream"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    const/4 v2, 0x1

    if-nez p3, :cond_11

    return v2

    .line 8
    :cond_11
    :try_start_11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1b

    .line 9
    iget-object p1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    return v2

    :catch_1b
    move-exception p1

    .line 10
    sget-object p2, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    const-string p3, "Couldn\'t write output stream for data socket"

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setAccount(Lorg/swiftp/Account;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 3
    return-void
.end method

.method public setBinaryMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRenameFrom(Ljava/io/File;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    .line 3
    return-void
.end method

.method public setWorkingDir(Ljava/io/File;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    goto :goto_12

    .line 12
    :catch_b
    sget-object p1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "SessionThread canonical error"

    .line 16
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_12
    return-void
.end method

.method public startUsingDataSocket()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 4
    invoke-virtual {v1}, Lorg/swiftp/DataSocketFactory;->onTransfer()Ljava/net/Socket;

    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 10
    if-nez v1, :cond_13

    .line 12
    sget-object v1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 14
    const-string v2, "dataSocketFactory.onTransfer() returned null"

    .line 16
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :catch_1b
    sget-object v1, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 30
    const-string v2, "IOException getting OutputStream for data socket"

    .line 32
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 38
    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    goto :goto_1f

    .line 8
    :catch_7
    sget-object v0, Lorg/swiftp/SessionThread;->TAG:Ljava/lang/String;

    .line 10
    const-string v1, "Unsupported encoding: "

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 31
    move-result-object p1

    .line 32
    :goto_1f
    invoke-direct {p0, p1}, Lorg/swiftp/SessionThread;->writeBytes([B)V

    .line 35
    return-void
.end method
