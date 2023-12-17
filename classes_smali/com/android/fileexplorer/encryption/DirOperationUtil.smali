.class public Lcom/android/fileexplorer/encryption/DirOperationUtil;
.super Ljava/lang/Object;
.source "DirOperationUtil.java"


# static fields
.field public static final BASE:Ljava/lang/String; = "FileExplorer"

.field private static final BASE_PATH:Ljava/lang/String; = "/FileExplorer"

.field public static final PRIVATE_FOLDER_PATH:Ljava/lang/String; = "/FileExplorer/.safebox"

.field public static final PRIVATE_ROOT_PATH:Ljava/lang/String; = "/private"

.field private static final TAG:Ljava/lang/String; = "DirOperationUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFolder(Ljava/lang/String;Z)Z
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_38

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1c

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    move v0, v2

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    :goto_1c
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 32
    move-result v0

    .line 33
    :goto_20
    if-eqz p1, :cond_36

    .line 35
    const-string p1, "/"

    .line 37
    const-string v0, ".nomedia"

    .line 39
    invoke-static {p0, p1, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_31

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    invoke-static {p0, v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 53
    move-result v1

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    move v1, v0

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v1, v2

    .line 58
    :goto_39
    if-nez v1, :cond_42

    .line 60
    sget-object p0, Lcom/android/fileexplorer/encryption/DirOperationUtil;->TAG:Ljava/lang/String;

    .line 62
    const-string p1, "Create folder failed"

    .line 64
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_42
    return v1
.end method

.method public static getExternalPrivateRootDir()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/FileExplorer/.safebox"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public static getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".header_backup_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".thumb_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private static getOldPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".header_backup_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private static getOldPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".thumb_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_e

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getOldPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public static getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".lock_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageHelper;->getStoragePathForPrivate(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_13
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeId()I

    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2d

    .line 34
    const/16 v0, 0x3e7

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5b

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->getMaintenanceModeDirPath(Z)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->getXspaceDirPath(Z)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_4a

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_56

    .line 75
    :cond_4a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5b

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5b

    .line 87
    :cond_56
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5b
    const-string v0, "/FileExplorer/.safebox"

    .line 94
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public static getPrivateRootDirs()[Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "/FileExplorer/.safebox"

    .line 13
    if-nez v0, :cond_2a

    .line 15
    new-array v0, v1, [Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    aput-object v1, v0, v2

    .line 42
    return-object v0

    .line 43
    :cond_2a
    const/4 v4, 0x2

    .line 44
    new-array v4, v4, [Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    aput-object v5, v4, v2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    aput-object v0, v4, v1

    .line 92
    return-object v4
.end method

.method public static getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_e

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getOldPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public static getSDPrivateRootDir()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_20

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "/FileExplorer/.safebox"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method
