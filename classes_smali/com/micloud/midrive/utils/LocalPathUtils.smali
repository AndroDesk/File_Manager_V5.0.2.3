.class public Lcom/micloud/midrive/utils/LocalPathUtils;
.super Ljava/lang/Object;
.source "LocalPathUtils.java"


# static fields
.field public static final DOWNLOAD_PATH:Ljava/lang/String; = "MiDrive"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "LocalPathUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getDownloadFilePath(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    if-ne p2, v0, :cond_9

    .line 5
    invoke-static {p0, p3, p4}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_9
    sget-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 12
    if-ne p2, v0, :cond_12

    .line 14
    invoke-static {p0, p3, p4}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    sget-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 21
    if-ne p2, v0, :cond_1b

    .line 23
    invoke-static {p0, p1, p3, p4}, Lcom/micloud/midrive/utils/LocalPathUtils;->getPreviewPath(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string p3, "Should not run to here CacheFileType:"

    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method public static getDownloadInnerCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    if-nez p1, :cond_4

    .line 3
    const-string p1, ""

    .line 5
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 7
    new-instance v1, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 12
    move-result-object p0

    .line 13
    const-string v2, "MiDrive"

    .line 15
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1d

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_1d
    new-instance p0, Ljava/io/File;

    .line 32
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    return-object p0
.end method

.method private static getDownloadPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 3
    const-string p1, ""

    .line 5
    :cond_4
    new-instance p0, Ljava/io/File;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 19
    invoke-static {v0, v1, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_22

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_22
    new-instance p1, Ljava/io/File;

    .line 37
    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static getDownloadRootDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "/"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "MiDrive"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Ljava/io/File;

    .line 31
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2a

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_2a
    return-object v0
.end method

.method public static getLocalCacheDirPath()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 8
    const-string v2, "/.CloudDrive"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    .line 16
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 22
    return-object v0
.end method

.method private static getPreviewPath(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    if-nez p2, :cond_4

    .line 3
    const-string p2, ""

    .line 5
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 7
    new-instance v1, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 12
    move-result-object p0

    .line 13
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {p1, v2}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_22

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_22
    new-instance p0, Ljava/io/File;

    .line 37
    invoke-direct {p0, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
