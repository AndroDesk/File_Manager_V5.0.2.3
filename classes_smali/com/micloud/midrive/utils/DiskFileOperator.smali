.class public Lcom/micloud/midrive/utils/DiskFileOperator;
.super Ljava/lang/Object;
.source "DiskFileOperator.java"


# static fields
.field public static MOVE_PATH:Ljava/lang/String;

.field public static ROOT_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

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
    const-string v1, "/.MiDrive"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 35
    const-string v2, "/.MOVE"

    .line 37
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/micloud/midrive/utils/DiskFileOperator;->MOVE_PATH:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllDownloadFiles()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->deleteFolder(Ljava/io/File;)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static clearDownloadEmptyFolders()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    sget-object v1, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->deleteEmptyFolder(Ljava/io/File;)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x1a

    .line 7
    if-lt v0, v3, :cond_36

    .line 9
    new-array v0, v2, [Ljava/lang/String;

    .line 11
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 14
    move-result-object p0

    .line 15
    new-array v0, v2, [Ljava/lang/String;

    .line 17
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 24
    move-result-object v0

    .line 25
    new-array v3, v2, [Ljava/nio/file/LinkOption;

    .line 27
    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2b

    .line 33
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_2b
    :try_start_2b
    new-array v0, v1, [Ljava/nio/file/CopyOption;

    .line 46
    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 48
    aput-object v3, v0, v2

    .line 50
    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_35

    .line 53
    return v1

    .line 54
    :catch_35
    return v2

    .line 55
    :cond_36
    new-instance v0, Ljava/io/File;

    .line 57
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_42

    .line 66
    return v2

    .line 67
    :cond_42
    new-instance p0, Ljava/io/File;

    .line 69
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_4e

    .line 78
    return v2

    .line 79
    :cond_4e
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_5f

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_5f
    const/4 p1, 0x0

    .line 97
    :try_start_60
    new-instance v3, Ljava/io/FileInputStream;

    .line 99
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_8f
    .catchall {:try_start_60 .. :try_end_65} :catchall_86

    .line 102
    :try_start_65
    new-instance v0, Ljava/io/FileOutputStream;

    .line 104
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_90
    .catchall {:try_start_65 .. :try_end_6a} :catchall_84

    .line 107
    const/16 p0, 0x400

    .line 109
    :try_start_6c
    new-array p0, p0, [B

    .line 111
    :goto_6e
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_78

    .line 117
    invoke-virtual {v0, p0, v2, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_77} :catch_82
    .catchall {:try_start_6c .. :try_end_77} :catchall_7f

    .line 120
    goto :goto_6e

    .line 121
    :cond_78
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 127
    return v1

    .line 128
    :catchall_7f
    move-exception p0

    .line 129
    move-object p1, v0

    .line 130
    goto :goto_88

    .line 131
    :catch_82
    move-object p1, v0

    .line 132
    goto :goto_90

    .line 133
    :catchall_84
    move-exception p0

    .line 134
    goto :goto_88

    .line 135
    :catchall_86
    move-exception p0

    .line 136
    move-object v3, p1

    .line 137
    :goto_88
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 143
    throw p0

    .line 144
    :catch_8f
    move-object v3, p1

    .line 145
    :catch_90
    :goto_90
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 151
    return v2
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_13

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 13
    move-result-object p0

    .line 14
    :try_start_d
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catch_12
    return v0

    .line 20
    :cond_13
    new-instance v0, Ljava/io/File;

    .line 22
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method private static deleteEmptyFolder(Ljava/io/File;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_19

    .line 15
    array-length v2, v0

    .line 16
    :goto_f
    if-ge v1, v2, :cond_19

    .line 18
    aget-object v3, v0, v1

    .line 20
    invoke-static {v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->deleteEmptyFolder(Ljava/io/File;)Z

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_f

    .line 26
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method private static deleteFolder(Ljava/io/File;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/io/File;

    .line 18
    sget-object v2, Lcom/micloud/midrive/utils/DiskFileOperator;->MOVE_PATH:Ljava/lang/String;

    .line 20
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2c

    .line 34
    const/4 p0, 0x1

    .line 35
    new-array v0, p0, [Ljava/lang/Object;

    .line 37
    const-string v2, "do not delete move path."

    .line 39
    aput-object v2, v0, v1

    .line 41
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 44
    return p0

    .line 45
    :cond_2c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3d

    .line 51
    array-length v2, v0

    .line 52
    :goto_33
    if-ge v1, v2, :cond_3d

    .line 54
    aget-object v3, v0, v1

    .line 56
    invoke-static {v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->deleteFolder(Ljava/io/File;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_33

    .line 62
    :cond_3d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public static isDiskFullAfterDownload(J)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    .line 4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_e} :catch_1c

    .line 15
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 22
    move-result-wide v4

    .line 23
    mul-long/2addr v4, v2

    .line 24
    cmp-long p0, p0, v4

    .line 26
    if-ltz p0, :cond_1c

    .line 28
    const/4 v0, 0x1

    .line 29
    :catch_1c
    :cond_1c
    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 6
    if-lt v0, v2, :cond_36

    .line 8
    new-array v0, v1, [Ljava/lang/String;

    .line 10
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 13
    move-result-object p0

    .line 14
    new-array v0, v1, [Ljava/lang/String;

    .line 16
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 23
    move-result-object v0

    .line 24
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 26
    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2a

    .line 32
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_2a
    const/4 v0, 0x1

    .line 44
    :try_start_2b
    new-array v2, v0, [Ljava/nio/file/CopyOption;

    .line 46
    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 48
    aput-object v3, v2, v1

    .line 50
    invoke-static {p0, p1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_35

    .line 53
    return v0

    .line 54
    :catch_35
    return v1

    .line 55
    :cond_36
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/DiskFileOperator;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3d

    .line 61
    return v1

    .line 62
    :cond_3d
    new-instance p1, Ljava/io/File;

    .line 64
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 70
    move-result p0

    .line 71
    return p0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 6
    if-lt v0, v2, :cond_19

    .line 8
    new-array v0, v1, [Ljava/lang/String;

    .line 10
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 13
    move-result-object p0

    .line 14
    :try_start_d
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 17
    move-result-object p1

    .line 18
    new-array v0, v1, [Ljava/nio/file/CopyOption;

    .line 20
    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_18

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :catch_18
    return v1

    .line 26
    :cond_19
    new-instance v0, Ljava/io/File;

    .line 28
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    new-instance p0, Ljava/io/File;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 54
    invoke-static {v2, v3, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_43

    .line 67
    return v1

    .line 68
    :cond_43
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 71
    move-result p0

    .line 72
    return p0
.end method
