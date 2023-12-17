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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupHeader([BLjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->bytesToFile([BLjava/lang/String;)V

    return-object p1
.end method

.method public static bytesToFile([BLjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p1

    if-eqz p1, :cond_3d

    check-cast p1, Ls0/c;

    iget-object p1, p1, Ls0/c;->c:Landroid/net/Uri;

    if-eqz p1, :cond_27

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_8b
    .catchall {:try_start_1 .. :try_end_26} :catchall_87

    goto :goto_28

    :cond_27
    move-object p1, v0

    :goto_28
    if-eqz p1, :cond_3b

    :try_start_2a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_38
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_46

    :catchall_34
    move-exception p0

    move-object v2, v0

    goto/16 :goto_ae

    :catch_38
    move-exception p0

    move-object v2, v0

    goto :goto_8e

    :cond_3b
    move-object v2, v0

    goto :goto_46

    :cond_3d
    :try_start_3d
    sget-object p1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string v2, "documentFile is null"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_8b
    .catchall {:try_start_3d .. :try_end_44} :catchall_87

    :cond_44
    move-object p1, v0

    move-object v2, p1

    :goto_46
    if-nez v2, :cond_6d

    :try_start_48
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_5a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_67

    :cond_64
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :goto_67
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    :cond_6d
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_72} :catch_85
    .catchall {:try_start_48 .. :try_end_72} :catchall_ad

    :try_start_72
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_82
    .catchall {:try_start_72 .. :try_end_75} :catchall_7f

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_78
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_ac

    :catchall_7f
    move-exception p0

    move-object v0, v1

    goto :goto_ae

    :catch_82
    move-exception p0

    move-object v0, v1

    goto :goto_8e

    :catch_85
    move-exception p0

    goto :goto_8e

    :catchall_87
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    goto :goto_ae

    :catch_8b
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    :goto_8e
    :try_start_8e
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytesToFile error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_ad

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_78

    :goto_ac
    return-void

    :catchall_ad
    move-exception p0

    :goto_ae
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I
    .registers 12

    instance-of v0, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    const/4 v1, 0x4

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v2, p0

    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x5

    return p0

    :cond_11
    if-eqz p1, :cond_4f

    if-nez p2, :cond_16

    goto :goto_4f

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string p1, "CopyFile: file not exist"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x6

    return p0

    :cond_25
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_42

    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "destFile exists:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result p0

    return p0

    :cond_4f
    :goto_4f
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string p1, "CopyFile: null parameter"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0
.end method

.method public static createLock(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_10
    return v1
.end method

.method public static deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteLock(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    move-result p0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8b

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-static {p0, v3, p2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    :cond_4b
    instance-of v2, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_58

    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    :cond_58
    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    move-result p0

    if-eqz p0, :cond_6e

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_8b

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    if-eqz p2, :cond_8b

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_6e
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string p2, "Error when deleting file: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_8b
    return-object v0
.end method

.method public static deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static fileToBytes(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_4f
    .catchall {:try_start_4 .. :try_end_d} :catchall_4a

    if-nez p0, :cond_16

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_16
    :try_start_16
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_4f
    .catchall {:try_start_16 .. :try_end_1b} :catchall_4a

    :try_start_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_47
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_44
    .catchall {:try_start_1b .. :try_end_22} :catchall_3f

    :try_start_22
    new-array v2, v2, [B

    :goto_24
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    :cond_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_34} :catch_3d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_3b
    .catchall {:try_start_22 .. :try_end_34} :catchall_6a

    :goto_34
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_69

    :catch_3b
    move-exception v2

    goto :goto_52

    :catch_3d
    move-exception v2

    goto :goto_5f

    :catchall_3f
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6b

    :catch_44
    move-exception v2

    move-object v1, v0

    goto :goto_52

    :catch_47
    move-exception v2

    move-object v1, v0

    goto :goto_5f

    :catchall_4a
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_6b

    :catch_4f
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_52
    :try_start_52
    sget-object v3, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :catch_5c
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_5f
    sget-object v3, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_6a

    goto :goto_34

    :goto_69
    return-object v0

    :catchall_6a
    move-exception v0

    :goto_6b
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static generateThumb(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v2, :cond_20

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_20

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_20
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    if-eq v0, v3, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_30

    goto :goto_53

    :cond_30
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getApkThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_53

    :cond_39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_53

    :cond_42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getAudioThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_53

    :cond_4b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_53
    if-eqz v1, :cond_5d

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5d
    const-string p0, ""

    return-object p0
.end method

.method public static getOpenFileCacheDir()Ljava/io/File;
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/private"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateFileHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)[B
    .registers 8

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto/16 :goto_6a

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_27

    return-object v1

    :cond_27
    :try_start_27
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_57
    .catchall {:try_start_27 .. :try_end_2e} :catchall_54

    const-wide/16 v2, 0x400

    :try_start_30
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x10

    if-ge v0, v2, :cond_3e

    move v0, v2

    :cond_3e
    new-array v0, v0, [B
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_40} :catch_4f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_4a
    .catchall {:try_start_30 .. :try_end_40} :catchall_6b

    :try_start_40
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_6b

    goto :goto_66

    :catch_44
    move-exception v1

    goto :goto_5b

    :catch_46
    move-exception v1

    goto :goto_63

    :goto_48
    move-object v1, p0

    goto :goto_6d

    :catch_4a
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5b

    :catch_4f
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_63

    :catchall_54
    move-exception p0

    move-object v0, p0

    goto :goto_6d

    :catch_57
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_66

    :catch_5f
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    :goto_63
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_6b

    :goto_66
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    move-object p0, v0

    :goto_6a
    return-object p0

    :catchall_6b
    move-exception v0

    goto :goto_48

    :goto_6d
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

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

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    move-object v0, p0

    move-object v1, p2

    move-object v3, v6

    move-object v4, v8

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1d

    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v0, :cond_5f

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string p1, "path error"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_53
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p0, v2, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_5f
    :goto_5f
    invoke-static {v7}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    invoke-static {v6}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v8, 0x0

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

    if-eqz p1, :cond_131

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_8

    goto/16 :goto_131

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string v1, "Restoring file "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3b

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_71

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteLock(Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore error, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not exist"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_71
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_97

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_130

    array-length v0, p1

    const/4 v2, 0x0

    :goto_81
    if-ge v2, v0, :cond_130

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_97
    instance-of v3, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v3, :cond_a5

    move-object v4, p0

    check-cast v4, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    :cond_a5
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_111

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->writeHeader([BLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    if-eqz v3, :cond_d8

    check-cast p0, Lcom/android/fileexplorer/activity/BaseActivity;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    :cond_d8
    const-string p0, "Restore successfully, "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_130

    :cond_f1
    const-string p0, "Restore error when writing headers, "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_130

    :cond_111
    const-string p0, "Cannot find backup header file "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_130
    :goto_130
    return-object v1

    :cond_131
    :goto_131
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->bytesToFile([BLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static writeHeader([BLjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    const-string v2, "writeHeader with documentFile"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    goto :goto_27

    :cond_17
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_4a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_48

    const-wide/16 v2, 0x0

    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_45
    .catchall {:try_start_20 .. :try_end_26} :catchall_42

    move-object v0, v1

    :goto_27
    :try_start_27
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " write header success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_4a
    .catchall {:try_start_27 .. :try_end_3d} :catchall_48

    const/4 p0, 0x1

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6c

    :catchall_42
    move-exception p0

    move-object v0, v1

    goto :goto_6d

    :catch_45
    move-exception p0

    move-object v0, v1

    goto :goto_4b

    :catchall_48
    move-exception p0

    goto :goto_6d

    :catch_4a
    move-exception p0

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " write header error"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_48

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_6c
    return p0

    :goto_6d
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
