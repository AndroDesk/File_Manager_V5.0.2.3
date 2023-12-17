.class public Lcom/android/fileexplorer/filemanager/FileDeleteUtils;
.super Ljava/lang/Object;
.source "FileDeleteUtils.java"


# static fields
.field private static final DELETE_AUDIO_PATH:Ljava/lang/String; = "/system/media/audio/ui/Delete.ogg"

.field private static final TAG:Ljava/lang/String; = "FileDeleteUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileInfoWithPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 9
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFileReal(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/io/File;Z)Z
    .registers 2

    .line 3
    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFileReal(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private static deleteFileNormal(Ljava/io/File;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "FileDeleteUtils"

    .line 4
    if-nez p0, :cond_b

    .line 6
    const-string p0, "deleteFileNormal: file is null"

    .line 8
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_18

    .line 18
    const-string p0, "deleteFileNormal: file is not exist"

    .line 20
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_28

    .line 35
    const-string p0, "deleteFileNormal: file is limit"

    .line 37
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return v0

    .line 41
    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_58

    .line 47
    const-string v2, "deleteFileNormal: file is dir"

    .line 49
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_58

    .line 58
    array-length v3, v2

    .line 59
    :goto_3a
    if-ge v0, v3, :cond_58

    .line 61
    aget-object v4, v2, v0

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-static {v5}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_55

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_55

    .line 83
    invoke-static {v4}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFileNormal(Ljava/io/File;)Z

    .line 86
    :cond_55
    add-int/lit8 v0, v0, 0x1

    .line 88
    goto :goto_3a

    .line 89
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "start delete"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 116
    move-result v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string p0, "delete result :"

    .line 131
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method private static deleteFileReal(Ljava/io/File;Z)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "FileDeleteUtils"

    .line 4
    if-nez p0, :cond_b

    .line 6
    const-string p0, "file is null"

    .line 8
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2b

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p0, " deleteFileReal: file not exists"

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3b

    .line 54
    const-string p0, "file is limit"

    .line 56
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v0

    .line 60
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    if-eqz p1, :cond_45

    .line 67
    invoke-static {v2, p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->getDeleteFilePathsWithFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 70
    :cond_45
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_73

    .line 76
    const-string v3, "deleteFile onSD use DocumentFile"

    .line 78
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_50
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/lang/String;)Ls0/a;

    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->deleteFile(Ls0/a;)Z

    .line 92
    move-result v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5c} :catch_5d

    .line 93
    goto :goto_77

    .line 94
    :catch_5d
    move-exception v3

    .line 95
    const-string v4, "deleteFileWithDocumentFile error: "

    .line 97
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    goto :goto_77

    .line 116
    :cond_73
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFileNormal(Ljava/io/File;)Z

    .line 119
    move-result v0

    .line 120
    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v4, "deleteFileReal: result = "

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v3

    .line 137
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v0, :cond_9c

    .line 142
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    .line 149
    if-eqz p1, :cond_9c

    .line 151
    invoke-static {v2}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanByDeleteFile(Ljava/util/ArrayList;)V

    .line 154
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->removeFromFavDb(Ljava/util/List;)V

    .line 157
    :cond_9c
    return v0
.end method

.method public static deleteFiles(Ljava/util/List;ZLjava/lang/ref/WeakReference;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "FileDeleteUtils"

    .line 3
    if-eqz p1, :cond_3c

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3c

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3c

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    const-string v2, "deleteFiles: "

    .line 29
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz v1, :cond_e

    .line 34
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 36
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_e

    .line 42
    const-string p1, "deleteFiles: on ExSD"

    .line 44
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3c

    .line 53
    const-string p0, "deleteFiles: on ExSD no permission"

    .line 55
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/16 p0, 0x11

    .line 60
    return p0

    .line 61
    :cond_3c
    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFilesAndUpdateDB(Ljava/util/List;Ljava/lang/ref/WeakReference;)I

    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_61

    .line 67
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->hasDeleteSoundEffect(Landroid/content/Context;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_5a

    .line 77
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 80
    move-result-object p0

    .line 81
    new-instance p1, Ljava/io/File;

    .line 83
    const-string p2, "/system/media/audio/ui/Delete.ogg"

    .line 85
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->playDeleteAudio(Landroid/content/Context;Ljava/io/File;)V

    .line 91
    :cond_5a
    const-string p0, "RESULT_SUCCESS: "

    .line 93
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 p0, 0x0

    .line 97
    return p0

    .line 98
    :cond_61
    const-string p1, "RESULT_ERROR_UNKNOWN: "

    .line 100
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return p0
.end method

.method private static deleteFilesAndUpdateDB(Ljava/util/List;Ljava/lang/ref/WeakReference;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    move v2, v1

    .line 12
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const-string v5, "FileDeleteUtils"

    .line 19
    if-eqz v3, :cond_60

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 33
    if-eqz v6, :cond_45

    .line 35
    invoke-interface {v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_29

    .line 41
    goto :goto_45

    .line 42
    :cond_29
    if-nez v3, :cond_2c

    .line 44
    goto :goto_b

    .line 45
    :cond_2c
    new-instance v2, Ljava/io/File;

    .line 47
    iget-object v6, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 49
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v6, "getDeleteFiles start: "

    .line 54
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v0, v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->getDeleteFilePaths(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 60
    const-string v3, "getDeleteFiles end: "

    .line 62
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v2, v4}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFileReal(Ljava/io/File;Z)Z

    .line 68
    move-result v2

    .line 69
    goto :goto_b

    .line 70
    :cond_45
    :goto_45
    const-string p0, "activity is null :"

    .line 72
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p0

    .line 76
    if-nez v6, :cond_4e

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move v1, v4

    .line 80
    :goto_4f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string p1, "userCanceled:"

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v5, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 p0, 0x5

    .line 96
    return p0

    .line 97
    :cond_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_8c

    .line 103
    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanByDeleteFile(Ljava/util/ArrayList;)V

    .line 106
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 115
    move-result-object p0

    .line 116
    iget p0, p0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 118
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 123
    move-result p1

    .line 124
    if-ne p0, p1, :cond_89

    .line 126
    const-string p0, "deleteFilesAndUpdateDB: true"

    .line 128
    invoke-static {v5, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileItemAndFileGroupDetail(Ljava/util/ArrayList;)V

    .line 138
    :cond_89
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->removeFromFavDb(Ljava/util/List;)V

    .line 141
    :cond_8c
    if-eqz v2, :cond_8f

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    const/4 v4, 0x4

    .line 145
    :goto_90
    return v4
.end method

.method private static getDeleteFilePaths(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_40

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_40

    .line 6
    :cond_5
    new-instance v0, Ljava/io/File;

    .line 8
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3d

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3d

    .line 25
    array-length v1, v0

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    if-ge v3, v1, :cond_3d

    .line 30
    aget-object v4, v0, v3

    .line 32
    new-instance v5, Lcom/android/fileexplorer/model/FileInfo;

    .line 34
    invoke-direct {v5}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2f

    .line 47
    goto :goto_3a

    .line 48
    :cond_2f
    iput v2, v5, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    iput-object v4, v5, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 56
    invoke-static {p0, v5}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->getDeleteFilePaths(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 59
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_1b

    .line 62
    :cond_3d
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method private static getDeleteFilePathsWithFile(Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2f

    .line 3
    if-eqz p1, :cond_2f

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_2f

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_23

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_23

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    if-ge v2, v1, :cond_23

    .line 28
    aget-object v3, v0, v2

    .line 30
    invoke-static {p0, v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->getDeleteFilePathsWithFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_19

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->createFileInfoWithPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void

    .line 48
    :cond_2f
    :goto_2f
    const-string p0, "FileDeleteUtils"

    .line 50
    const-string p1, "getDeleteFilePathsWithFile:file is null or not exists."

    .line 52
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static hasDeleteSoundEffect(Landroid/content/Context;)Z
    .registers 12

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    const-string v1, "android.provider.MiuiSettings$System"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "DELETE_SOUND_EFFECT"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getBooleanForUser"

    .line 16
    const/4 v4, 0x4

    .line 17
    new-array v5, v4, [Ljava/lang/Class;

    .line 19
    const-class v6, Landroid/content/ContentResolver;

    .line 21
    const/4 v7, 0x0

    .line 22
    aput-object v6, v5, v7

    .line 24
    const-class v6, Ljava/lang/String;

    .line 26
    aput-object v6, v5, v0

    .line 28
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 30
    const/4 v8, 0x2

    .line 31
    aput-object v6, v5, v8

    .line 33
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    const/4 v9, 0x3

    .line 36
    aput-object v6, v5, v9

    .line 38
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v3

    .line 42
    const-class v5, Landroid/os/UserHandle;

    .line 44
    const-string v6, "myUserId"

    .line 46
    new-array v10, v7, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object v5

    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v5, :cond_43

    .line 55
    new-array v10, v7, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v5, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/lang/Integer;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v5

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v5, v7

    .line 69
    :goto_44
    if-eqz v3, :cond_79

    .line 71
    if-eqz v2, :cond_79

    .line 73
    if-eqz p0, :cond_79

    .line 75
    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object p0

    .line 81
    aput-object p0, v4, v7

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    aput-object p0, v4, v0

    .line 93
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    aput-object p0, v4, v8

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p0

    .line 101
    aput-object p0, v4, v9

    .line 103
    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Ljava/lang/Boolean;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    move-result p0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_71

    .line 113
    return p0

    .line 114
    :catch_71
    move-exception p0

    .line 115
    const-string v1, "FileDeleteUtils"

    .line 117
    const-string v2, "hasDeleteSoundEffect()"

    .line 119
    invoke-static {v1, v2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :cond_79
    return v0
.end method

.method public static playDeleteAudio()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/Delete.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->playDeleteAudio(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static playDeleteAudio(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    const-string v0, "FileDeleteUtils"

    if-eqz p1, :cond_45

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    if-nez p0, :cond_d

    goto :goto_45

    .line 3
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 4
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 8
    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2c

    goto :goto_44

    :catch_2c
    move-exception p0

    const-string p1, "playDeleteAudio eror:"

    .line 9
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_44
    :goto_44
    return-void

    :cond_45
    :goto_45
    const-string p0, "audio for delete not exists!"

    .line 12
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static removeFromFavDb(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 35
    move-result-object p0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 40
    return-void
.end method
