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

    const-class v0, Lorg/swiftp/ProxyConnector;

    const-string v0, "ProxyConnector"

    sput-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->getPersistedProxyUsage()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    invoke-static {p0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    return-void
.end method

.method private checkAndPrintJsonError(Lorg/json/JSONObject;)Z
    .registers 5

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in JSON response, code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error_string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, ", string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method private getPersistedProxyUsage()J
    .registers 5

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "proxy_usage_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getProxyList()[Ljava/lang/String;
    .registers 13

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferred_server"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "c1.swiftp.org"

    const-string v4, "c2.swiftp.org"

    const-string v5, "c3.swiftp.org"

    const-string v6, "c4.swiftp.org"

    const-string v7, "c5.swiftp.org"

    const-string v8, "c6.swiftp.org"

    const-string v9, "c7.swiftp.org"

    const-string v10, "c8.swiftp.org"

    const-string v11, "c9.swiftp.org"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v0, :cond_3c

    goto :goto_45

    :cond_3c
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v3, v1}, Lorg/swiftp/Util;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_45
    return-object v1
.end method

.method private incomingCommand(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "control_connection_waiting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->startControlSession(I)V

    goto/16 :goto_9c

    :cond_19
    const-string v1, "prefer_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New preferred server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_41
    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got news from proxy server: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    goto :goto_9c

    :cond_6e
    const-string p1, "noop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v0, "Proxy noop"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_7e
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported incoming action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_94} :catch_95

    goto :goto_9c

    :catch_95
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v0, "JSONException in proxy incomingCommand"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    return-void
.end method

.method private makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 12

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "newAuthedSocket can\'t connect to null host"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_12
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening proxy connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_d4
    .catchall {:try_start_12 .. :try_end_35} :catchall_d0

    :try_start_35
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v4, v5, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string p1, "android_id"

    invoke-static {}, Lorg/swiftp/Util;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "swiftp_version"

    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action"

    const-string p2, "login"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5c} :catch_cc
    .catchall {:try_start_35 .. :try_end_5c} :catchall_c9

    :try_start_5c
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_c6
    .catchall {:try_start_5c .. :try_end_60} :catchall_c4

    :try_start_60
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "Sent login request"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8a

    const-string v0, "Proxy socket closed while waiting for auth response"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_80} :catch_c2
    .catchall {:try_start_60 .. :try_end_80} :catchall_fa

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_8a
    if-nez v5, :cond_9b

    :try_start_8c
    const-string v0, "Short network read waiting for auth, quitting"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_c2
    .catchall {:try_start_8c .. :try_end_91} :catchall_fa

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_9b
    :try_start_9b
    new-instance v6, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v5, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_aa} :catch_c2
    .catchall {:try_start_9b .. :try_end_aa} :catchall_fa

    if-eqz v0, :cond_b6

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_b6
    :try_start_b6
    const-string v0, "newAuthedSocket successful"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_c2
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_fa

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :catch_c2
    move-exception v0

    goto :goto_d8

    :catchall_c4
    move-exception v0

    goto :goto_fc

    :catch_c6
    move-exception v0

    move-object p2, v1

    goto :goto_d8

    :catchall_c9
    move-exception v0

    move-object p1, v1

    goto :goto_fc

    :catch_cc
    move-exception v0

    move-object p1, v1

    move-object p2, p1

    goto :goto_d8

    :catchall_d0
    move-exception v0

    move-object p1, v1

    move-object v4, p1

    goto :goto_fc

    :catch_d4
    move-exception v0

    move-object p1, v1

    move-object p2, p1

    move-object v4, p2

    :goto_d8
    :try_start_d8
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during proxy connection or authentication: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_fa

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v4, :cond_f9

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_f9
    return-object v1

    :catchall_fa
    move-exception v0

    move-object v1, p2

    :goto_fc
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v4, :cond_107

    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_107
    throw v0
.end method

