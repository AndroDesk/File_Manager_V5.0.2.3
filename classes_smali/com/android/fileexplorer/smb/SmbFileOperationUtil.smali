.class public Lcom/android/fileexplorer/smb/SmbFileOperationUtil;
.super Ljava/lang/Object;
.source "SmbFileOperationUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmbFileOperation"

.field private static final SMB_URL:Ljava/lang/String; = "smb:%s"


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

.method public static copyTo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v0, "/"

    const-string v1, "copyTo failed"

    const-string v2, "SmbFileOperation"

    :try_start_6
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v3, Ljcifs/smb/SmbFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_2c
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    :goto_31
    if-eqz p0, :cond_3a

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    :cond_3a
    new-instance p1, Ljcifs/smb/SmbFile;

    const-string v0, "smb://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_46

    goto :goto_51

    :cond_46
    const-string v0, "smb:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_51
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const-string p0, "cannot copy file to same folder"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_6c
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_84

    :cond_78
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_87

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_87

    :cond_84
    const/16 p0, 0xe

    return p0

    :cond_87
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_9f

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result p0

    if-eqz p0, :cond_9f

    const/4 p0, 0x5

    return p0

    :cond_9f
    if-eqz p2, :cond_ab

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->delete()V

    invoke-virtual {v3, p1}, Ljcifs/smb/SmbFile;->copyTo(Ljcifs/smb/SmbFile;)V

    goto :goto_ab

    :cond_a8
    invoke-virtual {v3, p1}, Ljcifs/smb/SmbFile;->copyTo(Ljcifs/smb/SmbFile;)V

    :cond_ab
    :goto_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copy: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_cf} :catch_d5
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_cf} :catch_d0

    return v4

    :catch_d0
    move-exception p0

    invoke-static {v2, v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d9

    :catch_d5
    move-exception p0

    invoke-static {v2, v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d9
    const/4 p0, 0x4

    return p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "del file failed: "

    const-string v1, "SmbFileOperation"

    :try_start_4
    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V

    goto :goto_31

    :cond_18
    new-instance v2, Ljcifs/smb/SmbFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_31
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_31} :catch_47
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_31} :catch_33

    :goto_31
    const/4 p0, 0x1

    return p0

    :catch_33
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    :catch_47
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5a
    const/4 p0, 0x0

    return p0
.end method

