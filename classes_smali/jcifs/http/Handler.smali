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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    const-string v0, "sun.net.www.protocol"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private static getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 7

    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLStreamHandler;

    if-eqz v1, :cond_d

    monitor-exit v0

    return-object v1

    :cond_d
    sget-object v2, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v2, :cond_15

    invoke-interface {v2, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    :cond_15
    const/4 v2, 0x0

    if-nez v1, :cond_6a

    const-string v3, "java.protocol.handler.pkgs"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_25
    :goto_25
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_6a

    :cond_2c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "jcifs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_25

    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".Handler"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_c9

    :try_start_53
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_58
    .catchall {:try_start_53 .. :try_end_57} :catchall_c9

    goto :goto_59

    :catch_58
    move-object v5, v2

    :goto_59
    if-nez v5, :cond_63

    :try_start_5b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :cond_63
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_69} :catch_25
    .catchall {:try_start_5b .. :try_end_69} :catchall_c9

    move-object v1, v3

    :cond_6a
    :goto_6a
    if-nez v1, :cond_ac

    const/4 v3, 0x0

    :goto_6d
    :try_start_6d
    sget-object v4, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    array-length v5, v4

    if-lt v3, v5, :cond_73

    goto :goto_ac

    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".Handler"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_c9

    :try_start_8f
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_93} :catch_94
    .catchall {:try_start_8f .. :try_end_93} :catchall_c9

    goto :goto_95

    :catch_94
    move-object v5, v2

    :goto_95
    if-nez v5, :cond_9f

    :try_start_97
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :cond_9f
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLStreamHandler;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_a6
    .catchall {:try_start_97 .. :try_end_a5} :catchall_c9

    move-object v1, v4

    :catch_a6
    if-eqz v1, :cond_a9

    goto :goto_ac

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :cond_ac
    :goto_ac
    if-eqz v1, :cond_b5

    :try_start_ae
    sget-object v2, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_b5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find default handler for protocol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_c9
    move-exception p0

    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_c9

    throw p0
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 3

    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sput-object p0, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    monitor-exit v0

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "URLStreamHandlerFactory already set."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

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

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljcifs/http/Handler;->getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    new-instance p1, Ljcifs/http/NtlmHttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p1, v0}, Ljcifs/http/NtlmHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
