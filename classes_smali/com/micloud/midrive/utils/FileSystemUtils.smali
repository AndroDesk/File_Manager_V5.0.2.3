.class public Lcom/micloud/midrive/utils/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "FileSystemUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static canRead(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_19

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_19

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_19
    return v1
.end method

.method public static clearDirectory(Ljava/io/File;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->ensureAbsolute(Ljava/io/File;)V

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3d

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v2, v1, :cond_23

    .line 15
    aget-object v4, v0, v2

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_19

    .line 23
    :try_start_16
    invoke-static {v4}, Lcom/micloud/midrive/utils/FileSystemUtils;->clearDirectory(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    .line 26
    :catch_19
    :cond_19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_20

    .line 32
    const/4 v3, 0x1

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_c

    .line 36
    :cond_23
    if-nez v3, :cond_26

    .line 38
    return-void

    .line 39
    :cond_26
    new-instance v0, Ljava/io/IOException;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "failed to remove some files in "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v2, "failed to list "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0
.end method

.method private static ensureAbsolute(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "only accept absolute path"

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static getCreateTime(Ljava/io/File;)J
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_70

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_70

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v1, 0x1a

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-lt v0, v1, :cond_53

    .line 21
    :try_start_14
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 24
    move-result-object v0

    .line 25
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 27
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    .line 29
    invoke-static {v0, v1, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    .line 36
    move-result-object v0

    .line 37
    new-array v1, v2, [Ljava/lang/Object;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v5, "create time:"

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 52
    move-result-wide v5

    .line 53
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    aput-object v4, v1, v3

    .line 62
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 68
    move-result-wide v0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_44} :catch_45

    .line 69
    return-wide v0

    .line 70
    :catch_45
    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    const-string v1, "getCreateTime"

    .line 75
    aput-object v1, v0, v3

    .line 77
    const-string v1, "Get file create time error"

    .line 79
    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 84
    :cond_53
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 87
    move-result-wide v0

    .line 88
    new-array p0, v2, [Ljava/lang/Object;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v4, "last modify time:"

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    aput-object v2, p0, v3

    .line 109
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 112
    return-wide v0

    .line 113
    :cond_70
    new-instance v0, Ljava/io/IOException;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string p0, " file info error."

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_17

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_12

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_17
    :goto_17
    const-wide/16 v0, 0x0

    .line 26
    return-wide v0
.end method

.method public static getPhotoShootingTime(Ljava/io/File;)Ljava/util/Date;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1d

    .line 6
    if-le v0, v2, :cond_66

    .line 8
    if-eqz p0, :cond_66

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_66

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_66

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_17
    new-instance v3, Landroid/media/ExifInterface;

    .line 26
    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 29
    const-string v4, "DateTime"

    .line 31
    invoke-virtual {v3, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_25

    .line 37
    goto :goto_34

    .line 38
    :cond_25
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 40
    const-string v5, "yyyy:MM:dd HH:mm:ss"

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 45
    move-result-object v6

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 52
    move-result-object v1
    :try_end_34
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_34} :catch_4e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_34} :catch_35

    .line 53
    :goto_34
    return-object v1

    .line 54
    :catch_35
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    const-string v3, "io error:"

    .line 58
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    aput-object p0, v2, v0

    .line 75
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 78
    goto :goto_66

    .line 79
    :catch_4e
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    const-string v3, "parse time fail:"

    .line 83
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    aput-object p0, v2, v0

    .line 100
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 103
    :cond_66
    :goto_66
    return-object v1
.end method

.method public static getUniquePathIfFileExisted(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v0

    .line 1
    :goto_3
    invoke-static {v1}, La/a;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_3f

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_53

    .line 6
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6b
    return-object v1
.end method

.method public static getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 11
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 14
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 15
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 16
    :cond_37
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v1, :cond_13

    .line 17
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_41
    const/4 p1, 0x0

    move-object v1, p0

    move v3, p1

    .line 18
    :goto_44
    invoke-static {v1}, La/a;->A(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 19
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_5b

    :cond_5a
    return-object v1

    :cond_5b
    :goto_5b
    add-int/2addr v3, v2

    const/16 v1, 0x2f

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_8f

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a3

    .line 24
    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    :goto_a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44
.end method

.method public static getVideoShootingTime(Ljava/io/File;)Ljava/util/Date;
    .registers 7

    .line 1
    if-eqz p0, :cond_65

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_65

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_65

    .line 15
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 17
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    :try_start_15
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 29
    const/4 v3, 0x5

    .line 30
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_65

    .line 36
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 38
    const-string v4, "yyyyMMdd\'T\'HHmmss"

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 50
    move-result-object p0
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_32} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_32} :catch_33

    .line 51
    return-object p0

    .line 52
    :catch_33
    move-exception p0

    .line 53
    new-array v0, v2, [Ljava/lang/Object;

    .line 55
    const-string v2, "getVideoShootingTime RuntimeException:"

    .line 57
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    aput-object p0, v0, v1

    .line 74
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 77
    goto :goto_65

    .line 78
    :catch_4d
    new-array v0, v2, [Ljava/lang/Object;

    .line 80
    const-string v2, "parse video time fail:"

    .line 82
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    aput-object p0, v0, v1

    .line 99
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 102
    :cond_65
    :goto_65
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method

.method private static isEmptyDirectory(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 7
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 9
    array-length p0, v1

    if-nez p0, :cond_32

    const/4 p0, 0x1

    return p0

    .line 10
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return v0
.end method

.method private static isEmptyDirectory(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 5
    array-length p0, p0

    if-nez p0, :cond_3b

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_24
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    return v1
.end method

.method public static isNotExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "content"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2b

    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "r"

    .line 21
    invoke-virtual {p0, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 24
    move-result-object p0
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_18} :catch_1d

    .line 25
    if-nez p0, :cond_1b

    .line 27
    goto :goto_34

    .line 28
    :cond_1b
    move v1, v0

    .line 29
    goto :goto_34

    .line 30
    :catch_1d
    new-array p0, v1, [Ljava/lang/Object;

    .line 32
    const-string v2, "file is not exist: "

    .line 34
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    aput-object p1, p0, v0

    .line 40
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 43
    goto :goto_34

    .line 44
    :cond_2b
    new-instance p0, Ljava/io/File;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 52
    move-result v1

    .line 53
    :goto_34
    return v1
.end method

.method public static reliableNotExists(Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->ensureAbsolute(Ljava/io/File;)V

    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_a} :catch_b

    .line 11
    goto :goto_16

    .line 12
    :catch_b
    move-exception p0

    .line 13
    const/4 v0, 0x2

    .line 14
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    .line 16
    if-eq v0, p0, :cond_18

    .line 18
    const/16 v0, 0x14

    .line 20
    if-ne v0, p0, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    :goto_16
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_18
    :goto_18
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public static removeFileAndEmptyParentDirectory(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileOrEmptyDirectoryIfExists(Ljava/io/File;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1b

    .line 14
    invoke-static {v0}, Lcom/micloud/midrive/utils/FileSystemUtils;->isEmptyDirectory(Ljava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    new-instance p1, Ljava/io/File;

    .line 22
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileAndEmptyParentDirectory(Ljava/lang/String;Ljava/io/File;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public static removeFileIfExists(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->ensureAbsolute(Ljava/io/File;)V

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    :try_start_9
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->clearDirectory(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_c

    .line 13
    :catch_c
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 16
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "failed to remove "

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public static removeFileOrEmptyDirectoryIfExists(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->ensureAbsolute(Ljava/io/File;)V

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->isEmptyDirectory(Ljava/io/File;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileSystemUtils;->reliableNotExists(Ljava/io/File;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "failed to remove "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0
.end method

.method public static removeFiles(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3c

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 20
    const-string v1, "content"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_28

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    goto :goto_7

    .line 41
    :cond_28
    :try_start_28
    new-instance v1, Ljava/io/File;

    .line 43
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {v1}, Lcom/micloud/midrive/utils/FileSystemUtils;->removeFileIfExists(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    .line 49
    goto :goto_7

    .line 50
    :catch_31
    move-exception v0

    .line 51
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    const/4 v2, 0x0

    .line 55
    aput-object v0, v1, v2

    .line 57
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 60
    goto :goto_7

    .line 61
    :cond_3c
    return-void
.end method

.method public static splitPathToArray(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_8

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    return-object p0

    .line 9
    :cond_8
    const-string v0, "/"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
