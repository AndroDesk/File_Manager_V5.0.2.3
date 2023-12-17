.class Lcom/android/fileexplorer/model/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipUtils"


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

.method public static decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const-string v1, "unziptot_utf8"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v1}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-nez v1, :cond_1e

    const-string p0, "ZipUtils_decompressZip_WithZipFile_UTF8"

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    goto :goto_44

    :cond_1e
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    const-string v1, "unziptot_gbk"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v1, "GBK"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-nez v1, :cond_44

    const-string p0, "ZipUtils_decompressZip_WithZipFile_GBK"

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    :cond_44
    :goto_44
    const-string p0, "decompressZipArchive result = "

    const-string p1, "ZipUtils"

    invoke-static {p0, v1, p1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method private static decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p3

    const-string v2, "com.android.fileexplorer"

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_c

    return v3

    :cond_c
    const-string v4, "ZipUtils"

    if-eqz v1, :cond_24

    const-string v0, "decompressZipArchiveReal: charset = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-static/range {p1 .. p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    return v0

    :cond_2f
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_32
    const-string v8, "android.os.MiPerf"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "miPerfSceneBoostAcquire"

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_48} :catch_64
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_48} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_48} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_48} :catch_5e

    :try_start_48
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_55} :catch_5c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_48 .. :try_end_55} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_55} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_55} :catch_56

    goto :goto_69

    :catch_56
    move-exception v0

    goto :goto_66

    :catch_58
    move-exception v0

    goto :goto_66

    :catch_5a
    move-exception v0

    goto :goto_66

    :catch_5c
    move-exception v0

    goto :goto_66

    :catch_5e
    move-exception v0

    goto :goto_65

    :catch_60
    move-exception v0

    goto :goto_65

    :catch_62
    move-exception v0

    goto :goto_65

    :catch_64
    move-exception v0

    :goto_65
    move-object v8, v7

    :goto_66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_69
    const/4 v9, 0x4

    :try_start_6a
    new-instance v10, Ljava/util/zip/ZipFile;

    move-object/from16 v11, p1

    invoke-direct {v10, v11, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_2a2
    .catchall {:try_start_6a .. :try_end_71} :catchall_29f

    :try_start_71
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    move-result v18

    const-wide/16 v19, 0x0

    move v11, v6

    move-wide/from16 v12, v19

    :goto_7e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_298
    .catchall {:try_start_71 .. :try_end_82} :catchall_292

    const/16 v7, 0xc

    const-string v15, "decompressZipArchiveReal error: "

    if-eqz v0, :cond_f1

    :try_start_88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/zip/ZipEntry;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8f} :catch_c8
    .catchall {:try_start_88 .. :try_end_8f} :catchall_c6

    :try_start_8f
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filename InValid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b5} :catch_c4
    .catchall {:try_start_8f .. :try_end_b5} :catchall_c6

    const/16 v0, 0x1a

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_bb
    :try_start_bb
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_c4
    .catchall {:try_start_bb .. :try_end_bf} :catchall_c6

    if-nez v0, :cond_e1

    add-int/lit8 v11, v11, 0x1

    goto :goto_e1

    :catch_c4
    move-exception v0

    goto :goto_cb

    :catchall_c6
    move-exception v0

    goto :goto_112

    :catch_c8
    move-exception v0

    const/4 v3, 0x0

    move-object v14, v3

    :goto_cb
    :try_start_cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_e1} :catch_ef
    .catchall {:try_start_cb .. :try_end_e1} :catchall_c6

    :cond_e1
    :goto_e1
    if-nez v14, :cond_e7

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v7

    :cond_e7
    :try_start_e7
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_eb} :catch_ef
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_c6

    add-long/2addr v12, v14

    const/4 v7, 0x0

    const/4 v3, 0x2

    goto :goto_7e

    :catch_ef
    move-exception v0

    goto :goto_115

    :cond_f1
    :try_start_f1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fd} :catch_28d
    .catchall {:try_start_f1 .. :try_end_fd} :catchall_28a

    if-eqz v3, :cond_119

    :try_start_ff
    invoke-interface {v3, v12, v13}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    const-wide/16 v11, 0x1

    invoke-interface {v3, v11, v12}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    const v0, 0x7f1102f7

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setCompressProgress(Ljava/lang/String;I)V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_111} :catch_ef
    .catchall {:try_start_ff .. :try_end_111} :catchall_c6

    goto :goto_119

    :goto_112
    const/4 v7, 0x0

    goto/16 :goto_295

    :goto_115
    const/4 v1, 0x0

    move-object v7, v10

    goto/16 :goto_2a4

    :cond_119
    :goto_119
    :try_start_119
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v21

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    sget-object v11, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->UNZIP:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v0, v11}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_12b} :catch_28d
    .catchall {:try_start_119 .. :try_end_12b} :catchall_28a

    :try_start_12b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    :goto_12f
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v11, 0x5

    if-eqz v0, :cond_217

    if-eqz v3, :cond_14d

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_13c} :catch_288
    .catchall {:try_start_12b .. :try_end_13c} :catchall_284

    if-eqz v0, :cond_14d

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_14c

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_14c

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_14c
    return v11

    :cond_14d
    :try_start_14d
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_154
    .catchall {:try_start_14d .. :try_end_153} :catchall_284

    goto :goto_16c

    :catch_154
    move-exception v0

    :try_start_155
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_16b} :catch_288
    .catchall {:try_start_155 .. :try_end_16b} :catchall_284

    const/4 v0, 0x0

    :goto_16c
    if-nez v0, :cond_17d

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_17c

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_17c

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_17c
    return v7

    :cond_17d
    :try_start_17d
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "(/[.]{2})*"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_192} :catch_288
    .catchall {:try_start_17d .. :try_end_192} :catchall_284

    if-nez v11, :cond_208

    :try_start_194
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v11
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19c} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_19c} :catch_1af
    .catchall {:try_start_194 .. :try_end_19c} :catchall_284

    const v0, 0x8000

    move-object v7, v14

    move/from16 v14, v18

    move-object/from16 v25, v15

    move v15, v0

    move-object/from16 v16, v22

    move-object/from16 v17, v1

    :try_start_1a9
    invoke-static/range {v11 .. v17}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->zipDecompressWriteDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZILjava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ac} :catch_1af
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_284

    goto :goto_211

    :catch_1ad
    move-exception v0

    goto :goto_1d9

    :catch_1af
    move-exception v0

    :try_start_1b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1c8} :catch_288
    .catchall {:try_start_1b0 .. :try_end_1c8} :catchall_284

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_1d6

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1d6

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_1d6
    return v9

    :catch_1d7
    move-exception v0

    move-object v7, v14

    :goto_1d9
    :try_start_1d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1f9} :catch_288
    .catchall {:try_start_1d9 .. :try_end_1f9} :catchall_284

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_207

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_207

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_207
    return v9

    :cond_208
    move-object/from16 v25, v15

    :try_start_20a
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    :goto_211
    move-object/from16 v15, v25

    const/16 v7, 0xc

    goto/16 :goto_12f

    :cond_217
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v12

    cmp-long v0, v12, v19

    if-eqz v0, :cond_236

    if-eqz v3, :cond_217

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0
    :try_end_225
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_225} :catch_288
    .catchall {:try_start_20a .. :try_end_225} :catchall_284

    if-eqz v0, :cond_217

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_235

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_235

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_235
    return v11

    :cond_236
    :try_start_236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " decompress time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v23

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_257} :catch_288
    .catchall {:try_start_236 .. :try_end_257} :catchall_284

    if-eqz v8, :cond_272

    const/4 v1, 0x2

    :try_start_25a
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v6

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25a .. :try_end_26b} :catch_26e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25a .. :try_end_26b} :catch_26c
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_26b} :catch_288
    .catchall {:try_start_25a .. :try_end_26b} :catchall_284

    goto :goto_272

    :catch_26c
    move-exception v0

    goto :goto_26f

    :catch_26e
    move-exception v0

    :goto_26f
    :try_start_26f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_272
    :goto_272
    invoke-static {v5}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_275} :catch_288
    .catchall {:try_start_26f .. :try_end_275} :catchall_284

    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v22, :cond_283

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_283

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_283
    return v6

    :catchall_284
    move-exception v0

    move-object/from16 v7, v22

    goto :goto_295

    :catch_288
    move-exception v0

    goto :goto_29b

    :catchall_28a
    move-exception v0

    const/4 v1, 0x0

    goto :goto_294

    :catch_28d
    move-exception v0

    const/4 v1, 0x0

    move-object/from16 v22, v1

    goto :goto_29b

    :catchall_292
    move-exception v0

    move-object v1, v7

    :goto_294
    move-object v7, v1

    :goto_295
    move-object v1, v7

    move-object v7, v10

    goto :goto_2b9

    :catch_298
    move-exception v0

    move-object/from16 v22, v7

    :goto_29b
    move-object v7, v10

    move-object/from16 v1, v22

    goto :goto_2a4

    :catchall_29f
    move-exception v0

    move-object v1, v7

    goto :goto_2b9

    :catch_2a2
    move-exception v0

    move-object v1, v7

    :goto_2a4
    :try_start_2a4
    const-string v2, "error extract zip file"

    invoke-static {v4, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a9
    .catchall {:try_start_2a4 .. :try_end_2a9} :catchall_2b8

    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2b7

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2b7

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_2b7
    return v9

    :catchall_2b8
    move-exception v0

    :goto_2b9
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2c7

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_2c7

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_2c7
    throw v0
.end method