.method public static deleteFiles(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p0, :cond_1d

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 p0, 0x5

    return p0

    :cond_1d
    if-eqz v1, :cond_29

    iget-object v1, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v0

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    if-eqz p0, :cond_6

    iget-wide v2, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-interface {p0, v2, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    goto :goto_6

    :cond_32
    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x4

    :goto_36
    return v3
.end method

.method public static download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "/"

    const-string v5, "SmbFileOperation"

    if-eqz v1, :cond_17e

    if-nez v2, :cond_12

    goto/16 :goto_17e

    :cond_12
    const/4 v6, 0x0

    const/4 v7, 0x4

    :try_start_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljcifs/smb/SmbFile;

    invoke-direct {v8, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x5

    if-eqz v9, :cond_c7

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5b

    new-instance v8, Ljcifs/smb/SmbFile;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    :cond_5b
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_70

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v4
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_65} :catch_15f
    .catchall {:try_start_14 .. :try_end_65} :catchall_15c

    if-nez v4, :cond_70

    const/16 v0, 0x8

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_70
    :try_start_70
    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v4

    if-eqz v4, :cond_bf

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    array-length v9, v4

    move v14, v10

    const/4 v13, 0x0

    :goto_7d
    if-ge v13, v9, :cond_b7

    aget-object v15, v4, v13

    if-eqz v0, :cond_90

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v16
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_87} :catch_15f
    .catchall {:try_start_70 .. :try_end_87} :catchall_15c

    if-eqz v16, :cond_90

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v11

    :cond_90
    :try_start_90
    new-instance v12, Ljava/io/File;

    invoke-virtual {v15}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v12, v3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I

    move-result v7
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a5} :catch_15f
    .catchall {:try_start_90 .. :try_end_a5} :catchall_15c

    if-eqz v7, :cond_a8

    const/4 v14, 0x0

    :cond_a8
    if-eqz v7, :cond_b3

    if-eq v7, v10, :cond_b3

    :cond_ac
    :goto_ac
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v7

    :cond_b3
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x5

    goto :goto_7d

    :cond_b7
    if-eqz v14, :cond_ac

    if-eqz v3, :cond_ac

    :try_start_bb
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_15f
    .catchall {:try_start_bb .. :try_end_be} :catchall_15c

    goto :goto_ac

    :cond_bf
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_175

    :cond_c7
    :try_start_c7
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v9, 0x1000

    if-eqz v4, :cond_12c

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result v4

    if-eqz v0, :cond_ed

    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v11
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e3} :catch_15f
    .catchall {:try_start_c7 .. :try_end_e3} :catchall_15c

    if-eqz v11, :cond_ed

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x5

    return v0

    :cond_ed
    if-eqz v4, :cond_125

    :try_start_ef
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_11c

    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v4, v8}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fa} :catch_15f
    .catchall {:try_start_ef .. :try_end_fa} :catchall_15c

    :try_start_fa
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_ff} :catch_158
    .catchall {:try_start_fa .. :try_end_ff} :catchall_154

    :try_start_ff
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, v4, v8, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v6
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_107} :catch_152
    .catchall {:try_start_ff .. :try_end_107} :catchall_150

    const/4 v0, 0x5

    if-ne v6, v0, :cond_10e

    :try_start_10a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    goto :goto_115

    :cond_10e
    if-nez v6, :cond_115

    if-eqz v3, :cond_115

    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_115} :catch_145
    .catchall {:try_start_10a .. :try_end_115} :catchall_150

    :cond_115
    :goto_115
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v6

    :cond_11c
    const/16 v0, 0xa

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_125
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v10

    :cond_12c
    :try_start_12c
    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v4, v8}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_131} :catch_15f
    .catchall {:try_start_12c .. :try_end_131} :catchall_15c

    :try_start_131
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_136} :catch_158
    .catchall {:try_start_131 .. :try_end_136} :catchall_154

    :try_start_136
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, v4, v8, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v6
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13e} :catch_152
    .catchall {:try_start_136 .. :try_end_13e} :catchall_150

    const/4 v0, 0x5

    if-ne v6, v0, :cond_148

    :try_start_141
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    goto :goto_115

    :catch_145
    move-exception v0

    move v7, v6

    goto :goto_15a

    :cond_148
    if-nez v6, :cond_115

    if-eqz v3, :cond_115

    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14f} :catch_145
    .catchall {:try_start_141 .. :try_end_14f} :catchall_150

    goto :goto_115

    :catchall_150
    move-exception v0

    goto :goto_156

    :catch_152
    move-exception v0

    goto :goto_15a

    :catchall_154
    move-exception v0

    move-object v8, v6

    :goto_156
    move-object v6, v4

    goto :goto_177

    :catch_158
    move-exception v0

    move-object v8, v6

    :goto_15a
    move-object v6, v4

    goto :goto_161

    :catchall_15c
    move-exception v0

    move-object v8, v6

    goto :goto_177

    :catch_15f
    move-exception v0

    move-object v8, v6

    :goto_161
    :try_start_161
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16a

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    :cond_16a
    const-string v1, "download smb file failed"

    invoke-static {v5, v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16f
    .catchall {:try_start_161 .. :try_end_16f} :catchall_176

    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_175
    return v7

    :catchall_176
    move-exception v0

    :goto_177
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_17e
    :goto_17e
    const-string v0, "CopyFile: null parameter"

    invoke-static {v5, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public static mkDir(Ljava/lang/String;)I
    .registers 7

    const-string v0, "create dir failed: "

    const-string v1, "SmbFileOperation"

    const-string v2, "/"

    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    new-instance v2, Ljcifs/smb/SmbFile;

    const-string v3, "smb://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    move-object v3, p0

    goto :goto_33

    :cond_28
    const-string v3, "smb:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_33
    invoke-direct {v2, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_45

    const/16 p0, 0xe

    return p0

    :cond_45
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->mkdir()V
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_48} :catch_5d
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_48} :catch_49

    return v4

    :catch_49
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70

    :catch_5d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_70
    const/4 p0, 0x4

    return p0
.end method

.method public static move(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)I
    .registers 7

    if-eqz p0, :cond_7

    iget-wide v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    :cond_7
    :try_start_7
    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljcifs/smb/SmbFile;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, p2, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    return p2

    :cond_31
    const/4 p1, 0x1

    if-nez p3, :cond_41

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3f

    goto :goto_41

    :cond_3f
    move p3, p2

    goto :goto_42

    :cond_41
    :goto_41
    move p3, p1

    :goto_42
    if-eqz p0, :cond_4c

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result p0

    if-eqz p0, :cond_4c

    const/4 p0, 0x5

    return p0

    :cond_4c
    if-eqz p3, :cond_55

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V

    return p2

    :cond_55
    return p1

    :cond_56
    invoke-virtual {v0, v1}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V
    :try_end_59
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_59} :catch_5f
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_59} :catch_5a

    return p2

    :catch_5a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_63

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_63
    const/4 p0, 0x4

    return p0