.method private persistProxyUsage()V
    .registers 6

    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "proxy_usage_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v1, "Persisted proxy usage to preferences"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private preferServer(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferred_server"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p3}, Lorg/swiftp/Util;->jsonToByteArray(Lorg/json/JSONObject;)[B

    move-result-object p3

    if-nez p3, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x800

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 p3, 0x1

    if-ge p1, p3, :cond_1e

    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "Proxy sendRequest short read on response"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1e
    invoke-static {p2}, Lorg/swiftp/Util;->byteArrayToJson([B)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2b

    sget-object p2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p3, "Null response to sendRequest"

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result p2

    if-eqz p2, :cond_39

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

    :try_start_3
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "null socket in ProxyConnector.sendRequest()"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

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

    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    return-void
.end method

.method private startControlSession(I)V
    .registers 5

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v1, "Starting new proxy FTP control session"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_15

    const-string p1, "startControlSession got null authed socket"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance v0, Lorg/swiftp/ProxyDataSocketFactory;

    invoke-direct {v0}, Lorg/swiftp/ProxyDataSocketFactory;-><init>()V

    new-instance v1, Lorg/swiftp/SessionThread;

    sget-object v2, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    invoke-direct {v1, p1, v0, v2}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/service/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V

    return-void
.end method


# virtual methods
.method public dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v2, "Sending data_port_connect to proxy"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v3, 0x8ae

    invoke-direct {p0, v2, v3}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_10} :catch_3e
    .catchall {:try_start_1 .. :try_end_10} :catchall_3c

    if-nez v2, :cond_1d

    :try_start_12
    const-string p1, "dataPortConnect got null socket"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_3f
    .catchall {:try_start_12 .. :try_end_17} :catchall_4c

    if-eqz v2, :cond_1c

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1c
    return-object v0

    :cond_1d
    :try_start_1d
    const-string v1, "data_port_connect"

    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "address"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "port"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-direct {p0, v2, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_35} :catch_3f
    .catchall {:try_start_1d .. :try_end_35} :catchall_4c

    if-nez p1, :cond_3b

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_3b
    return-object v2

    :catchall_3c
    move-exception p1

    goto :goto_4e

    :catch_3e
    move-object v2, v0

    :catch_3f
    :try_start_3f
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string p2, "JSONException in dataPortConnect"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4c

    if-eqz v2, :cond_4b

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4b
    return-object v0

    :catchall_4c
    move-exception p1

    move-object v0, v2

    :goto_4e
    if-eqz v0, :cond_53

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_53
    throw p1
.end method

.method public incrementProxyUsage(J)V
    .registers 7

    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    const-wide/32 v2, 0x4c4b40

    rem-long/2addr p1, v2

    rem-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_14

    invoke-static {}, Lcom/android/fileexplorer/service/FTPServerService;->updateClients()V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    :cond_14
    return-void
.end method

.method public pasvAccept(Ljava/net/Socket;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "data_pasv_accept"

    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    return v0

    :cond_e
    invoke-direct {p0, p1}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v1, "Error response to data_pasv_accept"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1c
    sget-object p1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v1, "Proxy data_pasv_accept successful"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_25

    const/4 p1, 0x1

    return p1

    :catch_25
    move-exception p1

    sget-object v1, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException in pasvAccept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public pasvListen()Lorg/swiftp/ProxyDataSocketInfo;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v3, "Sending data_pasv_listen to proxy"

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v4, 0x8ae

    invoke-direct {p0, v3, v4}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_11} :catch_44
    .catchall {:try_start_2 .. :try_end_11} :catchall_40

    if-nez v3, :cond_1e

    :try_start_13
    const-string v4, "pasvListen got null socket"

    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_45
    .catchall {:try_start_13 .. :try_end_18} :catchall_54

    if-eqz v3, :cond_1d

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1d
    return-object v0

    :cond_1e
    :try_start_1e
    const-string v2, "data_pasv_listen"

    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_28} :catch_45
    .catchall {:try_start_1e .. :try_end_28} :catchall_54

    if-nez v2, :cond_2e

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_2e
    :try_start_2e
    const-string v4, "port"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_34} :catch_45
    .catchall {:try_start_2e .. :try_end_34} :catchall_54

    const/4 v2, 0x0

    :try_start_35
    new-instance v4, Lorg/swiftp/ProxyDataSocketInfo;

    invoke-direct {v4, v3, v1}, Lorg/swiftp/ProxyDataSocketInfo;-><init>(Ljava/net/Socket;I)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_3e
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    return-object v4

    :catchall_3b
    move-exception v0

    move v1, v2

    goto :goto_55

    :catch_3e
    move v1, v2

    goto :goto_45

    :catchall_40
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_55

    :catch_44
    move-object v3, v0

    :catch_45
    :goto_45
    :try_start_45
    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v4, "JSONException in pasvListen"

    invoke-static {v2, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_54

    if-eqz v1, :cond_53

    if-eqz v3, :cond_53

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_53
    return-object v0

    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v1, :cond_5c

    if-eqz v3, :cond_5c

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5c
    throw v0
.end method

.method public quit()V
    .registers 3

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    :try_start_5
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    const-string v1, "finished"

    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1a

    :catch_1a
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    return-void
.end method

.method public run()V
    .registers 10

    const-string v0, "prefix"

    const-string v1, "ProxyConnector.run() returning"

    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v3, "In ProxyConnector.run()"

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    const/4 v2, 0x0

    :try_start_11
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->getProxyList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_6c

    aget-object v7, v3, v6

    iput-object v7, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v8, 0x8ae

    invoke-direct {p0, v7, v8}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    if-nez v7, :cond_29

    goto :goto_4f

    :cond_29
    invoke-virtual {v7, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v7, "start_command_session"

    invoke-direct {p0, v7}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-direct {p0, v8, v7}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_42

    sget-object v7, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t create proxy command session"

    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_42
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_52

    sget-object v7, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v8, "start_command_session didn\'t receive a prefix in response"

    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_52
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got prefix of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    if-nez v0, :cond_88

    sget-object v0, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v3, "No proxies accepted connection, failing."

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v3}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_7c} :catch_12e
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_7c} :catch_111
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7c} :catch_f4
    .catchall {:try_start_11 .. :try_end_7c} :catchall_f2

    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    return-void

    :cond_88
    :try_start_88
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_9e
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    const-string v4, "to proxy read()"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    int-to-long v5, v4

    invoke-virtual {p0, v5, v6}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    const-string v5, "from proxy read()"

    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_d4

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "action"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-direct {p0, v5}, Lorg/swiftp/ProxyConnector;->incomingCommand(Lorg/json/JSONObject;)V

    goto :goto_9e

    :cond_ce
    const-string v4, "Response received but no responseWaiter"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    :cond_d4
    if-nez v4, :cond_dc

    const-string v4, "Command socket read 0 bytes, looping"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    :cond_dc
    const-string v0, "Command socket end of stream, exiting"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    sget-object v4, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    if-eq v0, v4, :cond_ec

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    :cond_ec
    const-string v0, "ProxyConnector thread quitting cleanly"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_f1} :catch_12e
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_f1} :catch_111
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_f1} :catch_f4
    .catchall {:try_start_88 .. :try_end_f1} :catchall_f2

    goto :goto_14a

    :catchall_f2
    move-exception v0

    goto :goto_156

    :catch_f4
    move-exception v0

    :try_start_f5
    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Other exception in ProxyConnector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    goto :goto_14a

    :catch_111
    move-exception v0

    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commmand socket JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    goto :goto_14a

    :catch_12e
    move-exception v0

    sget-object v3, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in command session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_14a
    .catchall {:try_start_f5 .. :try_end_14a} :catchall_f2

    :goto_14a
    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    return-void

    :goto_156
    invoke-static {v2}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    sget-object v2, Lorg/swiftp/ProxyConnector;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    throw v0
.end method
