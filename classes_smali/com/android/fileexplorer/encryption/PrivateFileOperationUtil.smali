.class public Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;
.super Ljava/lang/Object;
.source "PrivateFileOperationUtil.java"


# static fields
.field public static final HEADER_PREFIX:Ljava/lang/String; = ".header_backup_"

.field public static final LOCK_PREFIX:Ljava/lang/String; = ".lock_"

.field public static final NEW_PRIVATE_PREFIX_START:Ljava/lang/String; = "FE_P_"

.field public static final NEW_PRIVATE_SUFFIX_START:Ljava/lang/String; = "_"

.field public static final POSTFIX:Ljava/lang/String; = "_encrypted"

.field public static final POSTFIX_NEW:Ljava/lang/String; = "_encrypted_new"

.field public static final PREFIX_END:Ljava/lang/String; = "]}"

.field public static final PREFIX_START:Ljava/lang/String; = "{["

.field private static final TAG:Ljava/lang/String; = "PrivateFileOperationUtil"

.field public static final THUMB_PREFIX:Ljava/lang/String; = ".thumb_"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupHeader([BLjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->bytesToFile([BLjava/lang/String;)V

    .line 8
    return-object p1
.end method

.method public static bytesToFile([BLjava/lang/String;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_44

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_3d

    .line 19
    check-cast p1, Ls0/c;

    .line 21
    iget-object p1, p1, Ls0/c;->c:Landroid/net/Uri;

    .line 23
    if-eqz p1, :cond_27

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v2

    .line 33
    const-string v3, "rw"

    .line 35
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 38
    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_8b
    .catchall {:try_start_1 .. :try_end_26} :catchall_87

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move-object p1, v0

    .line 41
    :goto_28
    if-eqz p1, :cond_3b

    .line 43
    :try_start_2a
    new-instance v2, Ljava/io/FileOutputStream;

    .line 45
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_38
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    .line 52
    goto :goto_46

    .line 53
    :catchall_34
    move-exception p0

    .line 54
    move-object v2, v0

    .line 55
    goto/16 :goto_ae

    .line 57
    :catch_38
    move-exception p0

    .line 58
    move-object v2, v0

    .line 59
    goto :goto_8e

    .line 60
    :cond_3b
    move-object v2, v0

    .line 61
    goto :goto_46

    .line 62
    :cond_3d
    :try_start_3d
    sget-object p1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 64
    const-string v2, "documentFile is null"

    .line 66
    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_8b
    .catchall {:try_start_3d .. :try_end_44} :catchall_87

    .line 69
    :cond_44
    move-object p1, v0

    .line 70
    move-object v2, p1

    .line 71
    :goto_46
    if-nez v2, :cond_6d

    .line 73
    :try_start_48
    new-instance v3, Ljava/io/File;

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_5a

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_5a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_64

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 100
    goto :goto_67

    .line 101
    :cond_64
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 104
    :goto_67
    new-instance v3, Ljava/io/FileOutputStream;

    .line 106
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    move-object v2, v3

    .line 110
    :cond_6d
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 112
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_72} :catch_85
    .catchall {:try_start_48 .. :try_end_72} :catchall_ad

    .line 115
    :try_start_72
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_82
    .catchall {:try_start_72 .. :try_end_75} :catchall_7f

    .line 118
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    :goto_78
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    goto :goto_ac

    .line 128
    :catchall_7f
    move-exception p0

    .line 129
    move-object v0, v1

    .line 130
    goto :goto_ae

    .line 131
    :catch_82
    move-exception p0

    .line 132
    move-object v0, v1

    .line 133
    goto :goto_8e

    .line 134
    :catch_85
    move-exception p0

    .line 135
    goto :goto_8e

    .line 136
    :catchall_87
    move-exception p0

    .line 137
    move-object p1, v0

    .line 138
    move-object v2, p1

    .line 139
    goto :goto_ae

    .line 140
    :catch_8b
    move-exception p0

    .line 141
    move-object p1, v0

    .line 142
    move-object v2, p1

    .line 143
    :goto_8e
    :try_start_8e
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v4, "bytesToFile error:"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_ad

    .line 169
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 172
    goto :goto_78

    .line 173
    :goto_ac
    return-void

    .line 174
    :catchall_ad
    move-exception p0

    .line 175
    :goto_ae
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    throw p0
.end method

.method public static copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I
    .registers 12

    .line 1
    instance-of v0, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    const/4 v1, 0x4

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v2, p0

    .line 8
    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_11

    .line 16
    const/4 p0, 0x5

    .line 17
    return p0

    .line 18
    :cond_11
    if-eqz p1, :cond_4f

    .line 20
    if-nez p2, :cond_16

    .line 22
    goto :goto_4f

    .line 23
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_25

    .line 29
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 31
    const-string p1, "CopyFile: file not exist"

    .line 33
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 p0, 0x6

    .line 37
    return p0

    .line 38
    :cond_25
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_42

    .line 44
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string p3, "destFile exists:"

    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v1

    .line 67
    :cond_42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    move-object v4, p2

    .line 74
    move v6, p3

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :cond_4f
    :goto_4f
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 82
    const-string p1, "CopyFile: null parameter"

    .line 84
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 p0, 0x2

    .line 88
    return p0
.end method

.method public static createLock(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_10

    .line 12
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_10
    return v1
.end method

.method public static deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static deleteLock(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_8b

    .line 8
    new-instance v1, Ljava/io/File;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1f

    .line 23
    new-instance v1, Ljava/io/File;

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_8b

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4b

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 56
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_4b

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 68
    invoke-static {p0, v3, p2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    goto :goto_37

    .line 76
    :cond_4b
    instance-of v2, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 78
    if-eqz v2, :cond_58

    .line 80
    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 85
    move-result-wide v2

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    .line 89
    :cond_58
    const/4 p0, 0x0

    .line 90
    invoke-static {v1, p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_6e

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_8b

    .line 102
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    .line 105
    if-eqz p2, :cond_8b

    .line 107
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_8b

    .line 111
    :cond_6e
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 113
    const-string p2, "Error when deleting file: "

    .line 115
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_8b
    :goto_8b
    return-object v0
.end method

.method public static deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static fileToBytes(Ljava/lang/String;)[B
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    move-result p0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_4f
    .catchall {:try_start_4 .. :try_end_d} :catchall_4a

    .line 14
    if-nez p0, :cond_16

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    return-object v0

    .line 23
    :cond_16
    :try_start_16
    new-instance p0, Ljava/io/FileInputStream;

    .line 25
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_4f
    .catchall {:try_start_16 .. :try_end_1b} :catchall_4a

    .line 28
    :try_start_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 30
    const/16 v2, 0x3e8

    .line 32
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_47
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_44
    .catchall {:try_start_1b .. :try_end_22} :catchall_3f

    .line 35
    :try_start_22
    new-array v2, v2, [B

    .line 37
    :goto_24
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 40
    move-result v3

    .line 41
    const/4 v4, -0x1

    .line 42
    if-eq v3, v4, :cond_30

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 48
    goto :goto_24

    .line 49
    :cond_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    move-result-object v0
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_34} :catch_3d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_3b
    .catchall {:try_start_22 .. :try_end_34} :catchall_6a

    .line 53
    :goto_34
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    goto :goto_69

    .line 60
    :catch_3b
    move-exception v2

    .line 61
    goto :goto_52

    .line 62
    :catch_3d
    move-exception v2

    .line 63
    goto :goto_5f

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    move-object v5, v1

    .line 66
    move-object v1, v0

    .line 67
    move-object v0, v5

    .line 68
    goto :goto_6b

    .line 69
    :catch_44
    move-exception v2

    .line 70
    move-object v1, v0

    .line 71
    goto :goto_52

    .line 72
    :catch_47
    move-exception v2

    .line 73
    move-object v1, v0

    .line 74
    goto :goto_5f

    .line 75
    :catchall_4a
    move-exception p0

    .line 76
    move-object v1, v0

    .line 77
    move-object v0, p0

    .line 78
    move-object p0, v1

    .line 79
    goto :goto_6b

    .line 80
    :catch_4f
    move-exception v2

    .line 81
    move-object p0, v0

    .line 82
    move-object v1, p0

    .line 83
    :goto_52
    :try_start_52
    sget-object v3, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto :goto_34

    .line 93
    :catch_5c
    move-exception v2

    .line 94
    move-object p0, v0

    .line 95
    move-object v1, p0

    .line 96
    :goto_5f
    sget-object v3, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_6a

    .line 105
    goto :goto_34

    .line 106
    :goto_69
    return-object v0

    .line 107
    :catchall_6a
    move-exception v0

    .line 108
    :goto_6b
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    throw v0
.end method

.method public static generateThumb(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_20

    .line 16
    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 18
    if-eqz v2, :cond_20

    .line 20
    const-string v2, "_"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_20

    .line 28
    add-int/2addr v2, v3

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    :cond_20
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromExtension(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_4b

    .line 40
    if-eq v0, v3, :cond_42

    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq v0, v2, :cond_39

    .line 45
    const/4 v2, 0x3

    .line 46
    if-eq v0, v2, :cond_30

    .line 48
    goto :goto_53

    .line 49
    :cond_30
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getApkThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 56
    move-result-object v1

    .line 57
    goto :goto_53

    .line 58
    :cond_39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 65
    move-result-object v1

    .line 66
    goto :goto_53

    .line 67
    :cond_42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getAudioThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 74
    move-result-object v1

    .line 75
    goto :goto_53

    .line 76
    :cond_4b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 83
    move-result-object v1

    .line 84
    :goto_53
    if-eqz v1, :cond_5d

    .line 86
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0, p2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object p0

    .line 94
    :cond_5d
    const-string p0, ""

    .line 96
    return-object p0
.end method

.method public static getOpenFileCacheDir()Ljava/io/File;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    const-string v2, "/private"

    .line 13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static getPrivateFileHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)[B
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_16

    .line 11
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    .line 20
    move-result-object p0

    .line 21
    goto/16 :goto_6a

    .line 23
    :cond_16
    new-instance v0, Ljava/io/File;

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 35
    move-result p0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_27

    .line 39
    return-object v1

    .line 40
    :cond_27
    :try_start_27
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 42
    const-string v2, "r"

    .line 44
    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_57
    .catchall {:try_start_27 .. :try_end_2e} :catchall_54

    .line 47
    const-wide/16 v2, 0x400

    .line 49
    :try_start_30
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 52
    move-result-wide v4

    .line 53
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 56
    move-result-wide v2

    .line 57
    long-to-int v0, v2

    .line 58
    const/16 v2, 0x10

    .line 60
    if-ge v0, v2, :cond_3e

    .line 62
    move v0, v2

    .line 63
    :cond_3e
    new-array v0, v0, [B
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_40} :catch_4f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_4a
    .catchall {:try_start_30 .. :try_end_40} :catchall_6b

    .line 65
    :try_start_40
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_6b

    .line 68
    goto :goto_66

    .line 69
    :catch_44
    move-exception v1

    .line 70
    goto :goto_5b

    .line 71
    :catch_46
    move-exception v1

    .line 72
    goto :goto_63

    .line 73
    :goto_48
    move-object v1, p0

    .line 74
    goto :goto_6d

    .line 75
    :catch_4a
    move-exception v0

    .line 76
    move-object v6, v1

    .line 77
    move-object v1, v0

    .line 78
    move-object v0, v6

    .line 79
    goto :goto_5b

    .line 80
    :catch_4f
    move-exception v0

    .line 81
    move-object v6, v1

    .line 82
    move-object v1, v0

    .line 83
    move-object v0, v6

    .line 84
    goto :goto_63

    .line 85
    :catchall_54
    move-exception p0

    .line 86
    move-object v0, p0

    .line 87
    goto :goto_6d

    .line 88
    :catch_57
    move-exception p0

    .line 89
    move-object v0, v1

    .line 90
    move-object v1, p0

    .line 91
    move-object p0, v0

    .line 92
    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    goto :goto_66

    .line 96
    :catch_5f
    move-exception p0

    .line 97
    move-object v0, v1

    .line 98
    move-object v1, p0

    .line 99
    move-object p0, v0

    .line 100
    :goto_63
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_6b

    .line 103
    :goto_66
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    move-object p0, v0

    .line 107
    :goto_6a
    return-object p0

    .line 108
    :catchall_6b
    move-exception v0

    .line 109
    goto :goto_48

    .line 110
    :goto_6d
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    throw v0
.end method

.method public static moveInternalToSD(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v9

    .line 30
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_33

    .line 36
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p2

    .line 45
    move-object v3, v6

    .line 46
    move-object v4, v8

    .line 47
    move-object v5, v7

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 51
    goto :goto_1d

    .line 52
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 55
    move-result-object p1

    .line 56
    array-length v0, p1

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_39
    if-ge v1, v0, :cond_5f

    .line 60
    aget-object v2, p1, v1

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_53

    .line 76
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 78
    const-string p1, "path error"

    .line 80
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    new-instance v4, Ljava/io/File;

    .line 86
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    const/4 v3, 0x1

    .line 90
    invoke-static {p0, v2, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 95
    goto :goto_39

    .line 96
    :cond_5f
    :goto_5f
    invoke-static {v7}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    .line 99
    invoke-static {v6}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_69

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    const/4 v8, 0x0

    .line 107
    :goto_6a
    return-object v8
.end method

.method public static restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_131

    .line 3
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 5
    if-eqz v0, :cond_8

    .line 7
    goto/16 :goto_131

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "Restoring file "

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v2, Ljava/io/File;

    .line 38
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3b

    .line 51
    new-instance v2, Ljava/io/File;

    .line 53
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    :cond_3b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_71

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteLock(Ljava/lang/String;)Z

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v2, "Restore error, "

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " not exist"

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v1

    .line 114
    :cond_71
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_97

    .line 120
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 122
    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_130

    .line 128
    array-length v0, p1

    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_81
    if-ge v2, v0, :cond_130

    .line 132
    aget-object v3, p1, v2

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 141
    move-result-object v3

    .line 142
    invoke-static {p0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_81

    .line 152
    :cond_97
    instance-of v3, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 154
    if-eqz v3, :cond_a5

    .line 156
    move-object v4, p0

    .line 157
    check-cast v4, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 162
    move-result-wide v5

    .line 163
    invoke-virtual {v4, v5, v6}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    .line 166
    :cond_a5
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 170
    invoke-static {v4}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_111

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    move-result-object v5

    .line 180
    invoke-static {v4, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->writeHeader([BLjava/lang/String;)Z

    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_f1

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_d8

    .line 200
    if-eqz v3, :cond_d8

    .line 202
    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 204
    new-instance v3, Ljava/io/File;

    .line 206
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 210
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x1

    .line 214
    invoke-static {p0, v2, v3, v4}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    .line 217
    :cond_d8
    const-string p0, "Restore successfully, "

    .line 219
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object p0

    .line 238
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    goto :goto_130

    .line 242
    :cond_f1
    const-string p0, "Restore error when writing headers, "

    .line 244
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object p0

    .line 259
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 265
    move-result-object p0

    .line 266
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    goto :goto_130

    .line 274
    :cond_111
    const-string p0, "Cannot find backup header file "

    .line 276
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 291
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 297
    move-result-object p0

    .line 298
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_130
    :goto_130
    return-object v1

    .line 306
    :cond_131
    :goto_131
    new-instance p0, Ljava/util/ArrayList;

    .line 308
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    return-object p0
.end method

.method private static saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1d

    .line 12
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 14
    const/16 v2, 0x64

    .line 16
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->bytesToFile([BLjava/lang/String;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public static writeHeader([BLjava/lang/String;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_17

    .line 8
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 10
    const-string v2, "writeHeader with documentFile"

    .line 12
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/io/File;

    .line 17
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v1, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    .line 23
    goto :goto_27

    .line 24
    :cond_17
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 26
    const-string v2, "rw"

    .line 28
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_4a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_48

    .line 31
    const-wide/16 v2, 0x0

    .line 33
    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_45
    .catchall {:try_start_20 .. :try_end_26} :catchall_42

    .line 39
    move-object v0, v1

    .line 40
    :goto_27
    :try_start_27
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, " write header success"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_4a
    .catchall {:try_start_27 .. :try_end_3d} :catchall_48

    .line 62
    const/4 p0, 0x1

    .line 63
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    goto :goto_6c

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    move-object v0, v1

    .line 69
    goto :goto_6d

    .line 70
    :catch_45
    move-exception p0

    .line 71
    move-object v0, v1

    .line 72
    goto :goto_4b

    .line 73
    :catchall_48
    move-exception p0

    .line 74
    goto :goto_6d

    .line 75
    :catch_4a
    move-exception p0

    .line 76
    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, " write header error"

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_48

    .line 105
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    const/4 p0, 0x0

    .line 109
    :goto_6c
    return p0

    .line 110
    :goto_6d
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    throw p0
.end method
