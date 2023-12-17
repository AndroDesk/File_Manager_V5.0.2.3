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

    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChrootDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getLastError()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/swiftp/Globals;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyConnector()Lorg/swiftp/ProxyConnector;
    .registers 1

    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    return-object v0
.end method

.method public static setChrootDir(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    sput-object p0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    :cond_8
    return-void
.end method

.method public static setLastError(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lorg/swiftp/Globals;->lastError:Ljava/lang/String;

    return-void
.end method

.method public static setProxyConnector(Lorg/swiftp/ProxyConnector;)V
    .registers 1

    sput-object p0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    return-void
.end method
