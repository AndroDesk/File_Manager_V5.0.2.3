.class public Ljcifs/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x50

.field private static final HANDLER_PKGS_PROPERTY:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field private static final JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

.field private static final PROTOCOL_HANDLERS:Ljava/util/Map;

.field private static factory:Ljava/net/URLStreamHandlerFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    .line 8
    const-string v0, "sun.net.www.protocol"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 4
    return-void
.end method

.method private static getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 7

    .line 1
    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/net/URLStreamHandler;

    .line 10
    if-eqz v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :cond_d
    sget-object v2, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 16
    if-eqz v2, :cond_15

    .line 18
    invoke-interface {v2, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    .line 21
    move-result-object v1

    .line 22
    :cond_15
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_6a

    .line 25
    const-string v3, "java.protocol.handler.pkgs"

    .line 27
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Ljava/util/StringTokenizer;

    .line 33
    const-string v5, "|"

    .line 35
    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :catch_25
    :goto_25
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2c

    .line 44
    goto :goto_6a

    .line 45
    :cond_2c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    const-string v5, "jcifs"

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3d

    .line 61
    goto :goto_25

    .line 62
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v3, "."

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, ".Handler"

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_c9

    .line 84
    :try_start_53
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 87
    move-result-object v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_58
    .catchall {:try_start_53 .. :try_end_57} :catchall_c9

    .line 88
    goto :goto_59

    .line 89
    :catch_58
    move-object v5, v2

    .line 90
    :goto_59
    if-nez v5, :cond_63

    .line 92
    :try_start_5b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    move-result-object v5

    .line 100
    :cond_63
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/net/URLStreamHandler;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_69} :catch_25
    .catchall {:try_start_5b .. :try_end_69} :catchall_c9

    .line 106
    move-object v1, v3

    .line 107
    :cond_6a
    :goto_6a
    if-nez v1, :cond_ac

    .line 109
    const/4 v3, 0x0

    .line 110
    :goto_6d
    :try_start_6d
    sget-object v4, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    .line 112
    array-length v5, v4

    .line 113
    if-lt v3, v5, :cond_73

    .line 115
    goto :goto_ac

    .line 116
    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    aget-object v4, v4, v3

    .line 120
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v4, "."

    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v4, ".Handler"

    .line 137
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v4
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_c9

    .line 144
    :try_start_8f
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 147
    move-result-object v5
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_93} :catch_94
    .catchall {:try_start_8f .. :try_end_93} :catchall_c9

    .line 148
    goto :goto_95

    .line 149
    :catch_94
    move-object v5, v2

    .line 150
    :goto_95
    if-nez v5, :cond_9f

    .line 152
    :try_start_97
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 159
    move-result-object v5

    .line 160
    :cond_9f
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/net/URLStreamHandler;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_a6
    .catchall {:try_start_97 .. :try_end_a5} :catchall_c9

    .line 166
    move-object v1, v4

    .line 167
    :catch_a6
    if-eqz v1, :cond_a9

    .line 169
    goto :goto_ac

    .line 170
    :cond_a9
    add-int/lit8 v3, v3, 0x1

    .line 172
    goto :goto_6d

    .line 173
    :cond_ac
    :goto_ac
    if-eqz v1, :cond_b5

    .line 175
    :try_start_ae
    sget-object v2, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    .line 177
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v0

    .line 181
    return-object v1

    .line 182
    :cond_b5
    new-instance v1, Ljava/io/IOException;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "Unable to find default handler for protocol: "

    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p0

    .line 198
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 201
    throw v1

    .line 202
    :catchall_c9
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_c9

    .line 204
    throw p0
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 3

    .line 1
    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 6
    if-nez v1, :cond_e

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    sput-object p0, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v1, "URLStreamHandlerFactory already set."

    .line 19
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw p0
.end method


# virtual methods
.method public getDefaultPort()I
    .registers 2

    const/16 v0, 0x50

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 5

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljcifs/http/Handler;->getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, p1, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 18
    new-instance p1, Ljcifs/http/NtlmHttpURLConnection;

    .line 20
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 26
    invoke-direct {p1, v0}, Ljcifs/http/NtlmHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 29
    return-object p1
.end method
