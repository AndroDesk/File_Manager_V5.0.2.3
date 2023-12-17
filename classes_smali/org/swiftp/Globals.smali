.class public Lorg/swiftp/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static chrootDir:Ljava/io/File;

.field private static lastError:Ljava/lang/String;

.field private static proxyConnector:Lorg/swiftp/ProxyConnector;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    sget-object v1, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChrootDir()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getLastError()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lorg/swiftp/Globals;->lastError:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getProxyConnector()Lorg/swiftp/ProxyConnector;
    .registers 1

    .line 1
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 15
    return-object v0
.end method

.method public static setChrootDir(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    sput-object p0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    .line 9
    :cond_8
    return-void
.end method

.method public static setLastError(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lorg/swiftp/Globals;->lastError:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setProxyConnector(Lorg/swiftp/ProxyConnector;)V
    .registers 1

    .line 1
    sput-object p0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 3
    return-void
.end method
