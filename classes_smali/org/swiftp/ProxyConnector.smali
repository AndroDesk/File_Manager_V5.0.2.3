.class public Lorg/swiftp/ProxyConnector;
.super Ljava/lang/Thread;
.source "ProxyConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/ProxyConnector$State;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final IN_BUF_SIZE:I = 0x800

.field private static final PREFERRED_SERVER:Ljava/lang/String; = "preferred_server"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_USAGE_BYTES:J = 0x4c4b40L

.field private static final USAGE_PREFS_NAME:Ljava/lang/String; = "proxy_usage_data"


# instance fields
.field private commandSocket:Ljava/net/Socket;

.field private ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

.field private hostname:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private proxyState:Lorg/swiftp/ProxyConnector$State;

.field private proxyUsage:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/ProxyConnector;

    .line 3
    const-string v0, "ProxyConnector"

    .line 5
    sput-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    .line 6
    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    .line 8
    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 10
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->getPersistedProxyUsage()J

    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 16
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 19
    invoke-static {p0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 22
    return-void
.end method

.method private checkAndPrintJsonError(Lorg/json/JSONObject;)Z
    .registers 5

    .line 1
    const-string v0, "error_code"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_35

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "Error in JSON response, code: "

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "error_string"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2a

    .line 31
    const-string v2, ", string: "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_2a
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method private getPersistedProxyUsage()J
    .registers 5

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "proxy_usage_data"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method private getProxyList()[Ljava/lang/String;
    .registers 13

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "preferred_server"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v3, "c1.swiftp.org"

    .line 19
    const-string v4, "c2.swiftp.org"

    .line 21
    const-string v5, "c3.swiftp.org"

    .line 23
    const-string v6, "c4.swiftp.org"

    .line 25
    const-string v7, "c5.swiftp.org"

    .line 27
    const-string v8, "c6.swiftp.org"

    .line 29
    const-string v9, "c7.swiftp.org"

    .line 31
    const-string v10, "c8.swiftp.org"

    .line 33
    const-string v11, "c9.swiftp.org"

    .line 35
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    move-result v3

    .line 50
    new-array v3, v3, [Ljava/lang/String;

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, [Ljava/lang/String;

    .line 58
    if-nez v0, :cond_3c

    .line 60
    goto :goto_45

    .line 61
    :cond_3c
    const/4 v3, 0x1

    .line 62
    new-array v3, v3, [Ljava/lang/String;

    .line 64
    aput-object v0, v3, v2

    .line 66
    invoke-static {v3, v1}, Lorg/swiftp/Util;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    :goto_45
    return-object v1
.end method

.method private incomingCommand(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "action"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "control_connection_waiting"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_19

    .line 15
    const-string v0, "port"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 20
    move-result p1

    .line 21
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->startControlSession(I)V

    .line 24
    goto/16 :goto_9c

    .line 26
    :cond_19
    const-string v1, "prefer_server"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_41

    .line 34
    const-string v0, "host"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v2, "New preferred server: "

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_9c

    .line 66
    :cond_41
    const-string v1, "message"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_6e

    .line 74
    const-string v0, "text"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v2, "Got news from proxy server: \""

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, "\""

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    .line 110
    goto :goto_9c

    .line 111
    :cond_6e
    const-string p1, "noop"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7e

    .line 119
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 121
    const-string v0, "Proxy noop"

    .line 123
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    goto :goto_9c

    .line 127
    :cond_7e
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v2, "Unsupported incoming action: "

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_94} :catch_95

    .line 149
    goto :goto_9c

    .line 150
    :catch_95
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 152
    const-string v0, "JSONException in proxy incomingCommand"

    .line 154
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_9c
    return-void
.end method

.method private makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "action"

    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    return-object v0
.end method

.method private newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 12

    .line 1
    const-string v0, "UTF-8"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_d

    .line 6
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 8
    const-string p2, "newAuthedSocket can\'t connect to null host"

    .line 10
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-object v1

    .line 14
    :cond_d
    new-instance v2, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    :try_start_12
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v5, "Opening proxy connection to "

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v5, ":"

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v4, Ljava/net/Socket;

    .line 51
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_d4
    .catchall {:try_start_12 .. :try_end_35} :catchall_d0

    .line 54
    :try_start_35
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 56
    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 59
    const/16 p1, 0x1388

    .line 61
    invoke-virtual {v4, v5, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 64
    const-string p1, "android_id"

    .line 66
    invoke-static {}, Lorg/swiftp/Util;->getAndroidId()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string p1, "swiftp_version"

    .line 75
    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string p1, "action"

    .line 84
    const-string p2, "login"

    .line 86
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 92
    move-result-object p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5c} :catch_cc
    .catchall {:try_start_35 .. :try_end_5c} :catchall_c9

    .line 93
    :try_start_5c
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 96
    move-result-object p2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_c6
    .catchall {:try_start_5c .. :try_end_60} :catchall_c4

    .line 97
    :try_start_60
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 108
    const-string v2, "Sent login request"

    .line 110
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/16 v2, 0x800

    .line 115
    new-array v2, v2, [B

    .line 117
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    .line 120
    move-result v5

    .line 121
    const/4 v6, -0x1

    .line 122
    if-ne v5, v6, :cond_8a

    .line 124
    const-string v0, "Proxy socket closed while waiting for auth response"

    .line 126
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_80} :catch_c2
    .catchall {:try_start_60 .. :try_end_80} :catchall_fa

    .line 129
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    return-object v1

    .line 139
    :cond_8a
    if-nez v5, :cond_9b

    .line 141
    :try_start_8c
    const-string v0, "Short network read waiting for auth, quitting"

    .line 143
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_c2
    .catchall {:try_start_8c .. :try_end_91} :catchall_fa

    .line 146
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    return-object v1

    .line 156
    :cond_9b
    :try_start_9b
    new-instance v6, Lorg/json/JSONObject;

    .line 158
    new-instance v7, Ljava/lang/String;

    .line 160
    const/4 v8, 0x0

    .line 161
    invoke-direct {v7, v2, v8, v5, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 164
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v6}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    .line 170
    move-result v0
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_aa} :catch_c2
    .catchall {:try_start_9b .. :try_end_aa} :catchall_fa

    .line 171
    if-eqz v0, :cond_b6

    .line 173
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    return-object v1

    .line 183
    :cond_b6
    :try_start_b6
    const-string v0, "newAuthedSocket successful"

    .line 185
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_c2
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_fa

    .line 188
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    return-object v4

    .line 195
    :catch_c2
    move-exception v0

    .line 196
    goto :goto_d8

    .line 197
    :catchall_c4
    move-exception v0

    .line 198
    goto :goto_fc

    .line 199
    :catch_c6
    move-exception v0

    .line 200
    move-object p2, v1

    .line 201
    goto :goto_d8

    .line 202
    :catchall_c9
    move-exception v0

    .line 203
    move-object p1, v1

    .line 204
    goto :goto_fc

    .line 205
    :catch_cc
    move-exception v0

    .line 206
    move-object p1, v1

    .line 207
    move-object p2, p1

    .line 208
    goto :goto_d8

    .line 209
    :catchall_d0
    move-exception v0

    .line 210
    move-object p1, v1

    .line 211
    move-object v4, p1

    .line 212
    goto :goto_fc

    .line 213
    :catch_d4
    move-exception v0

    .line 214
    move-object p1, v1

    .line 215
    move-object p2, p1

    .line 216
    move-object v4, p2

    .line 217
    :goto_d8
    :try_start_d8
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string v5, "Exception during proxy connection or authentication: "

    .line 226
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_fa

    .line 239
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 242
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 245
    if-eqz v4, :cond_f9

    .line 247
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    :cond_f9
    return-object v1

    .line 251
    :catchall_fa
    move-exception v0

    .line 252
    move-object v1, p2

    .line 253
    :goto_fc
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 259
    if-eqz v4, :cond_107

    .line 261
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 264
    :cond_107
    throw v0
.end method

.method private persistProxyUsage()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "proxy_usage_data"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object v0

    .line 25
    iget-wide v3, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 27
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 35
    const-string v1, "Persisted proxy usage to preferences"

    .line 37
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private preferServer(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "preferred_server"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method

.method private sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p3}, Lorg/swiftp/Util;->jsonToByteArray(Lorg/json/JSONObject;)[B

    move-result-object p3

    if-nez p3, :cond_8

    return-object v0

    .line 2
    :cond_8
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x800

    new-array p2, p2, [B

    .line 3
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 p3, 0x1

    if-ge p1, p3, :cond_1e

    .line 4
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "Proxy sendRequest short read on response"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1e
    invoke-static {p2}, Lorg/swiftp/Util;->byteArrayToJson([B)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 6
    sget-object p2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p3, "Null response to sendRequest"

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2b
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 8
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "Error response to sendRequest"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_3a

    return-object v0

    :cond_39
    return-object p1

    :catch_3a
    move-exception p1

    .line 9
    sget-object p2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException in proxy sendRequest: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 10
    :try_start_3
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "null socket in ProxyConnector.sendRequest()"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 13
    invoke-direct {p0, v1, p1, p2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 14
    sget-object p2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in proxy sendRequest wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    .line 3
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "Proxy state changed to "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    .line 28
    return-void
.end method

.method private startControlSession(I)V
    .registers 5

    .line 1
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Starting new proxy FTP control session"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 10
    invoke-direct {p0, v1, p1}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_15

    .line 16
    const-string p1, "startControlSession got null authed socket"

    .line 18
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Lorg/swiftp/ProxyDataSocketFactory;

    .line 24
    invoke-direct {v0}, Lorg/swiftp/ProxyDataSocketFactory;-><init>()V

    .line 27
    new-instance v1, Lorg/swiftp/SessionThread;

    .line 29
    sget-object v2, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    .line 31
    invoke-direct {v1, p1, v0, v2}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    iget-object p1, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    .line 39
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/service/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V

    .line 42
    return-void
.end method


# virtual methods
.method public dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 4
    const-string v2, "Sending data_port_connect to proxy"

    .line 6
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 11
    const/16 v3, 0x8ae

    .line 13
    invoke-direct {p0, v2, v3}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 16
    move-result-object v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_10} :catch_3e
    .catchall {:try_start_1 .. :try_end_10} :catchall_3c

    .line 17
    if-nez v2, :cond_1d

    .line 19
    :try_start_12
    const-string p1, "dataPortConnect got null socket"

    .line 21
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_3f
    .catchall {:try_start_12 .. :try_end_17} :catchall_4c

    .line 24
    if-eqz v2, :cond_1c

    .line 26
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    :cond_1c
    return-object v0

    .line 30
    :cond_1d
    :try_start_1d
    const-string v1, "data_port_connect"

    .line 32
    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    move-result-object v1

    .line 36
    const-string v3, "address"

    .line 38
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string p1, "port"

    .line 47
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    invoke-direct {p0, v2, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 53
    move-result-object p1
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_35} :catch_3f
    .catchall {:try_start_1d .. :try_end_35} :catchall_4c

    .line 54
    if-nez p1, :cond_3b

    .line 56
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    return-object v0

    .line 60
    :cond_3b
    return-object v2

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    goto :goto_4e

    .line 63
    :catch_3e
    move-object v2, v0

    .line 64
    :catch_3f
    :try_start_3f
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 66
    const-string p2, "JSONException in dataPortConnect"

    .line 68
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4c

    .line 71
    if-eqz v2, :cond_4b

    .line 73
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 76
    :cond_4b
    return-object v0

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    move-object v0, v2

    .line 79
    :goto_4e
    if-eqz v0, :cond_53

    .line 81
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    :cond_53
    throw p1
.end method

.method public incrementProxyUsage(J)V
    .registers 7

    .line 1
    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 3
    add-long/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 6
    const-wide/32 v2, 0x4c4b40

    .line 9
    rem-long/2addr p1, v2

    .line 10
    rem-long/2addr v0, v2

    .line 11
    cmp-long p1, p1, v0

    .line 13
    if-gez p1, :cond_14

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    .line 18
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 21
    :cond_14
    return-void
.end method

.method public pasvAccept(Ljava/net/Socket;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "data_pasv_accept"

    .line 4
    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 7
    move-result-object v1

    .line 8
    invoke-direct {p0, p1, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_e

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1c

    .line 21
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 23
    const-string v1, "Error response to data_pasv_accept"

    .line 25
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return v0

    .line 29
    :cond_1c
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 31
    const-string v1, "Proxy data_pasv_accept successful"

    .line 33
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_25

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :catch_25
    move-exception p1

    .line 39
    sget-object v1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v3, "JSONException in pasvAccept: "

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public pasvListen()Lorg/swiftp/ProxyDataSocketInfo;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_2
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 5
    const-string v3, "Sending data_pasv_listen to proxy"

    .line 7
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 12
    const/16 v4, 0x8ae

    .line 14
    invoke-direct {p0, v3, v4}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 17
    move-result-object v3
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_11} :catch_44
    .catchall {:try_start_2 .. :try_end_11} :catchall_40

    .line 18
    if-nez v3, :cond_1e

    .line 20
    :try_start_13
    const-string v4, "pasvListen got null socket"

    .line 22
    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_45
    .catchall {:try_start_13 .. :try_end_18} :catchall_54

    .line 25
    if-eqz v3, :cond_1d

    .line 27
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 30
    :cond_1d
    return-object v0

    .line 31
    :cond_1e
    :try_start_1e
    const-string v2, "data_pasv_listen"

    .line 33
    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    move-result-object v2

    .line 37
    invoke-direct {p0, v3, v2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 40
    move-result-object v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_28} :catch_45
    .catchall {:try_start_1e .. :try_end_28} :catchall_54

    .line 41
    if-nez v2, :cond_2e

    .line 43
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    return-object v0

    .line 47
    :cond_2e
    :try_start_2e
    const-string v4, "port"

    .line 49
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    move-result v1
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_34} :catch_45
    .catchall {:try_start_2e .. :try_end_34} :catchall_54

    .line 53
    const/4 v2, 0x0

    .line 54
    :try_start_35
    new-instance v4, Lorg/swiftp/ProxyDataSocketInfo;

    .line 56
    invoke-direct {v4, v3, v1}, Lorg/swiftp/ProxyDataSocketInfo;-><init>(Ljava/net/Socket;I)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_3e
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    .line 59
    return-object v4

    .line 60
    :catchall_3b
    move-exception v0

    .line 61
    move v1, v2

    .line 62
    goto :goto_55

    .line 63
    :catch_3e
    move v1, v2

    .line 64
    goto :goto_45

    .line 65
    :catchall_40
    move-exception v2

    .line 66
    move-object v3, v0

    .line 67
    move-object v0, v2

    .line 68
    goto :goto_55

    .line 69
    :catch_44
    move-object v3, v0

    .line 70
    :catch_45
    :goto_45
    :try_start_45
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 72
    const-string v4, "JSONException in pasvListen"

    .line 74
    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_54

    .line 77
    if-eqz v1, :cond_53

    .line 79
    if-eqz v3, :cond_53

    .line 81
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    :cond_53
    return-object v0

    .line 85
    :catchall_54
    move-exception v0

    .line 86
    :goto_55
    if-eqz v1, :cond_5c

    .line 88
    if-eqz v3, :cond_5c

    .line 90
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    :cond_5c
    throw v0
.end method

.method public quit()V
    .registers 3

    .line 1
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    .line 3
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 6
    :try_start_5
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 8
    const-string v1, "finished"

    .line 10
    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 17
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1a

    .line 27
    :catch_1a
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 34
    return-void
.end method

.method public run()V
    .registers 10

    .line 1
    const-string v0, "prefix"

    .line 3
    const-string v1, "ProxyConnector.run() returning"

    .line 5
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 7
    const-string v3, "In ProxyConnector.run()"

    .line 9
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v2, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    .line 14
    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_11
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->getProxyList()[Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    array-length v4, v3

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_18
    if-ge v6, v4, :cond_6c

    .line 27
    aget-object v7, v3, v6

    .line 29
    iput-object v7, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 31
    const/16 v8, 0x8ae

    .line 33
    invoke-direct {p0, v7, v8}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 36
    move-result-object v7

    .line 37
    iput-object v7, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 39
    if-nez v7, :cond_29

    .line 41
    goto :goto_4f

    .line 42
    :cond_29
    invoke-virtual {v7, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 45
    const-string v7, "start_command_session"

    .line 47
    invoke-direct {p0, v7}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    move-result-object v7

    .line 51
    iget-object v8, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 53
    invoke-direct {p0, v8, v7}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 56
    move-result-object v7

    .line 57
    if-nez v7, :cond_42

    .line 59
    sget-object v7, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 61
    const-string v8, "Couldn\'t create proxy command session"

    .line 63
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_4f

    .line 67
    :cond_42
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_52

    .line 73
    sget-object v7, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 75
    const-string v8, "start_command_session didn\'t receive a prefix in response"

    .line 77
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_4f
    add-int/lit8 v6, v6, 0x1

    .line 82
    goto :goto_18

    .line 83
    :cond_52
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v5, "Got prefix of: "

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6c
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 111
    if-nez v0, :cond_88

    .line 113
    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 115
    const-string v3, "No proxies accepted connection, failing."

    .line 117
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    .line 122
    invoke-direct {p0, v3}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_7c} :catch_12e
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_7c} :catch_111
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7c} :catch_f4
    .catchall {:try_start_11 .. :try_end_7c} :catchall_f2

    .line 125
    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 128
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 130
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 136
    return-void

    .line 137
    :cond_88
    :try_start_88
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    .line 139
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 142
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 144
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 149
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    .line 155
    const/16 v0, 0x800

    .line 157
    new-array v0, v0, [B

    .line 159
    :goto_9e
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 161
    const-string v4, "to proxy read()"

    .line 163
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    .line 168
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 171
    move-result v4

    .line 172
    int-to-long v5, v4

    .line 173
    invoke-virtual {p0, v5, v6}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    .line 176
    const-string v5, "from proxy read()"

    .line 178
    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-lez v4, :cond_d4

    .line 183
    new-instance v4, Ljava/lang/String;

    .line 185
    const-string v5, "UTF-8"

    .line 187
    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 190
    new-instance v5, Lorg/json/JSONObject;

    .line 192
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v4, "action"

    .line 197
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_ce

    .line 203
    invoke-direct {p0, v5}, Lorg/swiftp/ProxyConnector;->incomingCommand(Lorg/json/JSONObject;)V

    .line 206
    goto :goto_9e

    .line 207
    :cond_ce
    const-string v4, "Response received but no responseWaiter"

    .line 209
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    goto :goto_9e

    .line 213
    :cond_d4
    if-nez v4, :cond_dc

    .line 215
    const-string v4, "Command socket read 0 bytes, looping"

    .line 217
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    goto :goto_9e

    .line 221
    :cond_dc
    const-string v0, "Command socket end of stream, exiting"

    .line 223
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    .line 228
    sget-object v4, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    .line 230
    if-eq v0, v4, :cond_ec

    .line 232
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    .line 234
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 237
    :cond_ec
    const-string v0, "ProxyConnector thread quitting cleanly"

    .line 239
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_f1} :catch_12e
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_f1} :catch_111
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_f1} :catch_f4
    .catchall {:try_start_88 .. :try_end_f1} :catchall_f2

    .line 242
    goto :goto_14a

    .line 243
    :catchall_f2
    move-exception v0

    .line 244
    goto :goto_156

    .line 245
    :catch_f4
    move-exception v0

    .line 246
    :try_start_f5
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string v5, "Other exception in ProxyConnector: "

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    .line 270
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 273
    goto :goto_14a

    .line 274
    :catch_111
    move-exception v0

    .line 275
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v5, "Commmand socket JSONException: "

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    .line 299
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 302
    goto :goto_14a

    .line 303
    :catch_12e
    move-exception v0

    .line 304
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    const-string v5, "IOException in command session: "

    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    .line 328
    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_14a
    .catchall {:try_start_f5 .. :try_end_14a} :catchall_f2

    .line 331
    :goto_14a
    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 334
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 336
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 342
    return-void

    .line 343
    :goto_156
    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 346
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 348
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    .line 350
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 356
    throw v0
.end method
