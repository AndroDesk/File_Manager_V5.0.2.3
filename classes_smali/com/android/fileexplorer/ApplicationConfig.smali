.class public Lcom/android/fileexplorer/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static final APP_CONFIG:Ljava/lang/String; = "config"

.field private static volatile instance:Lcom/android/fileexplorer/ApplicationConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get()Ljava/util/Properties;
    .registers 7

    const-string v0, "config"

    .line 3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_43
    .catchall {:try_start_8 .. :try_end_32} :catchall_3e

    .line 6
    :try_start_32
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3c
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 7
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_46

    :catchall_39
    move-exception v0

    move-object v2, v4

    goto :goto_3f

    :catch_3c
    move-object v2, v4

    goto :goto_43

    :catchall_3e
    move-exception v0

    :goto_3f
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 8
    throw v0

    .line 9
    :catch_43
    :goto_43
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_46
    return-object v1
.end method

.method public static getInstance()Lcom/android/fileexplorer/ApplicationConfig;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/ApplicationConfig;->instance:Lcom/android/fileexplorer/ApplicationConfig;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/ApplicationConfig;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/ApplicationConfig;->instance:Lcom/android/fileexplorer/ApplicationConfig;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/ApplicationConfig;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/ApplicationConfig;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/ApplicationConfig;->instance:Lcom/android/fileexplorer/ApplicationConfig;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/ApplicationConfig;->instance:Lcom/android/fileexplorer/ApplicationConfig;

    .line 26
    return-object v0
.end method

.method private setProps(Ljava/util/Properties;)V
    .registers 6

    .line 1
    const-string v0, "config"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/io/File;

    .line 19
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/io/FileOutputStream;

    .line 24
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_2c
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2a

    .line 27
    :try_start_1a
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_27
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    goto :goto_39

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    move-object v1, v0

    .line 39
    goto :goto_3a

    .line 40
    :catch_27
    move-exception p1

    .line 41
    move-object v1, v0

    .line 42
    goto :goto_2d

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_3a

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    :goto_2d
    :try_start_2d
    const-string v0, "ApplicationConfig"

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    .line 55
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    :goto_39
    return-void

    .line 59
    :goto_3a
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/ApplicationConfig;->get()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public varargs remove([Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/ApplicationConfig;->get()Ljava/util/Properties;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_10

    .line 9
    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_6

    .line 17
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/ApplicationConfig;->setProps(Ljava/util/Properties;)V

    .line 20
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/ApplicationConfig;->get()Ljava/util/Properties;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/ApplicationConfig;->setProps(Ljava/util/Properties;)V

    return-void
.end method

.method public set(Ljava/util/Properties;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/ApplicationConfig;->get()Ljava/util/Properties;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/ApplicationConfig;->setProps(Ljava/util/Properties;)V

    return-void
.end method