.end method

.method public static rename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "rename failed: "

    const-string v1, "SmbFileOperation"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljcifs/smb/SmbFile;

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string p0, "SmbFileOperationUtil"

    const-string v3, "path error"

    invoke-static {p0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_24
    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-direct {v4, p0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_2c} :catch_42
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_2c} :catch_2e

    const/4 p0, 0x1

    return p0

    :catch_2e
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    :catch_42
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_55
    return v2
.end method

.method public static upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 14

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "SmbFileOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string p0, "SmbFileOperationUtil"

    const-string p1, "path error"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_13a
    .catchall {:try_start_2 .. :try_end_35} :catchall_137

    const/4 p0, 0x2

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_13a
    .catchall {:try_start_3d .. :try_end_46} :catchall_137

    const-string v4, "smb:%s"

    const-string v5, "smb://"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_a9

    :try_start_4e
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    move-object v4, p2

    goto :goto_60

    :cond_58
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_60
    invoke-direct {v3, v4}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->mkdir()V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6a} :catch_13a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_137

    if-nez v3, :cond_73

    :cond_6c
    :goto_6c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_73
    :try_start_73
    array-length v4, v3

    :goto_74
    if-ge v6, v4, :cond_a1

    aget-object v5, v3, v6

    if-eqz p0, :cond_81

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v8

    if-eqz v8, :cond_81

    goto :goto_a1

    :cond_81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, p2, p3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_9e

    if-eq v0, v7, :cond_9e

    goto :goto_6c

    :cond_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_a1
    :goto_a1
    if-nez v0, :cond_6c

    if-eqz p3, :cond_6c

    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_6c

    :cond_a9
    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    goto :goto_ba

    :cond_b2
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_ba
    invoke-direct {v3, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p2

    const/16 v4, 0x1000

    const/4 v5, 0x5

    if-nez p2, :cond_10a

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    move-result p2

    if-eqz p2, :cond_10a

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_e3

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v6
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_da} :catch_13a
    .catchall {:try_start_73 .. :try_end_da} :catchall_137

    if-eqz v6, :cond_e3

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :cond_e3
    if-eqz p2, :cond_108

    :try_start_e5
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ed} :catch_13a
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_137

    :try_start_ed
    new-instance p1, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {p1, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_133
    .catchall {:try_start_ed .. :try_end_f2} :catchall_12f

    :try_start_f2
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p2, p1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v0

    if-ne v0, v5, :cond_100

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    goto :goto_129

    :cond_100
    if-nez v0, :cond_129

    if-eqz p3, :cond_129

    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_107} :catch_12d
    .catchall {:try_start_f2 .. :try_end_107} :catchall_12b

    goto :goto_129

    :cond_108
    move-object p1, v1

    goto :goto_13f

    :cond_10a
    :try_start_10a
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10f} :catch_13a
    .catchall {:try_start_10a .. :try_end_10f} :catchall_137

    :try_start_10f
    new-instance p1, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {p1, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_114} :catch_133
    .catchall {:try_start_10f .. :try_end_114} :catchall_12f

    :try_start_114
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p2, p1, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v0

    if-ne v0, v5, :cond_122

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    goto :goto_129

    :cond_122
    if-nez v0, :cond_129

    if-eqz p3, :cond_129

    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_129} :catch_12d
    .catchall {:try_start_114 .. :try_end_129} :catchall_12b

    :cond_129
    :goto_129
    move-object v1, p2

    goto :goto_13f

    :catchall_12b
    move-exception p0

    goto :goto_131

    :catch_12d
    move-exception p0

    goto :goto_135

    :catchall_12f
    move-exception p0

    move-object p1, v1

    :goto_131
    move-object v1, p2

    goto :goto_147

    :catch_133
    move-exception p0

    move-object p1, v1

    :goto_135
    move-object v1, p2

    goto :goto_13c

    :catchall_137
    move-exception p0

    move-object p1, v1

    goto :goto_147

    :catch_13a
    move-exception p0

    move-object p1, v1

    :goto_13c
    :try_start_13c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_146

    :goto_13f
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_146
    move-exception p0

    :goto_147
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static uploadSingleContentFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;Z)I
    .registers 13

    const-string v0, "SmbFileOperation"

    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_4
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string p0, "error contentFile is null"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_f5
    .catchall {:try_start_4 .. :try_end_f} :catchall_f2

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_12
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_16
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadSingleContentFile uriPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-string p0, "path error"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3d} :catch_f5
    .catchall {:try_start_16 .. :try_end_3d} :catchall_f2

    const/4 p0, 0x2

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :cond_45
    :try_start_45
    new-instance v3, Ljcifs/smb/SmbFile;

    const-string v4, "smb://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_5c

    :cond_50
    const-string v4, "smb:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_5c
    invoke-direct {v3, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p2

    const/4 v4, 0x5

    if-nez p2, :cond_88

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_83

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v5
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_7a} :catch_f5
    .catchall {:try_start_45 .. :try_end_7a} :catchall_f2

    if-eqz v5, :cond_83

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v4

    :cond_83
    if-eqz p2, :cond_88

    :try_start_85
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    :cond_88
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v5, p1, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_96} :catch_f5
    .catchall {:try_start_85 .. :try_end_96} :catchall_f2

    if-nez p2, :cond_9d

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_12

    :cond_9d
    if-eqz p0, :cond_c4

    :try_start_9f
    iget-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_ae

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    :cond_ae
    iget-wide v5, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_c1

    if-eqz p3, :cond_ba

    const v5, 0x7f11030d

    goto :goto_bd

    :cond_ba
    const v5, 0x7f110317

    :goto_bd
    invoke-interface {p0, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    goto :goto_c4

    :cond_c1
    invoke-interface {p0, v5, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    :cond_c4
    :goto_c4
    new-instance v5, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v5, v3}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c9} :catch_ee
    .catchall {:try_start_9f .. :try_end_c9} :catchall_ea

    :try_start_c9
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-static {p0, p2, v5, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v2

    if-ne v2, v4, :cond_d9

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->delete()V

    goto :goto_e2

    :cond_d9
    if-nez v2, :cond_e2

    if-eqz p3, :cond_e2

    iget-object p0, p1, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e2} :catch_e8
    .catchall {:try_start_c9 .. :try_end_e2} :catchall_e6

    :cond_e2
    :goto_e2
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_112

    :catchall_e6
    move-exception p0

    goto :goto_ec

    :catch_e8
    move-exception p0

    goto :goto_f0

    :catchall_ea
    move-exception p0

    move-object v5, v1

    :goto_ec
    move-object v1, p2

    goto :goto_117

    :catch_ee
    move-exception p0

    move-object v5, v1

    :goto_f0
    move-object v1, p2

    goto :goto_f7

    :catchall_f2
    move-exception p0

    move-object v5, v1

    goto :goto_117

    :catch_f5
    move-exception p0

    move-object v5, v1

    :goto_f7
    :try_start_f7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "uploadSingleContentFile error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_f7 .. :try_end_10f} :catchall_116

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_112
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :catchall_116
    move-exception p0

    :goto_117
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
