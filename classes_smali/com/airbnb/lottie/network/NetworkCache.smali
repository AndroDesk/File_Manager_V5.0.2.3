.class public Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "lottie_cache_"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\\W+"

    .line 9
    const-string v2, ""

    .line 11
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    if-eqz p2, :cond_18

    .line 20
    invoke-virtual {p1}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    iget-object p0, p1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 27
    :goto_1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/io/File;

    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 32
    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method private parentDir()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "lottie_network_cache"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 23
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1f

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_26

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_23

    .line 17
    array-length v1, v1

    .line 18
    if-lez v1, :cond_23

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_19
    if-ge v3, v2, :cond_23

    .line 28
    aget-object v4, v1, v3

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_19

    .line 36
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 39
    :cond_26
    return-void
.end method

.method public fetch(Ljava/lang/String;)Ll0/c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ll0/c<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v2, Ljava/io/FileInputStream;

    .line 11
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_3a

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v3, ".zip"

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 31
    :goto_1e
    const-string v3, "Cache hit for "

    .line 33
    const-string v4, " at "

    .line 35
    invoke-static {v3, p1, v4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 53
    new-instance p1, Ll0/c;

    .line 55
    invoke-direct {p1, v0, v2}, Ll0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-object p1

    .line 59
    :catch_3a
    return-object v0
.end method

.method public renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    new-instance p2, Ljava/io/File;

    .line 8
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, ".temp"

    .line 21
    const-string v1, ""

    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Ljava/io/File;

    .line 29
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 35
    move-result p1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "Copying temp file to real file ("

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, ")"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_63

    .line 63
    const-string p1, "Unable to rename cache file "

    .line 65
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p2, " to "

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p2, "."

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 100
    :cond_63
    return-void
.end method

.method public writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    new-instance p3, Ljava/io/File;

    .line 8
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    :try_start_e
    new-instance p1, Ljava/io/FileOutputStream;

    .line 17
    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_32

    .line 20
    const/16 v0, 0x400

    .line 22
    :try_start_15
    new-array v0, v0, [B

    .line 24
    :goto_17
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 27
    move-result v1

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v1, v2, :cond_23

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    goto :goto_17

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2d

    .line 39
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    .line 42
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 45
    return-object p3

    .line 46
    :catchall_2d
    move-exception p3

    .line 47
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 50
    throw p3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 55
    throw p1
.end method
