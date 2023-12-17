.class public Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;
.super Ljava/lang/Object;
.source "LocalFileOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalFileOperationUtils"


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

.method private static checkIfNeedRename(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static copyDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I
    .registers 12

    const/4 v0, 0x4

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_10
    if-ge v5, v2, :cond_25

    aget-object v0, v1, v5

    iget-object v7, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {p0, v0, v7, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    move-result v0

    if-eqz v0, :cond_1d

    move v6, v3

    :cond_1d
    if-eqz v0, :cond_22

    if-eq v0, v4, :cond_22

    return v0

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_25
    if-eqz v6, :cond_2c

    if-eqz p3, :cond_2c

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    :cond_2c
    return v0
.end method

.method public static copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 27

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "LocalFileOperationUtils"

    if-nez v1, :cond_1a8

    if-nez v4, :cond_12

    goto/16 :goto_1a8

    :cond_12
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v0, 0x16

    return v0

    :cond_3f
    const/4 v10, 0x1

    if-eqz p4, :cond_71

    if-eqz p6, :cond_71

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->isInSameVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v11, p3

    invoke-static {v8, v1, v4, v11}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolume(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    move-result v1

    if-eqz v1, :cond_70

    if-ne v10, v1, :cond_5e

    goto :goto_70

    :cond_5e
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    move-result v0

    return v0

    :cond_70
    :goto_70
    return v1

    :cond_71
    move/from16 v11, p3

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_88

    const-string v0, "cannot copy file to same folder"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_88
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    const-string v0, "not enough space"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    return v0

    :cond_9d
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_ae

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object v5

    move-object v6, v5

    goto :goto_af

    :cond_ae
    move-object v6, v3

    :goto_af
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v13, 0x4

    if-eqz v5, :cond_175

    const-string v0, "copy directory: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_d6

    const-string v0, "listFiles returned null"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_d6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_ed

    if-nez v1, :cond_ed

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_eb

    goto :goto_ed

    :cond_eb
    move v0, v2

    goto :goto_ee

    :cond_ed
    :goto_ed
    move v0, v12

    :goto_ee
    if-eqz v1, :cond_f4

    invoke-static {v6, v4}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDirByParent(Ls0/a;Ljava/io/File;)Ls0/a;

    move-result-object v3

    :cond_f4
    move-object v15, v3

    if-eqz v0, :cond_f8

    return v2

    :cond_f8
    new-instance v7, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    invoke-direct {v7}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    array-length v1, v14

    invoke-virtual {v7, v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setTotalFileCount(I)V

    invoke-virtual {v7}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setUseThreadPool()V

    move/from16 v16, v0

    move/from16 v17, v10

    move v6, v12

    :goto_109
    array-length v0, v14

    if-ge v6, v0, :cond_16d

    aget-object v3, v14, v6

    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setCurrentIndex(I)V

    if-eqz v8, :cond_11b

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0

    if-eqz v0, :cond_11b

    const/4 v0, 0x5

    return v0

    :cond_11b
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v18, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result v0

    move-object/from16 v19, v7

    goto :goto_15d

    :cond_13f
    move/from16 v18, v6

    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v5, p4

    move-object v6, v15

    move-object/from16 v19, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    :try_start_14e
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_156} :catch_157

    goto :goto_15d

    :catch_157
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v0, v16

    :goto_15d
    if-eqz v0, :cond_161

    move/from16 v17, v12

    :cond_161
    if-eqz v0, :cond_166

    if-eq v0, v10, :cond_166

    return v0

    :cond_166
    add-int/lit8 v6, v18, 0x1

    move/from16 v16, v0

    move-object/from16 v7, v19

    goto :goto_109

    :cond_16d
    if-eqz v17, :cond_174

    if-eqz p4, :cond_174

    invoke-static {v9}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    :cond_174
    return v16

    :cond_175
    const-string v1, "copy single file:"

    const-string v3, " to "

    invoke-static {v1, v0, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    :try_start_19a
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a2} :catch_1a3

    return v0

    :catch_1a3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v13

    :cond_1a8
    :goto_1a8
    const-string v0, "CopyFile: null parameter"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public static copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    move-result p0

    return p0
.end method

.method public static copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "Doing byte copy of document: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalFileOperationUtils"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "vnd.android.document/directory"

    goto :goto_2b

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_2f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8b

    instance-of v3, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v3, :cond_8b

    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8b

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-virtual {v4}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, v4, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    move-object v3, p0

    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v3, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v4, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_7f} :catch_87
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_7f} :catch_82

    goto :goto_8b

    :cond_80
    const/4 p0, 0x1

    return p0

    :catch_82
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8b

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8b
    :goto_8b
    invoke-static {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_af

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t create destination document "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in directory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0

    :cond_af
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object p2

    if-nez p2, :cond_bf

    const/4 p0, 0x2

    return p0

    :cond_bf
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I

    move-result p0

    return p0

    :cond_ca
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveSingleFileToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I

    move-result p0

    return p0
.end method

.method private static copyOrMoveSingleFileToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I
    .registers 16

    const-string v0, "Error closing destination."

    const-string v1, "Error copying bytes."

    const-string v2, "Cleaning up failed operation leftovers."

    const-string v3, "LocalFileOperationUtils"

    if-nez p1, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_14
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_c5
    .catchall {:try_start_14 .. :try_end_19} :catchall_c1

    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v9

    iget-object v10, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    const-string v11, "w"

    invoke-virtual {v9, v10, v11, v4}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_7d
    .catchall {:try_start_19 .. :try_end_2b} :catchall_79

    :try_start_2b
    new-instance v10, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v10, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_74
    .catchall {:try_start_2b .. :try_end_30} :catchall_6f

    const/16 v6, 0x4000

    :try_start_32
    invoke-static {p0, v8, v10, v6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_6c
    .catchall {:try_start_32 .. :try_end_36} :catchall_6a

    const/4 v6, 0x5

    if-ne p0, v6, :cond_44

    :try_start_39
    iget-object p1, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    goto :goto_4b

    :catchall_3f
    move-exception p1

    move v5, p0

    goto :goto_71

    :catch_42
    move-exception p1

    goto :goto_77

    :cond_44
    if-nez p0, :cond_4b

    if-eqz p3, :cond_4b

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_42
    .catchall {:try_start_39 .. :try_end_4b} :catchall_3f

    :cond_4b
    :goto_4b
    if-eqz p0, :cond_5f

    if-eq p0, v7, :cond_5f

    if-eqz v9, :cond_59

    :try_start_51
    invoke-virtual {v9, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p1

    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    :cond_5f
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_ec

    :catchall_6a
    move-exception p1

    goto :goto_71

    :catch_6c
    move-exception p1

    move p0, v5

    goto :goto_77

    :catchall_6f
    move-exception p1

    move-object v10, v6

    :goto_71
    move-object v6, v9

    goto/16 :goto_f0

    :catch_74
    move-exception p1

    move p0, v5

    move-object v10, v6

    :goto_77
    move-object v6, v9

    goto :goto_80

    :catchall_79
    move-exception p1

    move-object v10, v6

    goto/16 :goto_f0

    :catch_7d
    move-exception p1

    move p0, v5

    move-object v10, v6

    :goto_80
    :try_start_80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open the destination file "

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for writing due to an exception."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_9b} :catch_bc
    .catchall {:try_start_80 .. :try_end_9b} :catchall_b9

    if-eqz p0, :cond_af

    if-eq p0, v7, :cond_af

    if-eqz v6, :cond_a9

    :try_start_a1
    invoke-virtual {v6, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_a9

    :catch_a5
    move-exception p0

    invoke-static {v3, v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a9
    :goto_a9
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    :cond_af
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :catchall_b9
    move-exception p1

    move v5, p0

    goto :goto_f0

    :catch_bc
    move-exception p1

    move v5, p0

    move-object p0, v6

    move-object v6, v8

    goto :goto_c8

    :catchall_c1
    move-exception p1

    move-object v8, v6

    move-object v10, v8

    goto :goto_f0

    :catch_c5
    move-exception p1

    move-object p0, v6

    move-object v10, p0

    :goto_c8
    :try_start_c8
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_ed

    if-eqz v5, :cond_e2

    if-eq v5, v7, :cond_e2

    if-eqz p0, :cond_dc

    :try_start_d4
    invoke-virtual {p0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception p1

    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_dc
    :goto_dc
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    :cond_e2
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    move p0, v5

    :goto_ec
    return p0

    :catchall_ed
    move-exception p1

    move-object v8, v6

    move-object v6, p0

    :goto_f0
    if-eqz v5, :cond_104

    if-eq v5, v7, :cond_104

    if-eqz v6, :cond_fe

    :try_start_f6
    invoke-virtual {v6, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_fe

    :catch_fa
    move-exception p0

    invoke-static {v3, v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_fe
    :goto_fe
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    :cond_104
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static createFileOrDir(Ljava/lang/String;Z)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    return v3

    :cond_15
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    if-eqz p1, :cond_25

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-eqz p0, :cond_24

    move v1, v3

    :cond_24
    return v1

    :cond_25
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-eqz p0, :cond_2c

    move v1, v3

    :cond_2c
    return v1

    :cond_2d
    if-eqz p1, :cond_34

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_49

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_48

    goto :goto_49

    :cond_48
    return v1

    :cond_49
    :goto_49
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4d} :catch_4e

    return p0

    :catch_4e
    move-exception p0

    const-string p1, "createFileOrDir error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalFileOperationUtils"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static mkDir(Ljava/lang/String;)I
    .registers 8

    invoke-static {p0}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    return v1

    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 p0, 0xe

    return p0

    :cond_17
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeBlockSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    const-string v3, "LocalFileOperationUtils"

    if-lez v2, :cond_30

    const-string p0, "not enough space"

    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    return p0

    :cond_30
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_61

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    move-result-object v2

    if-eqz v2, :cond_58

    const-string p0, "createFolder = "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast v2, Ls0/c;

    iget-object v0, v2, Ls0/c;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_58
    const-string v2, "cannot happen, documentFile is null"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_5e
    const/16 p0, 0x11

    return p0

    :cond_61
    :goto_61
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " created"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/FileExplorer/.safebox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "/"

    const-string v1, ".nomedia"

    invoke-static {p0, v0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_a7

    :try_start_9a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const-string p0, "nomedia created"

    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a3

    goto :goto_a7

    :catch_a3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a7
    :goto_a7
    return v4

    :cond_a8
    const-string p0, "create folder "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static moveFilesInSameVolume(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 7

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    :cond_2f
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_43

    const/4 p0, 0x3

    if-eq v0, p0, :cond_42

    const/4 p0, 0x4

    return p0

    :cond_42
    return v1

    :cond_43
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    goto :goto_58

    :cond_4e
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :cond_58
    :goto_58
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolume28(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    return p0

    :cond_63
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolumeNormal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    return p0
.end method

.method private static moveFilesInSameVolume28(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const-string v0, "LocalFileOperationUtils"

    const-string v1, "moveFilesInSameVolume28"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_b2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v5

    :cond_27
    if-nez p3, :cond_36

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    move p0, v5

    goto :goto_37

    :cond_36
    :goto_36
    move p0, v4

    :goto_37
    if-eqz p0, :cond_b1

    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-eqz p0, :cond_ab

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p1

    if-eqz p1, :cond_51

    move-object p3, p1

    check-cast p3, Ls0/c;

    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    iget-object p1, p1, Ls0/a;->a:Ls0/a;

    check-cast p1, Ls0/c;

    iget-object p1, p1, Ls0/c;->c:Landroid/net/Uri;

    goto :goto_53

    :cond_51
    move-object p1, v3

    move-object p3, p1

    :goto_53
    iget-object v1, p0, Ls0/a;->a:Ls0/a;

    check-cast p0, Ls0/c;

    :try_start_57
    iget-object v4, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object p0, p0, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {v4, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move p0, v5

    :goto_65
    if-eqz p0, :cond_a8

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    :try_start_75
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast v1, Ls0/c;

    iget-object p2, v1, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {p0, p3, p1, p2}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_85} :catch_86

    goto :goto_90

    :catch_86
    move-exception p0

    const-string p1, "move file by documentFile error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "moveDocument result uri = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a7

    move v2, v5

    :cond_a7
    return v2

    :cond_a8
    const/16 p0, 0xa

    return p0

    :cond_ab
    const-string p0, "moveFilesInSameVolume28 documentFile = null!"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :cond_b1
    return v4

    :cond_b2
    :goto_b2
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "originalDocumentUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", originalDocumentParentUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newDocumentParentUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_15e

    if-eqz p3, :cond_15e

    if-nez v1, :cond_f1

    goto :goto_15e

    :cond_f1
    :try_start_f1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    const-string p0, "moveFilesInSameVolume28 same parent,rename"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_10d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p0, p3, v1}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uri = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_15a

    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->checkIfNeedRename(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_15a

    const-string p1, "move success needRename"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_14f} :catch_150

    return p0

    :catch_150
    move-exception p0

    const-string p1, "copy file by document error:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_15a
    if-eqz v3, :cond_15d

    move v2, v5

    :cond_15d
    return v2

    :cond_15e
    :goto_15e
    const-string p0, "some uri maybe null"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static moveFilesInSameVolumeNormal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 9

    const-string v0, "copyTag"

    const-string v1, "moveFilesInSameVolumeNormal"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "LocalFileOperationUtils"

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    :cond_20
    const/4 v0, 0x1

    if-nez p3, :cond_30

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    move p0, v3

    goto :goto_31

    :cond_30
    :goto_30
    move p0, v0

    :goto_31
    if-eqz p0, :cond_57

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_54

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4e

    return v3

    :cond_4e
    const-string p0, "moveFilesInSameVolumeNormal: rename fail. "

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_54
    const/16 p0, 0xa

    return p0

    :cond_57
    return v0

    :cond_58
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "moveFilesInSameVolumeNormal: rename File result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_73

    move v1, v3

    :cond_73
    return v1
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;Z)I
    .registers 8

    const/4 v0, 0x2

    const-string v1, "LocalFileOperationUtils"

    if-eqz p0, :cond_6b

    if-nez p1, :cond_8

    goto :goto_6b

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 p0, 0xf

    return p0

    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xe

    if-eqz v2, :cond_27

    const-string p0, "Rename: name not changed"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_27
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string p0, "rename: name not changed"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-nez p2, :cond_4a

    const-string p0, "rename: the file with same name exists"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4a
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {p0, v2, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->renameByDocumentFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result p2

    goto :goto_59

    :cond_55
    invoke-static {p0, v2, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->renameFileNormal(Ljava/io/File;Ljava/io/File;Z)I

    move-result p2

    :goto_59
    if-nez p2, :cond_6a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;)V

    :cond_6a
    return p2

    :cond_6b
    :goto_6b
    const-string p0, "Rename: null parameter"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static renameByDocumentFile(Ljava/io/File;Ljava/io/File;Z)I
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    move-result v0

    const/16 v1, 0x11

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p2

    if-eqz p2, :cond_25

    check-cast p2, Ls0/c;

    :try_start_19
    iget-object v0, p2, Ls0/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p2, p2, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_26

    goto :goto_26

    :cond_25
    return v1

    :catch_26
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_3e

    if-eqz p0, :cond_4a

    const/4 p0, 0x0

    return p0

    :catch_3e
    move-exception p0

    const-string p1, "renameByDocumentFile error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LocalFileOperationUtils"

    invoke-static {p0, p1, p2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4a
    const/4 p0, 0x4

    return p0
.end method

.method public static renameFile(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string p0, "LocalFileOperationUtils"

    const-string p1, "path error"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_19
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_40

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v2, :cond_36

    iget-boolean p0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p0, :cond_3d

    :cond_36
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-static {v0, p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->checkFileLocationChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return v1
.end method

.method public static renameFileNormal(Ljava/io/File;Ljava/io/File;Z)I
    .registers 4

    const-string v0, "LocalFileOperationUtils"

    if-eqz p2, :cond_10

    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_32

    :cond_10
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "renameFileNormal success"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1d

    const/4 p0, 0x0

    return p0

    :catch_1d
    move-exception p0

    const-string p1, "renameFileNormal error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const/4 p0, 0x4

    return p0
.end method
